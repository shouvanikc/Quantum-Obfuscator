OPENQASM 2.0;
include "qelib1.inc";

qreg q[20];

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
h q[4];
cx q[0], q[4];
h q[4];
h q[10];
cx q[0], q[10];
h q[10];
h q[6];
cx q[1], q[6];
h q[6];
h q[9];
cx q[1], q[9];
h q[9];
h q[18];
cx q[1], q[18];
h q[18];
h q[7];
cx q[2], q[7];
h q[7];
h q[17];
cx q[2], q[17];
h q[17];
h q[10];
cx q[3], q[10];
h q[10];
h q[15];
cx q[3], q[15];
h q[15];
h q[16];
cx q[3], q[16];
h q[16];
h q[0];
cx q[4], q[0];
h q[0];
h q[10];
cx q[4], q[10];
h q[10];
h q[9];
cx q[5], q[9];
h q[9];
h q[12];
cx q[5], q[12];
h q[12];
h q[19];
cx q[5], q[19];
h q[19];
h q[1];
cx q[6], q[1];
h q[1];
h q[14];
cx q[6], q[14];
h q[14];
h q[2];
cx q[7], q[2];
h q[2];
h q[13];
cx q[7], q[13];
h q[13];
h q[14];
cx q[7], q[14];
h q[14];
h q[13];
cx q[8], q[13];
h q[13];
h q[1];
cx q[9], q[1];
h q[1];
h q[5];
cx q[9], q[5];
h q[5];
h q[0];
cx q[10], q[0];
h q[0];
h q[3];
cx q[10], q[3];
h q[3];
h q[4];
cx q[10], q[4];
h q[4];
h q[12];
cx q[11], q[12];
h q[12];
h q[15];
cx q[11], q[15];
h q[15];
h q[17];
cx q[11], q[17];
h q[17];
h q[5];
cx q[12], q[5];
h q[5];
h q[11];
cx q[12], q[11];
h q[11];
h q[19];
cx q[12], q[19];
h q[19];
h q[7];
cx q[13], q[7];
h q[7];
h q[8];
cx q[13], q[8];
h q[8];
h q[16];
cx q[13], q[16];
h q[16];
h q[6];
cx q[14], q[6];
h q[6];
h q[7];
cx q[14], q[7];
h q[7];
h q[18];
cx q[14], q[18];
h q[18];
h q[3];
cx q[15], q[3];
h q[3];
h q[11];
cx q[15], q[11];
h q[11];
h q[3];
cx q[16], q[3];
h q[3];
h q[13];
cx q[16], q[13];
h q[13];
h q[18];
cx q[16], q[18];
h q[18];
h q[2];
cx q[17], q[2];
h q[2];
h q[11];
cx q[17], q[11];
h q[11];
h q[1];
cx q[18], q[1];
h q[1];
h q[14];
cx q[18], q[14];
h q[14];
h q[16];
cx q[18], q[16];
h q[16];
h q[5];
cx q[19], q[5];
h q[5];
h q[12];
cx q[19], q[12];
h q[12];
rz15(17164) q[0];
rz15(7862) q[1];
rz15(3369) q[2];
rz15(11614) q[3];
rz15(31439) q[4];
rz15(18263) q[5];
rz15(6288) q[6];
rz15(13825) q[7];
rz15(25314) q[8];
rz15(29538) q[9];
rz15(2305) q[10];
rz15(449) q[11];
rz15(6069) q[12];
rz15(10948) q[13];
rz15(15537) q[14];
rz15(16078) q[15];
rz15(16248) q[16];
rz15(27507) q[17];
rz15(23374) q[18];
rz15(22443) q[19];
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
