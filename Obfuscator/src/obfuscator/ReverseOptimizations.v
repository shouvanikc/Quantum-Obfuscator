Require Import NotPropagation.
Require Import HadamardReduction.
Require Import GateCancellation.
Require Import RotationMerging.
Require Import UnitarySem.
Require Import Equivalences.
Require Export RzkGateSet.
Require Import List.
Require Import Optimize.
Open Scope ucom.


(* Get list of gates with qubit q1 replaced by q2, ie. every gate that acted on q1 in l, acts on q2 in the returned list *)
Fixpoint get_shifted_gate_list {dim} (q1 q2 : nat) (l : Rzk_ucom_l dim) :=
  match l with
  | [] => []
  | (App1 u n) :: t => if n =? q1
                     then (@App1 _ dim u q2) :: (get_shifted_gate_list q1 q2 t)
                     else (get_shifted_gate_list q1 q2 t)
  | (App2 u m n) :: t => if (m =? q1)
                       then (@App2 _ dim u q2 n) :: (get_shifted_gate_list q1 q2 t)
                       else if (n =? q1)
                            then (@App2 _ dim u m q2) :: (get_shifted_gate_list q1 q2 t)
                            else (get_shifted_gate_list q1 q2 t)
  | (App3 u m n p) :: t => if (m =? q1)
                         then (@App3 _ dim u q2 n p) :: (get_shifted_gate_list q1 q2 t)
                         else if (n =? q1)
                              then (@App3 _ dim u m q2 p) :: (get_shifted_gate_list q1 q2 t)
                              else if (p =? q1)
                                   then (@App3 _ dim u m n q2) :: (get_shifted_gate_list q1 q2 t)
                                   else (get_shifted_gate_list q1 q2 t)
  end.

(* Return List of gates with q1 and q2 swapped, ie. every gate that acted on q1 now acts on q2 and vice versa *)
Fixpoint swap_qubits {dim} (q1 q2 : nat) (l : Rzk_ucom_l dim) :=
  match l with
  | [] => []
  | (App1 u n) :: t => if n =? q1
                     then (@App1 _ dim u q2) :: (swap_qubits q1 q2 t)
                     else if n =? q2
                          then (@App1 _ dim u q1) :: (swap_qubits q1 q2 t)
                          else (@App1 _ dim u n) :: (swap_qubits q1 q2 t)
  | (App2 u m n) :: t => if (m =? q1)
                       then (@App2 _ dim u q2 n) :: (swap_qubits q1 q2 t)
                       else if (n =? q1)
                            then (@App2 _ dim u m q2) :: (swap_qubits q1 q2 t)
                            else if (m =? q2)
                                 then (@App2 _ dim u q1 n) :: (swap_qubits q1 q2 t)
                                 else if (n =? q2)
                                      then (@App2 _ dim u m q1) :: (swap_qubits q1 q2 t)
                                      else (@App2 _ dim u m n) :: (swap_qubits q1 q2 t)
  | (App3 u m n p) :: t => (@App3 _ dim u m n p) :: (swap_qubits q1 q2 t)
  end.

(* Hadamard Reduction Optimization

   Routines to undo each of the following optimizations

   #1  - H q; P q; H q ≡ P† q; H q; P† q
   #2  - H q; P† q; H q ≡ P q; H q; P q
   #3  - H q1; H q2; CNOT q1 q2; H q1; H q2 ≡ CNOT q2 q1
   #4  - H q2; P q2; CNOT q1 q2; P† q2; H q2 ≡ P† q2; CNOT q1 q2; P q2
   #5  - H q2; P† q2; CNOT q1 q2; P q2; H q2 ≡ P q2; CNOT q1 q2; P† q2
 *)

Definition undo_H_equivalence1 {dim} q (l : Rzk_ucom_l dim) :=
  replace_single_qubit_pattern l q
                               (URzk_PDAG :: URzk_H :: URzk_PDAG :: [])
                               (URzk_H :: URzk_P :: URzk_H :: [])
                               match_gate.

