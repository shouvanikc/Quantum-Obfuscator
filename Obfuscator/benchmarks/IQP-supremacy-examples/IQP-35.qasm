OPENQASM 2.0;
include "qelib1.inc";

qreg q[35];

h q[0];
h q[1];
h q[2];
h q[3];
h q[4];
h q[5];
h q[6];
h q[7];
h q[8];
h q[9];
h q[10];
h q[11];
h q[12];
h q[13];
h q[14];
h q[15];
h q[16];
h q[17];
h q[18];
h q[19];
h q[20];
h q[21];
h q[22];
h q[23];
h q[24];
h q[25];
h q[26];
h q[27];
h q[28];
h q[29];
h q[30];
h q[31];
h q[32];
h q[33];
h q[34];
h q[11];
cx q[0], q[11];
h q[11];
h q[13];
cx q[0], q[13];
h q[13];
h q[5];
cx q[1], q[5];
h q[5];
h q[27];
cx q[1], q[27];
h q[27];
h q[19];
cx q[2], q[19];
h q[19];
h q[30];
cx q[2], q[30];
h q[30];
h q[14];
cx q[3], q[14];
h q[14];
h q[28];
cx q[3], q[28];
h q[28];
h q[20];
cx q[4], q[20];
h q[20];
h q[29];
cx q[4], q[29];
h q[29];
h q[1];
cx q[5], q[1];
h q[1];
h q[15];
cx q[5], q[15];
h q[15];
h q[25];
cx q[5], q[25];
h q[25];
h q[29];
cx q[6], q[29];
h q[29];
h q[9];
cx q[7], q[9];
h q[9];
h q[34];
cx q[7], q[34];
h q[34];
h q[21];
cx q[8], q[21];
h q[21];
h q[23];
cx q[8], q[23];
h q[23];
h q[24];
cx q[8], q[24];
h q[24];
h q[7];
cx q[9], q[7];
h q[7];
h q[12];
cx q[9], q[12];
h q[12];
h q[13];
cx q[9], q[13];
h q[13];
h q[16];
cx q[10], q[16];
h q[16];
h q[0];
cx q[11], q[0];
h q[0];
h q[14];
cx q[11], q[14];
h q[14];
h q[18];
cx q[11], q[18];
h q[18];
h q[9];
cx q[12], q[9];
h q[9];
h q[0];
cx q[13], q[0];
h q[0];
h q[9];
cx q[13], q[9];
h q[9];
h q[23];
cx q[13], q[23];
h q[23];
h q[3];
cx q[14], q[3];
h q[3];
h q[11];
cx q[14], q[11];
h q[11];
h q[31];
cx q[14], q[31];
h q[31];
h q[5];
cx q[15], q[5];
h q[5];
h q[16];
cx q[15], q[16];
h q[16];
h q[10];
cx q[16], q[10];
h q[10];
h q[15];
cx q[16], q[15];
h q[15];
h q[22];
cx q[16], q[22];
h q[22];
h q[28];
cx q[17], q[28];
h q[28];
h q[31];
cx q[17], q[31];
h q[31];
h q[11];
cx q[18], q[11];
h q[11];
h q[31];
cx q[18], q[31];
h q[31];
h q[2];
cx q[19], q[2];
h q[2];
h q[25];
cx q[19], q[25];
h q[25];
h q[4];
cx q[20], q[4];
h q[4];
h q[24];
cx q[20], q[24];
h q[24];
h q[8];
cx q[21], q[8];
h q[8];
h q[29];
cx q[21], q[29];
h q[29];
h q[16];
cx q[22], q[16];
h q[16];
h q[8];
cx q[23], q[8];
h q[8];
h q[13];
cx q[23], q[13];
h q[13];
h q[32];
cx q[23], q[32];
h q[32];
h q[8];
cx q[24], q[8];
h q[8];
h q[20];
cx q[24], q[20];
h q[20];
h q[5];
cx q[25], q[5];
h q[5];
h q[19];
cx q[25], q[19];
h q[19];
h q[26];
cx q[25], q[26];
h q[26];
h q[25];
cx q[26], q[25];
h q[25];
h q[1];
cx q[27], q[1];
h q[1];
h q[34];
cx q[27], q[34];
h q[34];
h q[3];
cx q[28], q[3];
h q[3];
h q[17];
cx q[28], q[17];
h q[17];
h q[4];
cx q[29], q[4];
h q[4];
h q[6];
cx q[29], q[6];
h q[6];
h q[21];
cx q[29], q[21];
h q[21];
h q[2];
cx q[30], q[2];
h q[2];
h q[14];
cx q[31], q[14];
h q[14];
h q[17];
cx q[31], q[17];
h q[17];
h q[18];
cx q[31], q[18];
h q[18];
h q[23];
cx q[32], q[23];
h q[23];
h q[33];
cx q[32], q[33];
h q[33];
h q[32];
cx q[33], q[32];
h q[32];
h q[7];
cx q[34], q[7];
h q[7];
h q[27];
cx q[34], q[27];
h q[27];
rz15(6587) q[0];
rz15(25275) q[1];
rz15(29954) q[2];
rz15(11644) q[3];
rz15(11811) q[4];
rz15(18843) q[5];
rz15(32290) q[6];
rz15(21877) q[7];
rz15(8197) q[8];
rz15(4889) q[9];
rz15(30410) q[10];
rz15(18060) q[11];
rz15(23155) q[12];
rz15(566) q[13];
rz15(22361) q[14];
rz15(11017) q[15];
rz15(15138) q[16];
rz15(13759) q[17];
rz15(16704) q[18];
rz15(15194) q[19];
rz15(4639) q[20];
rz15(7141) q[21];
rz15(15709) q[22];
rz15(984) q[23];
rz15(24742) q[24];
rz15(31307) q[25];
rz15(28662) q[26];
rz15(12479) q[27];
rz15(21573) q[28];
rz15(4840) q[29];
rz15(18309) q[30];
rz15(21482) q[31];
rz15(27740) q[32];
rz15(31674) q[33];
rz15(19609) q[34];
h q[0];
h q[1];
h q[2];
h q[3];
h q[4];
h q[5];
h q[6];
h q[7];
h q[8];
h q[9];
h q[10];
h q[11];
h q[12];
h q[13];
h q[14];
h q[15];
h q[16];
h q[17];
h q[18];
h q[19];
h q[20];
h q[21];
h q[22];
h q[23];
h q[24];
h q[25];
h q[26];
h q[27];
h q[28];
h q[29];
h q[30];
h q[31];
h q[32];
h q[33];
h q[34];
