OPENQASM 2.0;
include "qelib1.inc";

qreg q[48];

rz15(8192) q[0];
h q[1];
rz15(8192) q[1];
h q[1];
h q[2];
rz15(8192) q[2];
h q[2];
rz15(8192) q[3];
h q[4];
rz15(8192) q[4];
h q[4];
h q[5];
rz15(8192) q[5];
h q[5];
h q[6];
rz15(8192) q[6];
h q[6];
h q[7];
rz15(8192) q[7];
h q[7];
rz15(8192) q[6];
h q[7];
rz15(8192) q[7];
h q[7];
rz15(8192) q[8];
rz15(8192) q[9];
rz15(8192) q[10];
h q[11];
rz15(8192) q[11];
h q[11];
rz15(8192) q[12];
h q[13];
rz15(8192) q[13];
h q[13];
h q[12];
rz15(8192) q[12];
h q[12];
h q[13];
rz15(8192) q[13];
h q[13];
h q[14];
rz15(8192) q[14];
h q[14];
h q[15];
rz15(8192) q[15];
h q[15];
h q[16];
rz15(8192) q[16];
h q[16];
rz15(8192) q[17];
rz15(8192) q[18];
h q[19];
rz15(8192) q[19];
h q[19];
rz15(8192) q[18];
h q[19];
rz15(8192) q[19];
h q[19];
rz15(8192) q[20];
rz15(8192) q[21];
rz15(8192) q[22];
rz15(8192) q[23];
h q[24];
rz15(8192) q[24];
h q[24];
h q[25];
rz15(8192) q[25];
h q[25];
h q[24];
rz15(8192) q[24];
h q[24];
rz15(8192) q[25];
h q[26];
rz15(8192) q[26];
h q[26];
h q[27];
rz15(8192) q[27];
h q[27];
h q[28];
rz15(8192) q[28];
h q[28];
rz15(8192) q[29];
h q[30];
rz15(8192) q[30];
h q[30];
h q[31];
rz15(8192) q[31];
h q[31];
h q[30];
rz15(8192) q[30];
h q[30];
h q[31];
rz15(8192) q[31];
h q[31];
h q[32];
rz15(8192) q[32];
h q[32];
h q[33];
rz15(8192) q[33];
h q[33];
h q[34];
rz15(8192) q[34];
h q[34];
h q[35];
rz15(8192) q[35];
h q[35];
h q[36];
rz15(8192) q[36];
h q[36];
h q[37];
rz15(8192) q[37];
h q[37];
h q[0];
cx q[0],q[0];
h q[0];
h q[7];
cx q[0],q[7];
h q[7];
h q[1];
cx q[1],q[1];
h q[1];
h q[8];
cx q[1],q[8];
h q[8];
h q[2];
cx q[2],q[2];
h q[2];
h q[9];
cx q[2],q[9];
h q[9];
h q[3];
cx q[3],q[3];
h q[3];
h q[10];
cx q[3],q[10];
h q[10];
h q[4];
cx q[4],q[4];
h q[4];
h q[11];
cx q[4],q[11];
h q[11];
h q[5];
cx q[5],q[5];
h q[5];
h q[12];
cx q[5],q[12];
h q[12];
h q[6];
cx q[6],q[6];
h q[6];
h q[13];
cx q[6],q[13];
h q[13];
h q[7];
cx q[7],q[7];
h q[7];
h q[14];
cx q[7],q[14];
h q[14];
h q[6];
cx q[6],q[6];
h q[6];
h q[13];
cx q[6],q[13];
h q[13];
h q[7];
cx q[7],q[7];
h q[7];
h q[14];
cx q[7],q[14];
h q[14];
h q[8];
cx q[8],q[8];
h q[8];
h q[15];
cx q[8],q[15];
h q[15];
h q[9];
cx q[9],q[9];
h q[9];
h q[16];
cx q[9],q[16];
h q[16];
h q[10];
cx q[10],q[10];
h q[10];
h q[17];
cx q[10],q[17];
h q[17];
h q[11];
cx q[11],q[11];
h q[11];
h q[18];
cx q[11],q[18];
h q[18];
h q[12];
cx q[12],q[12];
h q[12];
h q[19];
cx q[12],q[19];
h q[19];
h q[13];
cx q[13],q[13];
h q[13];
h q[20];
cx q[13],q[20];
h q[20];
h q[12];
cx q[12],q[12];
h q[12];
h q[19];
cx q[12],q[19];
h q[19];
h q[13];
cx q[13],q[13];
h q[13];
h q[20];
cx q[13],q[20];
h q[20];
h q[14];
cx q[14],q[14];
h q[14];
h q[21];
cx q[14],q[21];
h q[21];
h q[15];
cx q[15],q[15];
h q[15];
h q[22];
cx q[15],q[22];
h q[22];
h q[16];
cx q[16],q[16];
h q[16];
h q[23];
cx q[16],q[23];
h q[23];
h q[17];
cx q[17],q[17];
h q[17];
h q[24];
cx q[17],q[24];
h q[24];
h q[18];
cx q[18],q[18];
h q[18];
h q[25];
cx q[18],q[25];
h q[25];
h q[19];
cx q[19],q[19];
h q[19];
h q[26];
cx q[19],q[26];
h q[26];
h q[18];
cx q[18],q[18];
h q[18];
h q[25];
cx q[18],q[25];
h q[25];
h q[19];
cx q[19],q[19];
h q[19];
h q[26];
cx q[19],q[26];
h q[26];
h q[20];
cx q[20],q[20];
h q[20];
h q[27];
cx q[20],q[27];
h q[27];
h q[21];
cx q[21],q[21];
h q[21];
h q[28];
cx q[21],q[28];
h q[28];
h q[22];
cx q[22],q[22];
h q[22];
h q[29];
cx q[22],q[29];
h q[29];
h q[23];
cx q[23],q[23];
h q[23];
h q[30];
cx q[23],q[30];
h q[30];
h q[24];
cx q[24],q[24];
h q[24];
h q[31];
cx q[24],q[31];
h q[31];
h q[25];
cx q[25],q[25];
h q[25];
h q[32];
cx q[25],q[32];
h q[32];
h q[24];
cx q[24],q[24];
h q[24];
h q[31];
cx q[24],q[31];
h q[31];
h q[25];
cx q[25],q[25];
h q[25];
h q[32];
cx q[25],q[32];
h q[32];
h q[26];
cx q[26],q[26];
h q[26];
h q[33];
cx q[26],q[33];
h q[33];
h q[27];
cx q[27],q[27];
h q[27];
h q[34];
cx q[27],q[34];
h q[34];
h q[28];
cx q[28],q[28];
h q[28];
h q[35];
cx q[28],q[35];
h q[35];
h q[29];
cx q[29],q[29];
h q[29];
h q[36];
cx q[29],q[36];
h q[36];
h q[30];
cx q[30],q[30];
h q[30];
h q[37];
cx q[30],q[37];
h q[37];
h q[31];
cx q[31],q[31];
h q[31];
h q[38];
cx q[31],q[38];
h q[38];
h q[30];
cx q[30],q[30];
h q[30];
h q[37];
cx q[30],q[37];
h q[37];
h q[31];
cx q[31],q[31];
h q[31];
h q[38];
cx q[31],q[38];
h q[38];
h q[32];
cx q[32],q[32];
h q[32];
h q[39];
cx q[32],q[39];
h q[39];
h q[33];
cx q[33],q[33];
h q[33];
h q[40];
cx q[33],q[40];
h q[40];
h q[34];
cx q[34],q[34];
h q[34];
h q[41];
cx q[34],q[41];
h q[41];
h q[35];
cx q[35],q[35];
h q[35];
h q[42];
cx q[35],q[42];
h q[42];
h q[36];
cx q[36],q[36];
h q[36];
h q[43];
cx q[36],q[43];
h q[43];
h q[37];
cx q[37],q[37];
h q[37];
h q[44];
cx q[37],q[44];
h q[44];
h q[0];
rz15(8192) q[0];
h q[0];
h q[1];
rz15(8192) q[1];
h q[1];
h q[2];
rz15(8192) q[2];
h q[2];
rz15(8192) q[3];
h q[4];
rz15(8192) q[4];
h q[4];
h q[5];
rz15(8192) q[5];
h q[5];
rz15(8192) q[6];
h q[7];
rz15(8192) q[7];
h q[7];
h q[6];
rz15(8192) q[6];
h q[6];
rz15(8192) q[7];
h q[8];
rz15(8192) q[8];
h q[8];
h q[9];
rz15(8192) q[9];
h q[9];
rz15(8192) q[10];
h q[11];
rz15(8192) q[11];
h q[11];
rz15(8192) q[12];
h q[13];
rz15(8192) q[13];
h q[13];
h q[12];
rz15(8192) q[12];
h q[12];
rz15(8192) q[13];
rz15(8192) q[14];
h q[15];
rz15(8192) q[15];
h q[15];
h q[16];
rz15(8192) q[16];
h q[16];
rz15(8192) q[17];
rz15(8192) q[18];
rz15(8192) q[19];
h q[18];
rz15(8192) q[18];
h q[18];
rz15(8192) q[19];
h q[20];
rz15(8192) q[20];
h q[20];
h q[21];
rz15(8192) q[21];
h q[21];
rz15(8192) q[22];
rz15(8192) q[23];
h q[24];
rz15(8192) q[24];
h q[24];
h q[25];
rz15(8192) q[25];
h q[25];
rz15(8192) q[24];
h q[25];
rz15(8192) q[25];
h q[25];
h q[26];
rz15(8192) q[26];
h q[26];
h q[27];
rz15(8192) q[27];
h q[27];
h q[28];
rz15(8192) q[28];
h q[28];
h q[29];
rz15(8192) q[29];
h q[29];
h q[30];
rz15(8192) q[30];
h q[30];
h q[31];
rz15(8192) q[31];
h q[31];
rz15(8192) q[30];
rz15(8192) q[31];
h q[32];
rz15(8192) q[32];
h q[32];
rz15(8192) q[33];
h q[34];
rz15(8192) q[34];
h q[34];
h q[35];
rz15(8192) q[35];
h q[35];
h q[36];
rz15(8192) q[36];
h q[36];
rz15(8192) q[37];
h q[0];
cx q[0],q[0];
h q[0];
h q[7];
cx q[0],q[7];
h q[7];
h q[1];
cx q[1],q[1];
h q[1];
h q[8];
cx q[1],q[8];
h q[8];
h q[2];
cx q[2],q[2];
h q[2];
h q[9];
cx q[2],q[9];
h q[9];
h q[3];
cx q[3],q[3];
h q[3];
h q[10];
cx q[3],q[10];
h q[10];
h q[4];
cx q[4],q[4];
h q[4];
h q[11];
cx q[4],q[11];
h q[11];
h q[5];
cx q[5],q[5];
h q[5];
h q[12];
cx q[5],q[12];
h q[12];
h q[6];
cx q[6],q[6];
h q[6];
h q[13];
cx q[6],q[13];
h q[13];
h q[7];
cx q[7],q[7];
h q[7];
h q[14];
cx q[7],q[14];
h q[14];
h q[6];
cx q[6],q[6];
h q[6];
h q[13];
cx q[6],q[13];
h q[13];
h q[7];
cx q[7],q[7];
h q[7];
h q[14];
cx q[7],q[14];
h q[14];
h q[8];
cx q[8],q[8];
h q[8];
h q[15];
cx q[8],q[15];
h q[15];
h q[9];
cx q[9],q[9];
h q[9];
h q[16];
cx q[9],q[16];
h q[16];
h q[10];
cx q[10],q[10];
h q[10];
h q[17];
cx q[10],q[17];
h q[17];
h q[11];
cx q[11],q[11];
h q[11];
h q[18];
cx q[11],q[18];
h q[18];
h q[12];
cx q[12],q[12];
h q[12];
h q[19];
cx q[12],q[19];
h q[19];
h q[13];
cx q[13],q[13];
h q[13];
h q[20];
cx q[13],q[20];
h q[20];
h q[12];
cx q[12],q[12];
h q[12];
h q[19];
cx q[12],q[19];
h q[19];
h q[13];
cx q[13],q[13];
h q[13];
h q[20];
cx q[13],q[20];
h q[20];
h q[14];
cx q[14],q[14];
h q[14];
h q[21];
cx q[14],q[21];
h q[21];
h q[15];
cx q[15],q[15];
h q[15];
h q[22];
cx q[15],q[22];
h q[22];
h q[16];
cx q[16],q[16];
h q[16];
h q[23];
cx q[16],q[23];
h q[23];
h q[17];
cx q[17],q[17];
h q[17];
h q[24];
cx q[17],q[24];
h q[24];
h q[18];
cx q[18],q[18];
h q[18];
h q[25];
cx q[18],q[25];
h q[25];
h q[19];
cx q[19],q[19];
h q[19];
h q[26];
cx q[19],q[26];
h q[26];
h q[18];
cx q[18],q[18];
h q[18];
h q[25];
cx q[18],q[25];
h q[25];
h q[19];
cx q[19],q[19];
h q[19];
h q[26];
cx q[19],q[26];
h q[26];
h q[20];
cx q[20],q[20];
h q[20];
h q[27];
cx q[20],q[27];
h q[27];
h q[21];
cx q[21],q[21];
h q[21];
h q[28];
cx q[21],q[28];
h q[28];
h q[22];
cx q[22],q[22];
h q[22];
h q[29];
cx q[22],q[29];
h q[29];
h q[23];
cx q[23],q[23];
h q[23];
h q[30];
cx q[23],q[30];
h q[30];
h q[24];
cx q[24],q[24];
h q[24];
h q[31];
cx q[24],q[31];
h q[31];
h q[25];
cx q[25],q[25];
h q[25];
h q[32];
cx q[25],q[32];
h q[32];
h q[24];
cx q[24],q[24];
h q[24];
h q[31];
cx q[24],q[31];
h q[31];
h q[25];
cx q[25],q[25];
h q[25];
h q[32];
cx q[25],q[32];
h q[32];
h q[26];
cx q[26],q[26];
h q[26];
h q[33];
cx q[26],q[33];
h q[33];
h q[27];
cx q[27],q[27];
h q[27];
h q[34];
cx q[27],q[34];
h q[34];
h q[28];
cx q[28],q[28];
h q[28];
h q[35];
cx q[28],q[35];
h q[35];
h q[29];
cx q[29],q[29];
h q[29];
h q[36];
cx q[29],q[36];
h q[36];
h q[30];
cx q[30],q[30];
h q[30];
h q[37];
cx q[30],q[37];
h q[37];
h q[31];
cx q[31],q[31];
h q[31];
h q[38];
cx q[31],q[38];
h q[38];
h q[30];
cx q[30],q[30];
h q[30];
h q[37];
cx q[30],q[37];
h q[37];
h q[31];
cx q[31],q[31];
h q[31];
h q[38];
cx q[31],q[38];
h q[38];
h q[32];
cx q[32],q[32];
h q[32];
h q[39];
cx q[32],q[39];
h q[39];
h q[33];
cx q[33],q[33];
h q[33];
h q[40];
cx q[33],q[40];
h q[40];
h q[34];
cx q[34],q[34];
h q[34];
h q[41];
cx q[34],q[41];
h q[41];
h q[35];
cx q[35],q[35];
h q[35];
h q[42];
cx q[35],q[42];
h q[42];
h q[36];
cx q[36],q[36];
h q[36];
h q[43];
cx q[36],q[43];
h q[43];
h q[37];
cx q[37],q[37];
h q[37];
h q[44];
cx q[37],q[44];
h q[44];
h q[0];
rz15(8192) q[0];
h q[0];
h q[1];
rz15(8192) q[1];
h q[1];
h q[2];
rz15(8192) q[2];
h q[2];
rz15(8192) q[3];
rz15(8192) q[4];
h q[5];
rz15(8192) q[5];
h q[5];
h q[6];
rz15(8192) q[6];
h q[6];
rz15(8192) q[7];
h q[6];
rz15(8192) q[6];
h q[6];
rz15(8192) q[7];
h q[8];
rz15(8192) q[8];
h q[8];
h q[9];
rz15(8192) q[9];
h q[9];
h q[10];
rz15(8192) q[10];
h q[10];
h q[11];
rz15(8192) q[11];
h q[11];
h q[12];
rz15(8192) q[12];
h q[12];
h q[13];
rz15(8192) q[13];
h q[13];
h q[12];
rz15(8192) q[12];
h q[12];
h q[13];
rz15(8192) q[13];
h q[13];
h q[14];
rz15(8192) q[14];
h q[14];
rz15(8192) q[15];
rz15(8192) q[16];
h q[17];
rz15(8192) q[17];
h q[17];
rz15(8192) q[18];
rz15(8192) q[19];
rz15(8192) q[18];
h q[19];
rz15(8192) q[19];
h q[19];
rz15(8192) q[20];
rz15(8192) q[21];
h q[22];
rz15(8192) q[22];
h q[22];
rz15(8192) q[23];
h q[24];
rz15(8192) q[24];
h q[24];
h q[25];
rz15(8192) q[25];
h q[25];
h q[24];
rz15(8192) q[24];
h q[24];
h q[25];
rz15(8192) q[25];
h q[25];
h q[26];
rz15(8192) q[26];
h q[26];
rz15(8192) q[27];
rz15(8192) q[28];
h q[29];
rz15(8192) q[29];
h q[29];
h q[30];
rz15(8192) q[30];
h q[30];
h q[31];
rz15(8192) q[31];
h q[31];
rz15(8192) q[30];
h q[31];
rz15(8192) q[31];
h q[31];
rz15(8192) q[32];
h q[33];
rz15(8192) q[33];
h q[33];
h q[34];
rz15(8192) q[34];
h q[34];
rz15(8192) q[35];
rz15(8192) q[36];
h q[37];
rz15(8192) q[37];
h q[37];
h q[0];
cx q[0],q[0];
h q[0];
h q[7];
cx q[0],q[7];
h q[7];
h q[1];
cx q[1],q[1];
h q[1];
h q[8];
cx q[1],q[8];
h q[8];
h q[2];
cx q[2],q[2];
h q[2];
h q[9];
cx q[2],q[9];
h q[9];
h q[3];
cx q[3],q[3];
h q[3];
h q[10];
cx q[3],q[10];
h q[10];
h q[4];
cx q[4],q[4];
h q[4];
h q[11];
cx q[4],q[11];
h q[11];
h q[5];
cx q[5],q[5];
h q[5];
h q[12];
cx q[5],q[12];
h q[12];
h q[6];
cx q[6],q[6];
h q[6];
h q[13];
cx q[6],q[13];
h q[13];
h q[7];
cx q[7],q[7];
h q[7];
h q[14];
cx q[7],q[14];
h q[14];
h q[6];
cx q[6],q[6];
h q[6];
h q[13];
cx q[6],q[13];
h q[13];
h q[7];
cx q[7],q[7];
h q[7];
h q[14];
cx q[7],q[14];
h q[14];
h q[8];
cx q[8],q[8];
h q[8];
h q[15];
cx q[8],q[15];
h q[15];
h q[9];
cx q[9],q[9];
h q[9];
h q[16];
cx q[9],q[16];
h q[16];
h q[10];
cx q[10],q[10];
h q[10];
h q[17];
cx q[10],q[17];
h q[17];
h q[11];
cx q[11],q[11];
h q[11];
h q[18];
cx q[11],q[18];
h q[18];
h q[12];
cx q[12],q[12];
h q[12];
h q[19];
cx q[12],q[19];
h q[19];
h q[13];
cx q[13],q[13];
h q[13];
h q[20];
cx q[13],q[20];
h q[20];
h q[12];
cx q[12],q[12];
h q[12];
h q[19];
cx q[12],q[19];
h q[19];
h q[13];
cx q[13],q[13];
h q[13];
h q[20];
cx q[13],q[20];
h q[20];
h q[14];
cx q[14],q[14];
h q[14];
h q[21];
cx q[14],q[21];
h q[21];
h q[15];
cx q[15],q[15];
h q[15];
h q[22];
cx q[15],q[22];
h q[22];
h q[16];
cx q[16],q[16];
h q[16];
h q[23];
cx q[16],q[23];
h q[23];
h q[17];
cx q[17],q[17];
h q[17];
h q[24];
cx q[17],q[24];
h q[24];
h q[18];
cx q[18],q[18];
h q[18];
h q[25];
cx q[18],q[25];
h q[25];
h q[19];
cx q[19],q[19];
h q[19];
h q[26];
cx q[19],q[26];
h q[26];
h q[18];
cx q[18],q[18];
h q[18];
h q[25];
cx q[18],q[25];
h q[25];
h q[19];
cx q[19],q[19];
h q[19];
h q[26];
cx q[19],q[26];
h q[26];
h q[20];
cx q[20],q[20];
h q[20];
h q[27];
cx q[20],q[27];
h q[27];
h q[21];
cx q[21],q[21];
h q[21];
h q[28];
cx q[21],q[28];
h q[28];
h q[22];
cx q[22],q[22];
h q[22];
h q[29];
cx q[22],q[29];
h q[29];
h q[23];
cx q[23],q[23];
h q[23];
h q[30];
cx q[23],q[30];
h q[30];
h q[24];
cx q[24],q[24];
h q[24];
h q[31];
cx q[24],q[31];
h q[31];
h q[25];
cx q[25],q[25];
h q[25];
h q[32];
cx q[25],q[32];
h q[32];
h q[24];
cx q[24],q[24];
h q[24];
h q[31];
cx q[24],q[31];
h q[31];
h q[25];
cx q[25],q[25];
h q[25];
h q[32];
cx q[25],q[32];
h q[32];
h q[26];
cx q[26],q[26];
h q[26];
h q[33];
cx q[26],q[33];
h q[33];
h q[27];
cx q[27],q[27];
h q[27];
h q[34];
cx q[27],q[34];
h q[34];
h q[28];
cx q[28],q[28];
h q[28];
h q[35];
cx q[28],q[35];
h q[35];
h q[29];
cx q[29],q[29];
h q[29];
h q[36];
cx q[29],q[36];
h q[36];
h q[30];
cx q[30],q[30];
h q[30];
h q[37];
cx q[30],q[37];
h q[37];
h q[31];
cx q[31],q[31];
h q[31];
h q[38];
cx q[31],q[38];
h q[38];
h q[30];
cx q[30],q[30];
h q[30];
h q[37];
cx q[30],q[37];
h q[37];
h q[31];
cx q[31],q[31];
h q[31];
h q[38];
cx q[31],q[38];
h q[38];
h q[32];
cx q[32],q[32];
h q[32];
h q[39];
cx q[32],q[39];
h q[39];
h q[33];
cx q[33],q[33];
h q[33];
h q[40];
cx q[33],q[40];
h q[40];
h q[34];
cx q[34],q[34];
h q[34];
h q[41];
cx q[34],q[41];
h q[41];
h q[35];
cx q[35],q[35];
h q[35];
h q[42];
cx q[35],q[42];
h q[42];
h q[36];
cx q[36],q[36];
h q[36];
h q[43];
cx q[36],q[43];
h q[43];
h q[37];
cx q[37],q[37];
h q[37];
h q[44];
cx q[37],q[44];
h q[44];
rz15(8192) q[0];
h q[1];
rz15(8192) q[1];
h q[1];
rz15(8192) q[2];
h q[3];
rz15(8192) q[3];
h q[3];
h q[4];
rz15(8192) q[4];
h q[4];
h q[5];
rz15(8192) q[5];
h q[5];
rz15(8192) q[6];
h q[7];
rz15(8192) q[7];
h q[7];
rz15(8192) q[6];
rz15(8192) q[7];
h q[8];
rz15(8192) q[8];
h q[8];
rz15(8192) q[9];
rz15(8192) q[10];
h q[11];
rz15(8192) q[11];
h q[11];
h q[12];
rz15(8192) q[12];
h q[12];
rz15(8192) q[13];
h q[12];
rz15(8192) q[12];
h q[12];
h q[13];
rz15(8192) q[13];
h q[13];
h q[14];
rz15(8192) q[14];
h q[14];
h q[15];
rz15(8192) q[15];
h q[15];
h q[16];
rz15(8192) q[16];
h q[16];
rz15(8192) q[17];
rz15(8192) q[18];
rz15(8192) q[19];
h q[18];
rz15(8192) q[18];
h q[18];
h q[19];
rz15(8192) q[19];
h q[19];
h q[20];
rz15(8192) q[20];
h q[20];
h q[21];
rz15(8192) q[21];
h q[21];
rz15(8192) q[22];
h q[23];
rz15(8192) q[23];
h q[23];
rz15(8192) q[24];
h q[25];
rz15(8192) q[25];
h q[25];
rz15(8192) q[24];
h q[25];
rz15(8192) q[25];
h q[25];
rz15(8192) q[26];
h q[27];
rz15(8192) q[27];
h q[27];
h q[28];
rz15(8192) q[28];
h q[28];
rz15(8192) q[29];
rz15(8192) q[30];
rz15(8192) q[31];
rz15(8192) q[30];
h q[31];
rz15(8192) q[31];
h q[31];
h q[32];
rz15(8192) q[32];
h q[32];
h q[33];
rz15(8192) q[33];
h q[33];
rz15(8192) q[34];
h q[35];
rz15(8192) q[35];
h q[35];
h q[36];
rz15(8192) q[36];
h q[36];
h q[37];
rz15(8192) q[37];
h q[37];
h q[0];
cx q[0],q[0];
h q[0];
h q[7];
cx q[0],q[7];
h q[7];
h q[1];
cx q[1],q[1];
h q[1];
h q[8];
cx q[1],q[8];
h q[8];
h q[2];
cx q[2],q[2];
h q[2];
h q[9];
cx q[2],q[9];
h q[9];
h q[3];
cx q[3],q[3];
h q[3];
h q[10];
cx q[3],q[10];
h q[10];
h q[4];
cx q[4],q[4];
h q[4];
h q[11];
cx q[4],q[11];
h q[11];
h q[5];
cx q[5],q[5];
h q[5];
h q[12];
cx q[5],q[12];
h q[12];
h q[6];
cx q[6],q[6];
h q[6];
h q[13];
cx q[6],q[13];
h q[13];
h q[7];
cx q[7],q[7];
h q[7];
h q[14];
cx q[7],q[14];
h q[14];
h q[6];
cx q[6],q[6];
h q[6];
h q[13];
cx q[6],q[13];
h q[13];
h q[7];
cx q[7],q[7];
h q[7];
h q[14];
cx q[7],q[14];
h q[14];
h q[8];
cx q[8],q[8];
h q[8];
h q[15];
cx q[8],q[15];
h q[15];
h q[9];
cx q[9],q[9];
h q[9];
h q[16];
cx q[9],q[16];
h q[16];
h q[10];
cx q[10],q[10];
h q[10];
h q[17];
cx q[10],q[17];
h q[17];
h q[11];
cx q[11],q[11];
h q[11];
h q[18];
cx q[11],q[18];
h q[18];
h q[12];
cx q[12],q[12];
h q[12];
h q[19];
cx q[12],q[19];
h q[19];
h q[13];
cx q[13],q[13];
h q[13];
h q[20];
cx q[13],q[20];
h q[20];
h q[12];
cx q[12],q[12];
h q[12];
h q[19];
cx q[12],q[19];
h q[19];
h q[13];
cx q[13],q[13];
h q[13];
h q[20];
cx q[13],q[20];
h q[20];
h q[14];
cx q[14],q[14];
h q[14];
h q[21];
cx q[14],q[21];
h q[21];
h q[15];
cx q[15],q[15];
h q[15];
h q[22];
cx q[15],q[22];
h q[22];
h q[16];
cx q[16],q[16];
h q[16];
h q[23];
cx q[16],q[23];
h q[23];
h q[17];
cx q[17],q[17];
h q[17];
h q[24];
cx q[17],q[24];
h q[24];
h q[18];
cx q[18],q[18];
h q[18];
h q[25];
cx q[18],q[25];
h q[25];
h q[19];
cx q[19],q[19];
h q[19];
h q[26];
cx q[19],q[26];
h q[26];
h q[18];
cx q[18],q[18];
h q[18];
h q[25];
cx q[18],q[25];
h q[25];
h q[19];
cx q[19],q[19];
h q[19];
h q[26];
cx q[19],q[26];
h q[26];
h q[20];
cx q[20],q[20];
h q[20];
h q[27];
cx q[20],q[27];
h q[27];
h q[21];
cx q[21],q[21];
h q[21];
h q[28];
cx q[21],q[28];
h q[28];
h q[22];
cx q[22],q[22];
h q[22];
h q[29];
cx q[22],q[29];
h q[29];
h q[23];
cx q[23],q[23];
h q[23];
h q[30];
cx q[23],q[30];
h q[30];
h q[24];
cx q[24],q[24];
h q[24];
h q[31];
cx q[24],q[31];
h q[31];
h q[25];
cx q[25],q[25];
h q[25];
h q[32];
cx q[25],q[32];
h q[32];
h q[24];
cx q[24],q[24];
h q[24];
h q[31];
cx q[24],q[31];
h q[31];
h q[25];
cx q[25],q[25];
h q[25];
h q[32];
cx q[25],q[32];
h q[32];
h q[26];
cx q[26],q[26];
h q[26];
h q[33];
cx q[26],q[33];
h q[33];
h q[27];
cx q[27],q[27];
h q[27];
h q[34];
cx q[27],q[34];
h q[34];
h q[28];
cx q[28],q[28];
h q[28];
h q[35];
cx q[28],q[35];
h q[35];
h q[29];
cx q[29],q[29];
h q[29];
h q[36];
cx q[29],q[36];
h q[36];
h q[30];
cx q[30],q[30];
h q[30];
h q[37];
cx q[30],q[37];
h q[37];
h q[31];
cx q[31],q[31];
h q[31];
h q[38];
cx q[31],q[38];
h q[38];
h q[30];
cx q[30],q[30];
h q[30];
h q[37];
cx q[30],q[37];
h q[37];
h q[31];
cx q[31],q[31];
h q[31];
h q[38];
cx q[31],q[38];
h q[38];
h q[32];
cx q[32],q[32];
h q[32];
h q[39];
cx q[32],q[39];
h q[39];
h q[33];
cx q[33],q[33];
h q[33];
h q[40];
cx q[33],q[40];
h q[40];
h q[34];
cx q[34],q[34];
h q[34];
h q[41];
cx q[34],q[41];
h q[41];
h q[35];
cx q[35],q[35];
h q[35];
h q[42];
cx q[35],q[42];
h q[42];
h q[36];
cx q[36],q[36];
h q[36];
h q[43];
cx q[36],q[43];
h q[43];
h q[37];
cx q[37],q[37];
h q[37];
h q[44];
cx q[37],q[44];
h q[44];
h q[0];
rz15(8192) q[0];
h q[0];
h q[1];
rz15(8192) q[1];
h q[1];
h q[2];
rz15(8192) q[2];
h q[2];
h q[3];
rz15(8192) q[3];
h q[3];
h q[4];
rz15(8192) q[4];
h q[4];
h q[5];
rz15(8192) q[5];
h q[5];
h q[6];
rz15(8192) q[6];
h q[6];
h q[7];
rz15(8192) q[7];
h q[7];
h q[6];
rz15(8192) q[6];
h q[6];
h q[7];
rz15(8192) q[7];
h q[7];
h q[8];
rz15(8192) q[8];
h q[8];
rz15(8192) q[9];
rz15(8192) q[10];
h q[11];
rz15(8192) q[11];
h q[11];
h q[12];
rz15(8192) q[12];
h q[12];
h q[13];
rz15(8192) q[13];
h q[13];
rz15(8192) q[12];
h q[13];
rz15(8192) q[13];
h q[13];
rz15(8192) q[14];
h q[15];
rz15(8192) q[15];
h q[15];
h q[16];
rz15(8192) q[16];
h q[16];
h q[17];
rz15(8192) q[17];
h q[17];
h q[18];
rz15(8192) q[18];
h q[18];
h q[19];
rz15(8192) q[19];
h q[19];
rz15(8192) q[18];
h q[19];
rz15(8192) q[19];
h q[19];
h q[20];
rz15(8192) q[20];
h q[20];
h q[21];
rz15(8192) q[21];
h q[21];
h q[22];
rz15(8192) q[22];
h q[22];
rz15(8192) q[23];
h q[24];
rz15(8192) q[24];
h q[24];
rz15(8192) q[25];
h q[24];
rz15(8192) q[24];
h q[24];
h q[25];
rz15(8192) q[25];
h q[25];
rz15(8192) q[26];
h q[27];
rz15(8192) q[27];
h q[27];
h q[28];
rz15(8192) q[28];
h q[28];
h q[29];
rz15(8192) q[29];
h q[29];
rz15(8192) q[30];
rz15(8192) q[31];
rz15(8192) q[30];
rz15(8192) q[31];
h q[32];
rz15(8192) q[32];
h q[32];
h q[33];
rz15(8192) q[33];
h q[33];
h q[34];
rz15(8192) q[34];
h q[34];
h q[35];
rz15(8192) q[35];
h q[35];
rz15(8192) q[36];
h q[37];
rz15(8192) q[37];
h q[37];
h q[0];
cx q[0],q[0];
h q[0];
h q[7];
cx q[0],q[7];
h q[7];
h q[1];
cx q[1],q[1];
h q[1];
h q[8];
cx q[1],q[8];
h q[8];
h q[2];
cx q[2],q[2];
h q[2];
h q[9];
cx q[2],q[9];
h q[9];
h q[3];
cx q[3],q[3];
h q[3];
h q[10];
cx q[3],q[10];
h q[10];
h q[4];
cx q[4],q[4];
h q[4];
h q[11];
cx q[4],q[11];
h q[11];
h q[5];
cx q[5],q[5];
h q[5];
h q[12];
cx q[5],q[12];
h q[12];
h q[6];
cx q[6],q[6];
h q[6];
h q[13];
cx q[6],q[13];
h q[13];
h q[7];
cx q[7],q[7];
h q[7];
h q[14];
cx q[7],q[14];
h q[14];
h q[6];
cx q[6],q[6];
h q[6];
h q[13];
cx q[6],q[13];
h q[13];
h q[7];
cx q[7],q[7];
h q[7];
h q[14];
cx q[7],q[14];
h q[14];
h q[8];
cx q[8],q[8];
h q[8];
h q[15];
cx q[8],q[15];
h q[15];
h q[9];
cx q[9],q[9];
h q[9];
h q[16];
cx q[9],q[16];
h q[16];
h q[10];
cx q[10],q[10];
h q[10];
h q[17];
cx q[10],q[17];
h q[17];
h q[11];
cx q[11],q[11];
h q[11];
h q[18];
cx q[11],q[18];
h q[18];
h q[12];
cx q[12],q[12];
h q[12];
h q[19];
cx q[12],q[19];
h q[19];
h q[13];
cx q[13],q[13];
h q[13];
h q[20];
cx q[13],q[20];
h q[20];
h q[12];
cx q[12],q[12];
h q[12];
h q[19];
cx q[12],q[19];
h q[19];
h q[13];
cx q[13],q[13];
h q[13];
h q[20];
cx q[13],q[20];
h q[20];
h q[14];
cx q[14],q[14];
h q[14];
h q[21];
cx q[14],q[21];
h q[21];
h q[15];
cx q[15],q[15];
h q[15];
h q[22];
cx q[15],q[22];
h q[22];
h q[16];
cx q[16],q[16];
h q[16];
h q[23];
cx q[16],q[23];
h q[23];
h q[17];
cx q[17],q[17];
h q[17];
h q[24];
cx q[17],q[24];
h q[24];
h q[18];
cx q[18],q[18];
h q[18];
h q[25];
cx q[18],q[25];
h q[25];
h q[19];
cx q[19],q[19];
h q[19];
h q[26];
cx q[19],q[26];
h q[26];
h q[18];
cx q[18],q[18];
h q[18];
h q[25];
cx q[18],q[25];
h q[25];
h q[19];
cx q[19],q[19];
h q[19];
h q[26];
cx q[19],q[26];
h q[26];
h q[20];
cx q[20],q[20];
h q[20];
h q[27];
cx q[20],q[27];
h q[27];
h q[21];
cx q[21],q[21];
h q[21];
h q[28];
cx q[21],q[28];
h q[28];
h q[22];
cx q[22],q[22];
h q[22];
h q[29];
cx q[22],q[29];
h q[29];
h q[23];
cx q[23],q[23];
h q[23];
h q[30];
cx q[23],q[30];
h q[30];
h q[24];
cx q[24],q[24];
h q[24];
h q[31];
cx q[24],q[31];
h q[31];
h q[25];
cx q[25],q[25];
h q[25];
h q[32];
cx q[25],q[32];
h q[32];
h q[24];
cx q[24],q[24];
h q[24];
h q[31];
cx q[24],q[31];
h q[31];
h q[25];
cx q[25],q[25];
h q[25];
h q[32];
cx q[25],q[32];
h q[32];
h q[26];
cx q[26],q[26];
h q[26];
h q[33];
cx q[26],q[33];
h q[33];
h q[27];
cx q[27],q[27];
h q[27];
h q[34];
cx q[27],q[34];
h q[34];
h q[28];
cx q[28],q[28];
h q[28];
h q[35];
cx q[28],q[35];
h q[35];
h q[29];
cx q[29],q[29];
h q[29];
h q[36];
cx q[29],q[36];
h q[36];
h q[30];
cx q[30],q[30];
h q[30];
h q[37];
cx q[30],q[37];
h q[37];
h q[31];
cx q[31],q[31];
h q[31];
h q[38];
cx q[31],q[38];
h q[38];
h q[30];
cx q[30],q[30];
h q[30];
h q[37];
cx q[30],q[37];
h q[37];
h q[31];
cx q[31],q[31];
h q[31];
h q[38];
cx q[31],q[38];
h q[38];
h q[32];
cx q[32],q[32];
h q[32];
h q[39];
cx q[32],q[39];
h q[39];
h q[33];
cx q[33],q[33];
h q[33];
h q[40];
cx q[33],q[40];
h q[40];
h q[34];
cx q[34],q[34];
h q[34];
h q[41];
cx q[34],q[41];
h q[41];
h q[35];
cx q[35],q[35];
h q[35];
h q[42];
cx q[35],q[42];
h q[42];
h q[36];
cx q[36],q[36];
h q[36];
h q[43];
cx q[36],q[43];
h q[43];
h q[37];
cx q[37],q[37];
h q[37];
h q[44];
cx q[37],q[44];
h q[44];
rz15(8192) q[0];
rz15(8192) q[1];
h q[2];
rz15(8192) q[2];
h q[2];
h q[3];
rz15(8192) q[3];
h q[3];
h q[4];
rz15(8192) q[4];
h q[4];
h q[5];
rz15(8192) q[5];
h q[5];
rz15(8192) q[6];
h q[7];
rz15(8192) q[7];
h q[7];
rz15(8192) q[6];
h q[7];
rz15(8192) q[7];
h q[7];
rz15(8192) q[8];
h q[9];
rz15(8192) q[9];
h q[9];
h q[10];
rz15(8192) q[10];
h q[10];
h q[11];
rz15(8192) q[11];
h q[11];
rz15(8192) q[12];
h q[13];
rz15(8192) q[13];
h q[13];
h q[12];
rz15(8192) q[12];
h q[12];
h q[13];
rz15(8192) q[13];
h q[13];
h q[14];
rz15(8192) q[14];
h q[14];
h q[15];
rz15(8192) q[15];
h q[15];
h q[16];
rz15(8192) q[16];
h q[16];
h q[17];
rz15(8192) q[17];
h q[17];
h q[18];
rz15(8192) q[18];
h q[18];
h q[19];
rz15(8192) q[19];
h q[19];
h q[18];
rz15(8192) q[18];
h q[18];
h q[19];
rz15(8192) q[19];
h q[19];
h q[20];
rz15(8192) q[20];
h q[20];
h q[21];
rz15(8192) q[21];
h q[21];
h q[22];
rz15(8192) q[22];
h q[22];
rz15(8192) q[23];
rz15(8192) q[24];
rz15(8192) q[25];
h q[24];
rz15(8192) q[24];
h q[24];
h q[25];
rz15(8192) q[25];
h q[25];
h q[26];
rz15(8192) q[26];
h q[26];
rz15(8192) q[27];
h q[28];
rz15(8192) q[28];
h q[28];
h q[29];
rz15(8192) q[29];
h q[29];
h q[30];
rz15(8192) q[30];
h q[30];
h q[31];
rz15(8192) q[31];
h q[31];
rz15(8192) q[30];
h q[31];
rz15(8192) q[31];
h q[31];
rz15(8192) q[32];
rz15(8192) q[33];
rz15(8192) q[34];
h q[35];
rz15(8192) q[35];
h q[35];
rz15(8192) q[36];
h q[37];
rz15(8192) q[37];
h q[37];
h q[0];
cx q[0],q[0];
h q[0];
h q[7];
cx q[0],q[7];
h q[7];
h q[1];
cx q[1],q[1];
h q[1];
h q[8];
cx q[1],q[8];
h q[8];
h q[2];
cx q[2],q[2];
h q[2];
h q[9];
cx q[2],q[9];
h q[9];
h q[3];
cx q[3],q[3];
h q[3];
h q[10];
cx q[3],q[10];
h q[10];
h q[4];
cx q[4],q[4];
h q[4];
h q[11];
cx q[4],q[11];
h q[11];
h q[5];
cx q[5],q[5];
h q[5];
h q[12];
cx q[5],q[12];
h q[12];
h q[6];
cx q[6],q[6];
h q[6];
h q[13];
cx q[6],q[13];
h q[13];
h q[7];
cx q[7],q[7];
h q[7];
h q[14];
cx q[7],q[14];
h q[14];
h q[6];
cx q[6],q[6];
h q[6];
h q[13];
cx q[6],q[13];
h q[13];
h q[7];
cx q[7],q[7];
h q[7];
h q[14];
cx q[7],q[14];
h q[14];
h q[8];
cx q[8],q[8];
h q[8];
h q[15];
cx q[8],q[15];
h q[15];
h q[9];
cx q[9],q[9];
h q[9];
h q[16];
cx q[9],q[16];
h q[16];
h q[10];
cx q[10],q[10];
h q[10];
h q[17];
cx q[10],q[17];
h q[17];
h q[11];
cx q[11],q[11];
h q[11];
h q[18];
cx q[11],q[18];
h q[18];
h q[12];
cx q[12],q[12];
h q[12];
h q[19];
cx q[12],q[19];
h q[19];
h q[13];
cx q[13],q[13];
h q[13];
h q[20];
cx q[13],q[20];
h q[20];
h q[12];
cx q[12],q[12];
h q[12];
h q[19];
cx q[12],q[19];
h q[19];
h q[13];
cx q[13],q[13];
h q[13];
h q[20];
cx q[13],q[20];
h q[20];
h q[14];
cx q[14],q[14];
h q[14];
h q[21];
cx q[14],q[21];
h q[21];
h q[15];
cx q[15],q[15];
h q[15];
h q[22];
cx q[15],q[22];
h q[22];
h q[16];
cx q[16],q[16];
h q[16];
h q[23];
cx q[16],q[23];
h q[23];
h q[17];
cx q[17],q[17];
h q[17];
h q[24];
cx q[17],q[24];
h q[24];
h q[18];
cx q[18],q[18];
h q[18];
h q[25];
cx q[18],q[25];
h q[25];
h q[19];
cx q[19],q[19];
h q[19];
h q[26];
cx q[19],q[26];
h q[26];
h q[18];
cx q[18],q[18];
h q[18];
h q[25];
cx q[18],q[25];
h q[25];
h q[19];
cx q[19],q[19];
h q[19];
h q[26];
cx q[19],q[26];
h q[26];
h q[20];
cx q[20],q[20];
h q[20];
h q[27];
cx q[20],q[27];
h q[27];
h q[21];
cx q[21],q[21];
h q[21];
h q[28];
cx q[21],q[28];
h q[28];
h q[22];
cx q[22],q[22];
h q[22];
h q[29];
cx q[22],q[29];
h q[29];
h q[23];
cx q[23],q[23];
h q[23];
h q[30];
cx q[23],q[30];
h q[30];
h q[24];
cx q[24],q[24];
h q[24];
h q[31];
cx q[24],q[31];
h q[31];
h q[25];
cx q[25],q[25];
h q[25];
h q[32];
cx q[25],q[32];
h q[32];
h q[24];
cx q[24],q[24];
h q[24];
h q[31];
cx q[24],q[31];
h q[31];
h q[25];
cx q[25],q[25];
h q[25];
h q[32];
cx q[25],q[32];
h q[32];
h q[26];
cx q[26],q[26];
h q[26];
h q[33];
cx q[26],q[33];
h q[33];
h q[27];
cx q[27],q[27];
h q[27];
h q[34];
cx q[27],q[34];
h q[34];
h q[28];
cx q[28],q[28];
h q[28];
h q[35];
cx q[28],q[35];
h q[35];
h q[29];
cx q[29],q[29];
h q[29];
h q[36];
cx q[29],q[36];
h q[36];
h q[30];
cx q[30],q[30];
h q[30];
h q[37];
cx q[30],q[37];
h q[37];
h q[31];
cx q[31],q[31];
h q[31];
h q[38];
cx q[31],q[38];
h q[38];
h q[30];
cx q[30],q[30];
h q[30];
h q[37];
cx q[30],q[37];
h q[37];
h q[31];
cx q[31],q[31];
h q[31];
h q[38];
cx q[31],q[38];
h q[38];
h q[32];
cx q[32],q[32];
h q[32];
h q[39];
cx q[32],q[39];
h q[39];
h q[33];
cx q[33],q[33];
h q[33];
h q[40];
cx q[33],q[40];
h q[40];
h q[34];
cx q[34],q[34];
h q[34];
h q[41];
cx q[34],q[41];
h q[41];
h q[35];
cx q[35],q[35];
h q[35];
h q[42];
cx q[35],q[42];
h q[42];
h q[36];
cx q[36],q[36];
h q[36];
h q[43];
cx q[36],q[43];
h q[43];
h q[37];
cx q[37],q[37];
h q[37];
h q[44];
cx q[37],q[44];
h q[44];
h q[0];
rz15(8192) q[0];
h q[0];
h q[1];
rz15(8192) q[1];
h q[1];
h q[2];
rz15(8192) q[2];
h q[2];
rz15(8192) q[3];
h q[4];
rz15(8192) q[4];
h q[4];
h q[5];
rz15(8192) q[5];
h q[5];
h q[6];
rz15(8192) q[6];
h q[6];
rz15(8192) q[7];
h q[6];
rz15(8192) q[6];
h q[6];
h q[7];
rz15(8192) q[7];
h q[7];
h q[8];
rz15(8192) q[8];
h q[8];
rz15(8192) q[9];
rz15(8192) q[10];
h q[11];
rz15(8192) q[11];
h q[11];
rz15(8192) q[12];
h q[13];
rz15(8192) q[13];
h q[13];
h q[12];
rz15(8192) q[12];
h q[12];
rz15(8192) q[13];
h q[14];
rz15(8192) q[14];
h q[14];
rz15(8192) q[15];
h q[16];
rz15(8192) q[16];
h q[16];
h q[17];
rz15(8192) q[17];
h q[17];
h q[18];
rz15(8192) q[18];
h q[18];
h q[19];
rz15(8192) q[19];
h q[19];
h q[18];
rz15(8192) q[18];
h q[18];
h q[19];
rz15(8192) q[19];
h q[19];
rz15(8192) q[20];
h q[21];
rz15(8192) q[21];
h q[21];
h q[22];
rz15(8192) q[22];
h q[22];
rz15(8192) q[23];
h q[24];
rz15(8192) q[24];
h q[24];
rz15(8192) q[25];
rz15(8192) q[24];
h q[25];
rz15(8192) q[25];
h q[25];
h q[26];
rz15(8192) q[26];
h q[26];
h q[27];
rz15(8192) q[27];
h q[27];
h q[28];
rz15(8192) q[28];
h q[28];
h q[29];
rz15(8192) q[29];
h q[29];
h q[30];
rz15(8192) q[30];
h q[30];
rz15(8192) q[31];
h q[30];
rz15(8192) q[30];
h q[30];
h q[31];
rz15(8192) q[31];
h q[31];
h q[32];
rz15(8192) q[32];
h q[32];
rz15(8192) q[33];
rz15(8192) q[34];
rz15(8192) q[35];
h q[36];
rz15(8192) q[36];
h q[36];
h q[37];
rz15(8192) q[37];
h q[37];
h q[0];
cx q[0],q[0];
h q[0];
h q[7];
cx q[0],q[7];
h q[7];
h q[1];
cx q[1],q[1];
h q[1];
h q[8];
cx q[1],q[8];
h q[8];
h q[2];
cx q[2],q[2];
h q[2];
h q[9];
cx q[2],q[9];
h q[9];
h q[3];
cx q[3],q[3];
h q[3];
h q[10];
cx q[3],q[10];
h q[10];
h q[4];
cx q[4],q[4];
h q[4];
h q[11];
cx q[4],q[11];
h q[11];
h q[5];
cx q[5],q[5];
h q[5];
h q[12];
cx q[5],q[12];
h q[12];
h q[6];
cx q[6],q[6];
h q[6];
h q[13];
cx q[6],q[13];
h q[13];
h q[7];
cx q[7],q[7];
h q[7];
h q[14];
cx q[7],q[14];
h q[14];
h q[6];
cx q[6],q[6];
h q[6];
h q[13];
cx q[6],q[13];
h q[13];
h q[7];
cx q[7],q[7];
h q[7];
h q[14];
cx q[7],q[14];
h q[14];
h q[8];
cx q[8],q[8];
h q[8];
h q[15];
cx q[8],q[15];
h q[15];
h q[9];
cx q[9],q[9];
h q[9];
h q[16];
cx q[9],q[16];
h q[16];
h q[10];
cx q[10],q[10];
h q[10];
h q[17];
cx q[10],q[17];
h q[17];
h q[11];
cx q[11],q[11];
h q[11];
h q[18];
cx q[11],q[18];
h q[18];
h q[12];
cx q[12],q[12];
h q[12];
h q[19];
cx q[12],q[19];
h q[19];
h q[13];
cx q[13],q[13];
h q[13];
h q[20];
cx q[13],q[20];
h q[20];
h q[12];
cx q[12],q[12];
h q[12];
h q[19];
cx q[12],q[19];
h q[19];
h q[13];
cx q[13],q[13];
h q[13];
h q[20];
cx q[13],q[20];
h q[20];
h q[14];
cx q[14],q[14];
h q[14];
h q[21];
cx q[14],q[21];
h q[21];
h q[15];
cx q[15],q[15];
h q[15];
h q[22];
cx q[15],q[22];
h q[22];
h q[16];
cx q[16],q[16];
h q[16];
h q[23];
cx q[16],q[23];
h q[23];
h q[17];
cx q[17],q[17];
h q[17];
h q[24];
cx q[17],q[24];
h q[24];
h q[18];
cx q[18],q[18];
h q[18];
h q[25];
cx q[18],q[25];
h q[25];
h q[19];
cx q[19],q[19];
h q[19];
h q[26];
cx q[19],q[26];
h q[26];
h q[18];
cx q[18],q[18];
h q[18];
h q[25];
cx q[18],q[25];
h q[25];
h q[19];
cx q[19],q[19];
h q[19];
h q[26];
cx q[19],q[26];
h q[26];
h q[20];
cx q[20],q[20];
h q[20];
h q[27];
cx q[20],q[27];
h q[27];
h q[21];
cx q[21],q[21];
h q[21];
h q[28];
cx q[21],q[28];
h q[28];
h q[22];
cx q[22],q[22];
h q[22];
h q[29];
cx q[22],q[29];
h q[29];
h q[23];
cx q[23],q[23];
h q[23];
h q[30];
cx q[23],q[30];
h q[30];
h q[24];
cx q[24],q[24];
h q[24];
h q[31];
cx q[24],q[31];
h q[31];
h q[25];
cx q[25],q[25];
h q[25];
h q[32];
cx q[25],q[32];
h q[32];
h q[24];
cx q[24],q[24];
h q[24];
h q[31];
cx q[24],q[31];
h q[31];
h q[25];
cx q[25],q[25];
h q[25];
h q[32];
cx q[25],q[32];
h q[32];
h q[26];
cx q[26],q[26];
h q[26];
h q[33];
cx q[26],q[33];
h q[33];
h q[27];
cx q[27],q[27];
h q[27];
h q[34];
cx q[27],q[34];
h q[34];
h q[28];
cx q[28],q[28];
h q[28];
h q[35];
cx q[28],q[35];
h q[35];
h q[29];
cx q[29],q[29];
h q[29];
h q[36];
cx q[29],q[36];
h q[36];
h q[30];
cx q[30],q[30];
h q[30];
h q[37];
cx q[30],q[37];
h q[37];
h q[31];
cx q[31],q[31];
h q[31];
h q[38];
cx q[31],q[38];
h q[38];
h q[30];
cx q[30],q[30];
h q[30];
h q[37];
cx q[30],q[37];
h q[37];
h q[31];
cx q[31],q[31];
h q[31];
h q[38];
cx q[31],q[38];
h q[38];
h q[32];
cx q[32],q[32];
h q[32];
h q[39];
cx q[32],q[39];
h q[39];
h q[33];
cx q[33],q[33];
h q[33];
h q[40];
cx q[33],q[40];
h q[40];
h q[34];
cx q[34],q[34];
h q[34];
h q[41];
cx q[34],q[41];
h q[41];
h q[35];
cx q[35],q[35];
h q[35];
h q[42];
cx q[35],q[42];
h q[42];
h q[36];
cx q[36],q[36];
h q[36];
h q[43];
cx q[36],q[43];
h q[43];
h q[37];
cx q[37],q[37];
h q[37];
h q[44];
cx q[37],q[44];
h q[44];
