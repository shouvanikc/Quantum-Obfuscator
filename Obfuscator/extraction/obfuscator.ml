open Qasm2sqir
open Printf

module E = ExtractedCode

let get_rz_count l = 
  List.fold_left (+) 0 
    (List.map (fun x -> match x with | E.App1 (E.URzk_Rz(_), _) -> 1 | _ -> 0) l);;

let rec get_x_count l = 
  List.fold_left (+) 0 
    (List.map (fun x -> match x with | E.App1 (E.URzk_X, _) -> 1 | _ -> 0) l);;
  
let rec get_h_count l = 
  List.fold_left (+) 0 
    (List.map (fun x -> match x with | E.App1 (E.URzk_H, _) -> 1 | _ -> 0) l);;
  
let rec get_cnot_count l = 
  List.fold_left (+) 0 
    (List.map (fun x -> match x with | E.App2 (E.URzk_CNOT, _, _) -> 1 | _ -> 0) l);;

(* Only relevant for the benchmarks using the Clifford+T set. *)
let rec get_t_count' l a = 
  match l with
  | [] -> Some a
  | E.App1 (E.URzk_Rz(i), _) :: t -> 
      (match i with
       | 8192 | 24576 | 40960 | 57344 -> get_t_count' t (1 + a)
       | 16384 | 32768 | 49152 -> get_t_count' t a
       | _ -> None)
  | _ :: t -> get_t_count' t a;;
  
let get_t_count l = get_t_count' l 0;;  

let rec gen_random' size max l =
  if size = 0 then
    List.rev l
  else
    let n = Random.int max in
    let list = n :: l in
    gen_random' (size - 1) max list;;

let gen_random size max = gen_random' size max [];;

let rec listoffset a b n =                                                             
match a, b with                                                               
  | [], _ -> b
  | _, [] -> a
  | hd :: tl, hd2 :: tl2 -> (n + hd + hd2) :: (listoffset tl tl2 n);;

let rec uniformoffset l n =
match l with
  | [] -> []
  | h :: t -> (h + n) :: (uniformoffset t (n+1));;

let rec fixedoffset l n =
match l with
  | [] -> []
  | h :: t -> (h + n) :: (fixedoffset t n);;

(* Teleportation *)

let rec make_list base size =
  match size with
  | 0 -> []
  | _ -> base :: (make_list (base+1) (size-1));;

let rec get_first n = function
      | [] -> []
      | h :: t -> if n = 0 then [] else h :: get_first (n-1) t;;

let rec remove_first n = function
      | [] -> []
      | _ :: t as l -> if n = 0 then l else remove_first (n-1) t;;

let slice list i k =
    let rec take n = function
      | [] -> []
      | h :: t -> if n = 0 then [] else h :: take (n-1) t
    in
    let rec drop n = function
      | [] -> []
      | _ :: t as l -> if n = 0 then l else drop (n-1) t
    in
    take (k - i + 1) (drop i list);;

let shuffle list =
    let nd = List.map (fun c -> (Random.bits (), c)) list in
    let sond = List.sort compare nd in
    List.map snd sond;;

let get_indices wires idx =
  List.map (fun c -> (List.nth wires c)) idx;;

let constant_teleport dim num active ancilla list =
  let shuffled_active = shuffle active in
  let shuffled_ancilla = shuffle ancilla in
  let orig = slice shuffled_active 0 (num - 1) in
  let rest_active = remove_first num shuffled_active in
  let dest = slice shuffled_ancilla 0 (num - 1) in
  let anc = slice shuffled_ancilla num (num + num - 1) in
  let rest_ancilla = remove_first num shuffled_active in
  let shuffled_circuit = E.teleport_connect dim orig anc dest (gen_random num (List.length list)) list in
  let final_active = dest @ rest_active in
  let final_ancilla = orig @ rest_ancilla in
  dim, final_active, final_ancilla, shuffled_circuit;;

let grow_teleport dim num active ancilla list =
  let shuffled_active = shuffle active in
  let orig = slice shuffled_active 0 (num - 1) in
  let rest_active = remove_first num shuffled_active in
  let dest = make_list dim num in
  let shuffled_circuit = E.expand_teleport_short dim orig (gen_random num (List.length list)) list in
  let final_active = rest_active @ dest in
  let final_ancilla = orig @ ancilla in
  let final_dim = dim + num + num in
  final_dim, final_active, final_ancilla, shuffled_circuit;;

let add_gates dim num_gates num_wires active ancilla list =
  let shuffled_ancilla = shuffle ancilla in
  let wires = slice shuffled_ancilla 0 (num_wires - 1) in
  let final_active = active @ wires in
  let final_ancilla = remove_first num_wires shuffled_ancilla in
  let crand = gen_random num_gates 5 in
  let qrand = get_indices wires (gen_random num_gates (num_wires - 1)) in
  let arand = gen_random num_gates 10000 in
  let final_circ = E.add_random_circuit dim crand qrand arand list in
  dim, final_active, final_ancilla, final_circ;;

(* Obfuscation utilities *)