Definition undo_H_equivalence2 {dim} q (l : Rzk_ucom_l dim) := 
  replace_single_qubit_pattern l q 
    (URzk_P :: URzk_H :: URzk_P :: []) 
    (URzk_H :: URzk_PDAG :: URzk_H :: [])
    match_gate.

Definition undo_H_equivalence3 {dim} q (l : Rzk_ucom_l dim) :=
  match (next_two_qubit_gate l q) with
  | Some (l1, URzk_CNOT, m, n, l2) =>
    Some(l1 ++ [H m] ++ [H n] ++ [CNOT m n] ++ [H m] ++ [H n] ++ l2)
  | _ => None
  end.

Definition undo_H_equivalence4 {dim} q (l : Rzk_ucom_l dim) :=
  match (remove_single_qubit_pattern l q (URzk_PDAG :: []) match_gate) with
  | None => None
  | Some l1 =>
    match (next_two_qubit_gate l1 q) with
    | Some (l2, URzk_CNOT, q1, q2, l3) =>
      if q =? q2
      then match (remove_single_qubit_pattern l3 q (URzk_P :: []) match_gate) with
           | None => None
           | Some l4 =>
             Some (l2 ++ (H q2 :: P q2 :: CNOT q1 q2 :: PDAG q2 :: H q2 :: []) ++ l4)
           end
      else None
    | _ => None
    end
  end.

Definition undo_H_equivalence5 {dim} q (l : Rzk_ucom_l dim) :=
  match (remove_single_qubit_pattern l q (URzk_P :: []) match_gate) with
  | None => None
  | Some l1 =>
    match (next_two_qubit_gate l1 q) with
    | Some (l2, URzk_CNOT, q1, q2, l3) =>
      if q =? q2
      then match (remove_single_qubit_pattern l3 q (URzk_PDAG :: []) match_gate) with
           | None => None
           | Some l4 =>
             Some (l2 ++ (H q2 :: PDAG q2 :: CNOT q1 q2 :: P q2 :: H q2 :: []) ++ l4)
           end
      else None
    | _ => None
    end
  end.


(* Rules for creating pairs of cancelling gates. After creating them we attempt to use the commuting rules to move them far away from each other.
Each single qubit gate <G> has the following set of functions defined below.
1. <G>_create_rule' q l : Returns a sequence of <G> and its inverse acting on qubit q applied to the beginning of circuit l.
2. <G>_create_rule n q l : Inserts <G> followed by <G'> on qubit q at the nth position of circuit l.
3. add_obfuscated_<G> m n q l : Insert <G> using  (<G>_create_rule n q l) followed by m applications of each defined commutation rule to move the canceling gates away from each other.
 *)

Definition H_create_rule' {dim} q (l : Rzk_ucom_l dim) :=
  Some([H q] ++ [H q] ++ l).

Fixpoint H_create_rule {dim} n q (l : Rzk_ucom_l dim) :=
  match l with
  |[] => H_create_rule' q []
  |h :: t => match n with
           | 0 => H_create_rule' q l
           | S n' => let l' := H_create_rule n' q t in
                    match l' with
                    | Some(l1) => Some([h] ++ l1)
                    | _ => l'
                    end
           end
  end.


Definition add_obfuscated_H {dim} m n q (l : Rzk_ucom_l dim) :=
  match dim with
  | 0 => None
  | _ => let l1 := H_create_rule n q l in
        match l1 with
        | Some(l2) => let l3 := propagate l2 (Rz_commute_rules q) [] m in
                     match l3 with
                     | Some(l4) => let l5 := propagate l4 [X_commute_rule q] [] m in
                                  match l5 with
                                  | Some l6 => Some l6
                                  | None => l3
                                  end
                     | _ => let l5 := propagate l2 [X_commute_rule q] [] m in
                           match l5 with
                           | Some l6 => Some l6
                           | None => l1
                           end
                     end
        | _ => None
        end
  end.


