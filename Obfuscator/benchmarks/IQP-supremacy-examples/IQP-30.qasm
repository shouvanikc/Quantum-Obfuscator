OPENQASM 2.0;
include "qelib1.inc";

qreg q[30];

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
h q[14];
cx q[0], q[14];
h q[14];
h q[23];
cx q[0], q[23];
h q[23];
h q[9];
cx q[1], q[9];
h q[9];
h q[24];
cx q[1], q[24];
h q[24];
h q[29];
cx q[1], q[29];
h q[29];
h q[15];
cx q[2], q[15];
h q[15];
h q[23];
cx q[2], q[23];
h q[23];
h q[25];
cx q[2], q[25];
h q[25];
h q[16];
cx q[3], q[16];
h q[16];
h q[13];
cx q[4], q[13];
h q[13];
h q[14];
cx q[4], q[14];
h q[14];
h q[17];
cx q[4], q[17];
h q[17];
h q[24];
cx q[5], q[24];
h q[24];
h q[12];
cx q[6], q[12];
h q[12];
h q[16];
cx q[6], q[16];
h q[16];
h q[21];
cx q[6], q[21];
h q[21];
h q[9];
cx q[7], q[9];
h q[9];
h q[12];
cx q[8], q[12];
h q[12];
h q[29];
cx q[8], q[29];
h q[29];
h q[1];
cx q[9], q[1];
h q[1];
h q[7];
cx q[9], q[7];
h q[7];
h q[29];
cx q[9], q[29];
h q[29];
h q[18];
cx q[10], q[18];
h q[18];
h q[25];
cx q[10], q[25];
h q[25];
h q[25];
cx q[11], q[25];
h q[25];
h q[27];
cx q[11], q[27];
h q[27];
h q[6];
cx q[12], q[6];
h q[6];
h q[8];
cx q[12], q[8];
h q[8];
h q[4];
cx q[13], q[4];
h q[4];
h q[22];
cx q[13], q[22];
h q[22];
h q[26];
cx q[13], q[26];
h q[26];
h q[0];
cx q[14], q[0];
h q[0];
h q[4];
cx q[14], q[4];
h q[4];
h q[2];
cx q[15], q[2];
h q[2];
h q[19];
cx q[15], q[19];
h q[19];
h q[3];
cx q[16], q[3];
h q[3];
h q[6];
cx q[16], q[6];
h q[6];
h q[4];
cx q[17], q[4];
h q[4];
h q[10];
cx q[18], q[10];
h q[10];
h q[20];
cx q[18], q[20];
h q[20];
h q[15];
cx q[19], q[15];
h q[15];
h q[21];
cx q[19], q[21];
h q[21];
h q[27];
cx q[19], q[27];
h q[27];
h q[18];
cx q[20], q[18];
h q[18];
h q[23];
cx q[20], q[23];
h q[23];
h q[6];
cx q[21], q[6];
h q[6];
h q[19];
cx q[21], q[19];
h q[19];
h q[28];
cx q[21], q[28];
h q[28];
h q[13];
cx q[22], q[13];
h q[13];
h q[0];
cx q[23], q[0];
h q[0];
h q[2];
cx q[23], q[2];
h q[2];
h q[20];
cx q[23], q[20];
h q[20];
h q[1];
cx q[24], q[1];
h q[1];
h q[5];
cx q[24], q[5];
h q[5];
h q[2];
cx q[25], q[2];
h q[2];
h q[10];
cx q[25], q[10];
h q[10];
h q[11];
cx q[25], q[11];
h q[11];
h q[13];
cx q[26], q[13];
h q[13];
h q[28];
cx q[26], q[28];
h q[28];
h q[11];
cx q[27], q[11];
h q[11];
h q[19];
cx q[27], q[19];
h q[19];
h q[21];
cx q[28], q[21];
h q[21];
h q[26];
cx q[28], q[26];
h q[26];
h q[1];
cx q[29], q[1];
h q[1];
h q[8];
cx q[29], q[8];
h q[8];
h q[9];
cx q[29], q[9];
h q[9];
rz15(29778) q[0];
rz15(22707) q[1];
rz15(22504) q[2];
rz15(11021) q[3];
rz15(16491) q[4];
rz15(14005) q[5];
rz15(28665) q[6];
rz15(22216) q[7];
rz15(16791) q[8];
rz15(20475) q[9];
rz15(3804) q[10];
rz15(1438) q[11];
rz15(12412) q[12];
rz15(19426) q[13];
rz15(31527) q[14];
rz15(13697) q[15];
rz15(22738) q[16];
rz15(5598) q[17];
rz15(4679) q[18];
rz15(17227) q[19];
rz15(7689) q[20];
rz15(16838) q[21];
rz15(11497) q[22];
rz15(2756) q[23];
rz15(13159) q[24];
rz15(6031) q[25];
rz15(13937) q[26];
rz15(32513) q[27];
rz15(17986) q[28];
rz15(27448) q[29];
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