let rec secondary_obfuscations l n dim1 dim2 num_cnots num_local = 
  match n with
  | 0 -> l
  | _ -> let nrand = uniformoffset (gen_random num_cnots 20) 1 in
            let mrand = gen_random num_cnots 10 in
            let l1rand = gen_random num_cnots dim1 in
            let offsets = gen_random num_cnots (dim2 - 1) in
            let l2rand = listoffset l1rand offsets 1 in
            let orand = gen_random num_local 3 in
            let qorand = gen_random num_local (dim1 - 1) in
            let aorand = gen_random num_local 5000 in
            let morand = gen_random num_local 10 in
            let norand = uniformoffset (gen_random num_local 30) 30 in
            let l' = E.obfuscate_secondary (dim1 + dim2) l orand qorand norand morand aorand
                                  nrand mrand l1rand l2rand in
            secondary_obfuscations l' (n-1) dim1 dim2 num_cnots num_local;;

let rec try_local_optimizations l n =
  match n with
  | 0 -> l
  | _ -> let l' = E.cancel_single_qubit_gates (E.cancel_two_qubit_gates
                                                 (E.merge_rotations
                                                    (E.cancel_single_qubit_gates
                                                          (E.cancel_two_qubit_gates
                                                             (l))))) in
    try_local_optimizations l' (n-1);;

let rec try_optimizations l n =
  match n with
  | 0 -> l
  | _ -> let l' = E.optimize l in
         try_optimizations l' (n-1);;

let rec constant_shuffles n dim num active ancilla list num_cnots num_local num_obfuscations =
  match n with
  | 0 -> dim, active, ancilla, list
  | _ -> let dim', active', ancilla', list' = (constant_teleport dim num active ancilla list) in
         let list'' = secondary_obfuscations list' num_obfuscations (dim'/2) (dim' - (dim'/2)) num_cnots num_local in
         constant_shuffles (n-1) dim num active' ancilla' list'' num_cnots num_local num_obfuscations;;

let single_epoch dim num_growth num_permute active ancilla list num_cnots num_local num_obfuscations num_shuffle =
  let dim', active', ancilla', list' = grow_teleport dim num_growth active ancilla list in
  constant_shuffles num_shuffle dim' num_permute active' ancilla' list' num_cnots num_local num_obfuscations;;

let rec obfuscate num_epochs dim additions num_growth num_permute active ancilla list num_cnots num_local num_obfuscations num_shuffle =
  match num_epochs with
  | 0 -> dim, active, ancilla, list
  | _ -> let dim', active', ancilla', list' =
           single_epoch dim num_growth num_permute active ancilla list num_cnots num_local num_obfuscations num_shuffle in
         let extra_gates = if (num_epochs mod 2 = 0) then additions else 0 in
         let dim''', active''', ancilla''', list''' =
           add_gates dim' extra_gates num_growth active' ancilla' list' in
         let dim'', active'', ancilla'', list'' =
           obfuscate (num_epochs - 1) dim''' additions num_growth num_permute active''' ancilla''' list''' num_cnots num_local num_obfuscations num_shuffle in
         let list''' = try_local_optimizations list'' 5 in
         dim'', active'', ancilla'', list''';;

Random.init 42;;

if (Array.length Sys.argv <> 4)
then print_endline "Expected usage: voqc <prog> <out> <out_voqc>"
else let fname = Sys.argv.(1) in
     let outf = Sys.argv.(2) in
     let outf_voqc = Sys.argv.(3) in
     let _ = printf "Processing %s\n" fname in
     let (p, n) = get_gate_list fname in
     let origT = match get_t_count p with
                 | None -> "N/A"
                 | Some x -> string_of_int x in
     let _ = printf "Original:\t Total %d, Rz %d, T %s, H %d, X %d, CNOT %d\n%!" 
               (List.length p) (get_rz_count p) origT (get_h_count p) (get_x_count p) (get_cnot_count p) in
     let _ = printf "Initial number of qubits: %d\n" n in
     let _ = printf "Initial average depth: %d\n" ((List.length p)/n) in
     let init_depth = ((List.length p)/n) in
     let target_depth = init_depth in
     let dim1 = n in
     let target_dim = dim1 + 100 in
     let num_growth = 5 in
     let num_epochs = (target_dim - dim1)/(2 * num_growth) in
     let target_size = (dim1 + (2*num_epochs*num_growth))*target_depth in
     let extra_size = target_size - (List.length p) in
     let num_permute = 5 in
     let num_cnots = 40 in
     let num_local = 100 in
     let num_obfuscations = 2 in
     let num_shuffle = ((extra_size/num_epochs) / num_permute) / 5 in
     let additions = 2000 in
     let init_active = make_list 0 dim1 in
     let dim', _, _, p' = obfuscate num_epochs dim1 additions num_growth (num_permute+2) init_active [] p num_cnots num_local num_obfuscations num_shuffle in
     let p'' = E.optimize p' in
     let finalT' = match get_t_count p'' with
       | None -> "N/A"
       | Some x -> string_of_int x in
     printf "Final after obfuscation:\t Total %d, Rz %d, T %s, H %d, X %d, CNOT %d\n\n%!"
               (List.length p') (get_rz_count p') finalT' (get_h_count p') (get_x_count p') (get_cnot_count p');
     printf "Final number of qubits : %d\n" (dim');
     printf "Final average depth : %d\n" ((List.length p')/dim');
     printf "After optimization with VOQC:\t Total %d, Rz %d, T %s, H %d, X %d, CNOT %d\n\n%!"
       (List.length p'') (get_rz_count p'') finalT' (get_h_count p'') (get_x_count p'') (get_cnot_count p'');
     write_qasm_file outf p' dim';
     write_qasm_file outf_voqc p'' dim';