Definition X_create_rule' {dim} q (l : Rzk_ucom_l dim) :=
  Some([X q] ++ [X q] ++ l).

Fixpoint X_create_rule {dim} n q (l : Rzk_ucom_l dim) :=
  match l with
  |[] => X_create_rule' q []
  |h :: t => match n with
           | 0 => X_create_rule' q l
           | S n' => let l' := X_create_rule n' q t in
                    match l' with
                    | Some(l1) => Some(h :: l1)
                    | _ => l'
                    end
           end
  end.


Definition add_obfuscated_X {dim} m n q (l : Rzk_ucom_l dim) :=
  match dim with
  | 0 => None
  | _ => let l1 := X_create_rule n q l in
        match l1 with
        | Some(l2) => let l3 := propagate l2 (Rz_commute_rules q) [] m in
                     match l3 with
                     | Some(l4) => let l5 := propagate l4 [X_commute_rule q] [] m in
                                  match l5 with
                                  | Some l6 => Some l6
                                  | None => l3
                                  end
                     | _ => let l5 := propagate l2 [X_commute_rule q] [] m in
                           match l5 with
                           | Some l6 => Some l6
                           | None => l1
                           end
                     end
        | _ => None
        end
  end.


Definition Rz_create_rule' {dim} i q (l : Rzk_ucom_l dim) :=
  Some([Rz i q] ++ [Rz (32768 - i) q] ++ l).

Fixpoint Rz_create_rule {dim} n i q (l : Rzk_ucom_l dim) :=
  match l with
  |[] => Rz_create_rule' i q []
  |h :: t => match n with
           | 0 => Rz_create_rule' i q l
           | S n' => let l' := Rz_create_rule n' i q t in
                    match l' with
                    | Some(l1) => Some(h :: l1)
                    | _ => l'
                    end
           end
  end.


Definition add_obfuscated_Rz {dim} m n i q (l : Rzk_ucom_l dim) :=
  match dim with
  | 0 => None
  | _ => let l1 := Rz_create_rule n i q l in
        match l1 with
        | Some(l2) => let l3 := propagate l2 (Rz_commute_rules q) [] m in
                     match l3 with
                     | Some(l4) => let l5 := propagate l4 [X_commute_rule q] [] m in
                                  match l5 with
                                  | Some l6 => Some l6
                                  | None => l3
                                  end
                     | _ => let l5 := propagate l2 [X_commute_rule q] [] m in
                           match l5 with
                           | Some l6 => Some l6
                           | None => l1
                           end
                     end
        | _ => None
        end
  end.


Definition CNOT_create_rule' {dim} q1 q2 (l : Rzk_ucom_l dim) :=
  Some([CNOT q1 q2] ++ [CNOT q1 q2] ++ l).

Fixpoint CNOT_create_rule {dim} n q1 q2 (l : Rzk_ucom_l dim) :=
  match l with
  |[] => CNOT_create_rule' q1 q2 []
  |h :: t => match n with
           | 0 => CNOT_create_rule' q1 q2 l
           | S n' => let l' := CNOT_create_rule n' q1 q2 t in
                    match l' with
                    | Some(l1) => Some(h :: l1)
                    | _ => l'
                    end
           end
  end.


Definition add_obfuscated_CNOT {dim} m n q1 q2 (l : Rzk_ucom_l dim) :=
  match dim with
  | 0 => None
  | _ => let l1 := CNOT_create_rule n q1 q2 l  in
        match l1 with
        | Some(l2) => let l3 := propagate l2 (CNOT_commute_rules q1 q2) [] m in
                     match l3 with
                     | Some(l4) => let l5 := propagate l4 [X_commute_rule q1] [] m in
                                  match l5 with
                                  | Some(l6) => let l7 := propagate l6 (Rz_commute_rules q1) [] m in
                                               match l7 with
                                               | Some(l8) => Some(l8)
                                               | _ => l5
                                               end
                                  | _ => let l7 := propagate l4 (Rz_commute_rules q1) [] m in
                                        match l7 with
                                        | Some(l8) => Some(l8)
                                        | _ => l3
                                        end
                                  end
                     | _ => let l5 := propagate l2 [X_commute_rule q1] [] m in
                           match l5 with
                           | Some(l6) => let l7 := propagate l6 (Rz_commute_rules q1) [] m in
                                        match l7 with
                                        | Some(l8) => Some(l8)
                                        | _ => l5
                                        end
                           | _ => let l7 := propagate l2 (Rz_commute_rules q1) [] m in
                                 match l7 with
                                 | Some(l8) => Some(l8)
                                 | _ => l1
                                 end
                           end
                     end
        | _ => Some([PDAG 0])
        end
  end.


(* Examples for testing, uncomment the next block to run *)

(*
Definition test1 : Rzk_ucom_l 2 := CNOT 0 1 :: T 0 :: [].
Definition test2 : Rzk_ucom_l 2 := PDAG 0 :: H 0 :: PDAG 0 :: [].
Definition test3 : Rzk_ucom_l 2 := P 1 :: H 1 :: P 1 :: [].
Definition test4 : Rzk_ucom_l 2 := PDAG 0 :: CNOT 1 0 :: P 0 :: [].
Definition test5 : Rzk_ucom_l 2 := P 0 :: CNOT 1 0 :: PDAG 0 :: [].

Compute (undo_H_equivalence3 1 test1).
Compute (undo_H_equivalence1 0 test2).
Compute (undo_H_equivalence2 1 test3).
Compute (undo_H_equivalence4 0 test4).
Compute (undo_H_equivalence5 0 test5).
Compute (get_shifted_gate_list 0 1 test4).

Compute (H_create_rule 2 0 test1).
Compute (add_obfuscated_H 0 2 0 test2).
Compute (X_create_rule 2 0 test1).
Compute (add_obfuscated_X 0 2 0 test2).
Compute (Rz_create_rule 2 3 0 test1).
Compute (add_obfuscated_Rz 0 2 35 0 test1).
Compute (CNOT_create_rule 4 0 1 test1).
Compute (add_obfuscated_CNOT 1 1 0 1 test1).
 *)

(* Create obfuscated correlations *)

(* Add empty ancilla qubits to circuit. *)
Fixpoint expand_circuit {dim2} (dim1 : nat) (l' : Rzk_ucom_l dim2) :=
  match l' with
  | [] => []
  | (App1 u m) :: t => (App1 (dim := dim1) u (m)) :: (expand_circuit dim1 t)
  | (App2 u m n) :: t => (App2 (dim := dim1) u (m) (n)) :: (expand_circuit dim1 t)
  | _ => []
  end.

(* Shift circuit to last dim_2 qubits out of dim_1 *)
Fixpoint offset_circuit {dim2} (dim1 : nat) (l' : Rzk_ucom_l dim2) :=
  match l' with
  | [] => []
  | (App1 u m) :: t => (App1 (dim := dim1) u (m + dim1 - dim2)) :: (offset_circuit dim1 t)
  | (App2 u m n) :: t => (App2 (dim := dim1) u (m + dim1 - dim2) (n + dim1 - dim2)) :: (offset_circuit dim1 t)
  | _ => []
  end.

 (* Add reversed circuit to last dim2 qubits. *)
Fixpoint add_comp_circuit_bottom {dim1 dim2} (l : Rzk_ucom_l dim1) (l' : Rzk_ucom_l dim2) :=
  match l' with
  | [] => l
  | (App1 u m) :: t => (add_comp_circuit_bottom l t) ++ [App1 (dim := dim1) u (m + dim1 - dim2)]
  | (App2 u m n) :: t => (add_comp_circuit_bottom l t) ++ [App2 (dim := dim1) u (m + dim1 -dim2) (n + dim1 - dim2)]
  | _ => l
  end.

(* Merge gate lists acconding to a given list of indices *)
Fixpoint merge_random {dim} (top : Rzk_ucom_l dim) (bottom : Rzk_ucom_l dim) (mergerand: list nat) :=
  match top, bottom, mergerand with
  | [], _, _ => bottom
  | _, [], _ => top
  | _, _, [] => top
  | h1 :: t1, h2 :: t2, 0 :: t3 => h1 :: (merge_random t1 bottom t3)
  | h1 :: t1, h2 :: t2, 1 :: t3 => h1 :: (merge_random t1 bottom t3)
  | h1 :: t1, h2 :: t2, _ :: t3 => h2 :: (merge_random top t2 t3)
  end.

(* Add reverse of l2 to bottom of l1 *)
Definition combine_circuits {dim1 dim2} (l1 : Rzk_ucom_l dim1) (l2 : Rzk_ucom_l dim2) :=
  (add_comp_circuit_bottom (expand_circuit (dim1 + dim2) l1) l2).

(* Merge gates of two uncorrelated circuits. This transformation changes nothing, it simply controls where the correlation is added by the next routine. *)
Definition combine_random {dim1 dim2} (l1 : Rzk_ucom_l dim1) (l2 : Rzk_ucom_l dim2) (mergerand: list nat) :=
  let top := expand_circuit (dim1 + dim2) l1 in
  let bottom := offset_circuit (dim1 + dim2) l2 in
  merge_random top bottom mergerand.

(* Use obfuscated CNOT to connect two uncorrealated circuits. *)
Definition single_obfuscated_correlation {dim1 dim2} m n q1 q2 (l1 : Rzk_ucom_l dim1) (l2 : Rzk_ucom_l dim2) :=
  add_obfuscated_CNOT m n q1 q2 (combine_circuits l1 l2).

(* Teleportation *)

Fixpoint shift_list (m : nat) (l: list nat) :=
  match l with
  | [] => []
  | h :: t => (Nat.add h  m) :: t
  end.

Fixpoint make_list (base size : nat) :=
  match size with
  | 0 => []
  | S n => [base] ++ (make_list (base + 1) n)
  end.

(* Create teleport subroutine to add to the beginning and end of circuits. *)
Definition add_teleport {dim} orig ans des (l : Rzk_ucom_l dim) :=
  l ++ (H ans :: CNOT ans des :: CNOT orig ans :: H orig :: CNOT ans des :: H des :: CNOT orig des :: H des :: H orig :: H ans ::  []).

Definition add_teleport_front {dim} orig ans des (l : Rzk_ucom_l dim) :=
  (H ans :: CNOT ans des :: CNOT orig ans :: H orig :: CNOT ans des :: H des :: CNOT orig des :: H des :: H orig :: H ans ::  []) ++ (swap_qubits orig des l).


(* Routines to swap qubit to ancilla using teleportation routine. *)
Fixpoint teleport_connect {dim} (orig ans des flags : list nat) (l : Rzk_ucom_l dim) :=
  match orig, ans, des, flags with
  | _, _, [], _ => l
  | _, [], _, _ => l
  | [], _, _, _  => l
  | h1 :: t1, h2 :: t2, h3 :: t3, h4 :: t4 => if (h4 =? 0)
                                         then teleport_connect t1 t2 t3 t4 (add_teleport h1 h2 h3 l)
                                         else teleport_connect t1 t2 t3 t4 (add_teleport_front h1 h2 h3 l)
  | _, _, _, _ => l
  end.

Fixpoint expand_teleport {dim} (flags : list nat) (l : Rzk_ucom_l dim) :=
  teleport_connect (make_list 0 dim) (make_list dim dim) (make_list (dim + dim) dim) flags
                   (expand_circuit (dim + dim + dim) l).

Fixpoint expand_teleport_short {dim} (qubits : list nat) (flags : list nat) (l : Rzk_ucom_l dim) :=
  let ls := List.length qubits in
  teleport_connect qubits (make_list dim ls) (make_list (dim + ls) ls) flags
                   (expand_circuit (dim + ls + ls) l).

(* Split Rotations *)

Definition split_Rz1 {dim} i j q1 q2 (l1 : Rzk_ucom_l dim) (l2 : Rzk_ucom_l dim) :=
  (Rz (i - j) q1 :: CNOT q2 q1 :: []) ++ l2 ++ (CNOT q2 q1 :: Rz j q1 :: []).

Definition split_Rz2 {dim} i j q1 q2 (l1 : Rzk_ucom_l dim) (l2 : Rzk_ucom_l dim) :=
  (Rz (i - j) q1 :: CNOT q2 q1 :: []) ++ l2 ++ (CNOT q2 q1 :: Rz j q1 :: []).

(* Obfuscate *)

Fixpoint add_random_obfuscated_CNOTs {dim} (nrand mrand l1rand l2rand : list nat) (l : Rzk_ucom_l dim):=
  match nrand, mrand, l1rand, l2rand with
  | [],_,_,_ => l
  | _,[],_,_ => l
  |_,_,[],_ => l
  |_,_,_,[] => l
  | h1 :: t1, h2 :: t2, h3 :: t3, h4 :: t4 =>
    match add_obfuscated_CNOT h2 h1 h3 h4 l with
    | None => add_random_obfuscated_CNOTs t1 t2 t3 t4 l
    | Some l' => add_random_obfuscated_CNOTs t1 t2 t3 t4 l'
    end
  end.


Definition add_obfuscated_correlations {dim1 dim2} (mergerand nrand mrand l1rand l2rand : list nat)
           (l1 : Rzk_ucom_l dim1) (l2 : Rzk_ucom_l dim2) :=
  let l := combine_random l1 l2 mergerand in
  add_random_obfuscated_CNOTs nrand mrand l1rand l2rand l.

(* Create random circuits and add them to given circuit *)
Fixpoint get_random_circuit (dim: nat) (crand: list nat) (qrand: list nat) (arand: list BinNums.Z) :  Rzk_ucom_l dim  :=
  match crand,qrand,arand with
  | [], _, _ => []
  | _, [], _ => []
  | _, _, [] => []
  | h :: t, h' :: t', h'' :: t'' => match h with
                                | 0 => get_random_circuit dim t t' t'' 
                                | 1 => H h' :: (get_random_circuit dim t t' t'')
                                | 2 => T h' :: (get_random_circuit dim t t' t'')
                                | 3 => TDAG h' :: (get_random_circuit dim t t' t'')
                                | 4 => P h' :: (get_random_circuit dim t t' t'')
                                | 5 => PDAG h' :: (get_random_circuit dim t t' t'')
                                | 6 => Z h' :: (get_random_circuit dim t t' t'')
                                | 7 => Rz h'' h' :: (get_random_circuit dim t t' t'')
                                | 8 => X h' :: (get_random_circuit dim t t' t'')
                                | 9 => CNOT h' (h'+1 mod dim) :: (get_random_circuit dim t t' t'')
                                | _ => get_random_circuit dim t t' t''
                                end
  end.

Fixpoint get_random_circuit' (dim: nat) (crand: list nat) (qrand: list nat) (arand: list BinNums.Z) :  Rzk_ucom_l dim  :=
  match crand,qrand,arand with
  | [], _, _ => []
  | _, [], _ => []
  | _, _, [] => []
  | h :: t, h' :: t', h'' :: t'' => match h with
                                | 0 => get_random_circuit' dim t t' t''
                                | 1 => X h' :: (get_random_circuit' dim t t' t'')
                                | 2 => X h' :: (get_random_circuit' dim t t' t'')
                                | 3 => Rz h'' h' :: (get_random_circuit' dim t t' t'')
                                | 4 => X h' :: (get_random_circuit' dim t t' t'')
                                | 5 => CNOT h' (h'+1 mod dim) :: (get_random_circuit' dim t t' t'')
                                | _ => get_random_circuit' dim t t' t''
                                end
  end.

Definition add_random_circuit {dim : nat} (crand : list nat) (qrand: list nat) (arand: list BinNums.Z) (l : Rzk_ucom_l dim):=
  l ++ (get_random_circuit' dim crand qrand arand).

(* Attempt local obfuscations using given flags *)
Fixpoint add_local_obfuscation {dim} (orand qorand norand morand : list nat) (aorand : list BinNums.Z) (l: Rzk_ucom_l dim) :=
  match orand, qorand, norand, morand, aorand with
  | [],_,_,_,_ => l
  | _,[],_,_,_ => l
  | _,_,[],_,_ => l
  | _,_,_,[],_ => l
  | _,_,_,_,[] => l
  | h1 :: t1, h2 :: t2, h3 :: t3, h4 :: t4, h5 :: t5 => match h1 with
                                                   | 0 => add_local_obfuscation t1 t2 t3 t4 t5 l
                                                   | 1 => match (add_obfuscated_H h4 h3 h2 l) with
                                                                   | None => add_local_obfuscation t1 t2 t3 t4 t5 l
                                                                   | Some(l') => add_local_obfuscation t1 t2 t3 t4 t5 l'
                                                         end                                                      
                                                   | 2 => match (add_obfuscated_X h4 h3 h2 l) with
                                                                   | None => add_local_obfuscation t1 t2 t3 t4 t5 l
                                                                   | Some(l') => add_local_obfuscation t1 t2 t3 t4 t5 l'
                                                         end
                                                   | 3 => match (add_obfuscated_Rz h4 h3 h5 h2 l) with
                                                                   | None => add_local_obfuscation t1 t2 t3 t4 t5 l
                                                                   | Some(l') => add_local_obfuscation t1 t2 t3 t4 t5 l'
                                                         end
                                                   | _ => add_local_obfuscation t1 t2 t3 t4 t5 l
                                                   end
  end.
                                                           
                   
(* Routines used by final obfuscator *)
Definition obfuscate {dim} (dim2 : nat) (l : Rzk_ucom_l dim)
           (crand qrand : list nat) (arand : list BinNums.Z)
           (orand1 qorand1 norand1 morand1 : list nat) (arand1 : list BinNums.Z)
            (orand2 qorand2 norand2 morand2 : list nat) (arand2 : list BinNums.Z)
            (mergerand nrand mrand l1rand l2rand : list nat)
  :=
    let expanded := expand_circuit (dim + dim2) l in
    let firstpass := add_local_obfuscation orand1 qorand1 norand1 morand1 arand1 expanded in
    let ancilla := get_random_circuit dim2 crand qrand arand in
    let newgates := offset_circuit (dim + dim2) ancilla in
    let composite := merge_random firstpass newgates mergerand in
    let cnotsadd := add_random_obfuscated_CNOTs nrand mrand l1rand l2rand composite in
    let secondpass := add_local_obfuscation orand2 qorand2 norand2 morand2 arand2 composite in
    secondpass.

Definition teleport_expand {dim} (flags: list nat) (l : Rzk_ucom_l dim) :=
  expand_teleport flags l.

Definition obfuscate_secondary {dim} (l : Rzk_ucom_l dim)
           (orand qorand norand morand : list nat) (arand : list BinNums.Z)
           (nrand mrand l1rand l2rand : list nat)
  :=
    let firstpass := add_local_obfuscation orand qorand norand morand arand l in
    add_random_obfuscated_CNOTs nrand mrand l1rand l2rand firstpass.
           
