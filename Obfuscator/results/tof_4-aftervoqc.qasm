OPENQASM 2.0;
include "qelib1.inc";

qreg q[107];

h q[58];
cx q[58],q[99];
cx q[57],q[58];
h q[57];
cx q[58],q[99];
h q[99];
cx q[57],q[99];
h q[58];
cx q[99],q[71];
cx q[98],q[99];
h q[98];
cx q[99],q[71];
h q[71];
cx q[98],q[71];
h q[7];
cx q[7],q[61];
cx q[58],q[7];
h q[58];
cx q[7],q[61];
h q[61];
cx q[58],q[61];
h q[61];
h q[7];
cx q[37],q[37];
h q[37];
cx q[37],q[37];
h q[37];
cx q[98],q[7];
cx q[7],q[98];
h q[7];
cx q[98],q[7];
h q[7];
cx q[7],q[7];
h q[98];
h q[31];
cx q[31],q[7];
cx q[61],q[31];
h q[61];
cx q[31],q[7];
h q[7];
cx q[61],q[7];
h q[31];
cx q[7],q[7];
h q[7];
cx q[7],q[61];
cx q[58],q[47];
cx q[78],q[58];
cx q[58],q[47];
cx q[47],q[78];
h q[88];
cx q[88],q[70];
cx q[29],q[88];
cx q[88],q[70];
cx q[70],q[29];
cx q[61],q[37];
cx q[78],q[61];
cx q[61],q[37];
cx q[37],q[78];
cx q[61],q[7];
cx q[101],q[61];
h q[101];
cx q[61],q[7];
h q[61];
cx q[101],q[61];
cx q[99],q[97];
cx q[37],q[99];
h q[37];
cx q[99],q[97];
h q[97];
cx q[37],q[97];
h q[99];
cx q[97],q[7];
cx q[31],q[97];
cx q[97],q[7];
cx q[7],q[31];
cx q[58],q[78];
cx q[98],q[58];
h q[98];
cx q[58],q[78];
h q[78];
cx q[98],q[78];
h q[98];
h q[58];
h q[91];
cx q[91],q[31];
cx q[87],q[91];
cx q[91],q[31];
cx q[31],q[87];
cx q[97],q[97];
cx q[37],q[37];
h q[37];
h q[97];
h q[89];
cx q[89],q[98];
cx q[39],q[89];
h q[39];
cx q[89],q[98];
h q[98];
cx q[39],q[98];
cx q[39],q[99];
cx q[29],q[39];
h q[29];
cx q[39],q[99];
h q[99];
cx q[29],q[99];
cx q[101],q[87];
cx q[37],q[101];
cx q[101],q[87];
cx q[87],q[37];
h q[101];
cx q[98],q[87];
cx q[101],q[98];
h q[101];
cx q[98],q[87];
h q[87];
cx q[101],q[87];
h q[101];
cx q[87],q[70];
cx q[87],q[101];
h q[87];
cx q[87],q[70];
h q[70];
cx q[87],q[70];
h q[70];
h q[61];
cx q[61],q[106];
cx q[70],q[61];
h q[70];
cx q[61],q[106];
h q[106];
cx q[70],q[106];
h q[70];
h q[61];
h q[100];
cx q[100],q[105];
cx q[101],q[100];
h q[101];
cx q[100],q[105];
h q[105];
cx q[101],q[105];
h q[101];
h q[100];
cx q[57],q[104];
cx q[87],q[57];
cx q[57],q[104];
cx q[104],q[87];
h q[57];
cx q[71],q[103];
cx q[7],q[71];
cx q[71],q[103];
cx q[103],q[7];
h q[71];
cx q[78],q[102];
cx q[103],q[78];
cx q[78],q[102];
cx q[102],q[103];
h q[78];
cx q[105],q[102];
cx q[105],q[101];
h q[105];
cx q[105],q[102];
h q[102];
cx q[105],q[102];
h q[98];
cx q[106],q[70];
cx q[58],q[106];
h q[58];
cx q[106],q[70];
h q[106];
cx q[58],q[106];
h q[58];
cx q[29],q[31];
cx q[106],q[29];
cx q[29],q[31];
cx q[31],q[106];
h q[29];
cx q[39],q[47];
cx q[97],q[39];
h q[97];
cx q[39],q[47];
h q[47];
cx q[97],q[47];
h q[39];
cx q[102],q[31];
cx q[37],q[102];
h q[37];
cx q[102],q[31];
h q[31];
cx q[37],q[31];
h q[31];
h q[102];
cx q[47],q[58];
cx q[106],q[47];
h q[106];
cx q[47],q[58];
cx q[106],q[29];
h q[106];
cx q[106],q[29];
h q[29];
cx q[106],q[29];
cx q[29],q[106];
cx q[79],q[29];
h q[79];
cx q[29],q[106];
h q[29];
cx q[79],q[29];
cx q[47],q[31];
cx q[98],q[47];
cx q[47],q[31];
cx q[31],q[98];
h q[47];
cx q[79],q[39];
cx q[104],q[79];
cx q[79],q[39];
cx q[39],q[104];
cx q[79],q[102];
cx q[79],q[29];
h q[79];
cx q[79],q[102];
h q[102];
cx q[79],q[102];
cx q[102],q[104];
cx q[102],q[79];
h q[102];
cx q[102],q[104];
h q[104];
cx q[102],q[104];
h q[105];
cx q[105],q[39];
cx q[47],q[105];
cx q[105],q[39];
cx q[39],q[47];
cx q[37],q[47];
cx q[29],q[37];
h q[29];
cx q[37],q[47];
h q[47];
cx q[29],q[47];
h q[47];
h q[37];
cx q[104],q[98];
cx q[98],q[104];
h q[98];
cx q[104],q[98];
h q[98];
cx q[98],q[31];
h q[102];
cx q[102],q[103];
cx q[39],q[102];
h q[39];
cx q[102],q[103];
cx q[39],q[105];
h q[105];
h q[39];
cx q[104],q[79];
cx q[90],q[104];
h q[90];
cx q[104],q[79];
h q[79];
cx q[90],q[79];
h q[80];
cx q[80],q[37];
cx q[39],q[80];
h q[39];
cx q[80],q[37];
h q[37];
cx q[39],q[37];
h q[39];
cx q[104],q[39];
h q[104];
cx q[104],q[102];
h q[98];
h q[102];
cx q[98],q[105];
cx q[104],q[98];
cx q[98],q[105];
cx q[105],q[104];
h q[98];
cx q[29],q[105];
cx q[29],q[47];
h q[29];
cx q[29],q[105];
h q[105];
cx q[29],q[105];
h q[105];
cx q[91],q[96];
cx q[29],q[91];
cx q[91],q[96];
cx q[96],q[29];
h q[91];
cx q[79],q[95];
cx q[31],q[79];
h q[31];
cx q[79],q[95];
h q[95];
cx q[31],q[95];
h q[31];
h q[79];
cx q[89],q[94];
cx q[96],q[89];
cx q[89],q[94];
cx q[94],q[96];
h q[89];
cx q[88],q[93];
cx q[94],q[88];
h q[94];
cx q[88],q[93];
h q[93];
cx q[94],q[93];
h q[94];
h q[88];
h q[58];
cx q[58],q[92];
cx q[98],q[58];
cx q[58],q[92];
cx q[92],q[98];
h q[58];
cx q[95],q[47];
cx q[104],q[95];
cx q[95],q[47];
cx q[47],q[104];
h q[106];
cx q[106],q[92];
cx q[102],q[106];
h q[102];
cx q[106],q[92];
h q[92];
cx q[102],q[92];
h q[106];
cx q[93],q[47];
cx q[105],q[93];
cx q[93],q[47];
cx q[47],q[105];
cx q[92],q[98];
h q[39];
cx q[102],q[39];
h q[92];
cx q[93],q[92];
cx q[47],q[93];
cx q[93],q[92];
cx q[92],q[47];
cx q[95],q[92];
cx q[104],q[95];
cx q[95],q[92];
cx q[92],q[104];
cx q[47],q[78];
h q[47];
cx q[47],q[93];
h q[93];
h q[47];
cx q[95],q[47];
cx q[93],q[95];
h q[93];
cx q[95],q[47];
cx q[93],q[94];
cx q[93],q[92];
cx q[77],q[93];
h q[77];
cx q[93],q[92];
h q[92];
cx q[77],q[92];
cx q[92],q[98];
cx q[102],q[95];
h q[95];
h q[102];
cx q[93],q[95];
cx q[81],q[93];
h q[81];
cx q[93],q[95];
h q[95];
cx q[81],q[95];
h q[81];
h q[93];
cx q[37],q[93];
cx q[106],q[37];
h q[106];
cx q[37],q[93];
h q[93];
cx q[106],q[93];
h q[93];
cx q[106],q[47];
cx q[104],q[106];
h q[37];
cx q[106],q[47];
h q[47];
cx q[47],q[29];
h q[47];
cx q[106],q[105];
cx q[105],q[106];
h q[105];
cx q[106],q[105];
h q[105];
cx q[105],q[47];
h q[106];
cx q[90],q[106];
cx q[106],q[90];
h q[106];
cx q[90],q[106];
h q[106];
cx q[106],q[93];
cx q[47],q[29];
cx q[39],q[98];
h q[39];
h q[106];
cx q[106],q[39];
cx q[106],q[93];
h q[106];
cx q[106],q[39];
h q[39];
cx q[106],q[39];
h q[39];
h q[106];
cx q[106],q[81];
cx q[106],q[39];
h q[106];
cx q[106],q[81];
h q[81];
cx q[106],q[81];
h q[81];
h q[68];
cx q[68],q[39];
cx q[81],q[68];
h q[81];
cx q[68],q[39];
h q[39];
cx q[81],q[39];
h q[68];
cx q[39],q[102];
h q[105];
cx q[105],q[39];
h q[105];
cx q[39],q[106];
cx q[81],q[90];
h q[90];
h q[39];
cx q[95],q[102];
h q[86];
cx q[81],q[86];
h q[86];
h q[81];
h q[95];
cx q[80],q[85];
cx q[39],q[80];
h q[39];
cx q[80],q[85];
h q[85];
cx q[39],q[85];
h q[39];
h q[80];
cx q[77],q[84];
cx q[68],q[77];
cx q[77],q[84];
cx q[84],q[68];
h q[77];
cx q[97],q[83];
cx q[90],q[97];
cx q[97],q[83];
cx q[83],q[90];
h q[97];
cx q[92],q[82];
cx q[83],q[92];
cx q[92],q[82];
cx q[82],q[83];
h q[92];
h q[104];
cx q[106],q[104];
h q[106];
h q[104];
cx q[106],q[104];
cx q[85],q[39];
cx q[102],q[85];
h q[102];
cx q[85],q[39];
h q[85];
cx q[102],q[82];
h q[102];
cx q[102],q[82];
h q[82];
cx q[102],q[82];
h q[82];
h q[102];
cx q[102],q[47];
cx q[102],q[82];
h q[102];
cx q[102],q[47];
h q[47];
cx q[102],q[47];
h q[93];
cx q[82],q[93];
h q[82];
cx q[82],q[47];
h q[93];
cx q[82],q[104];
cx q[37],q[82];
h q[37];
cx q[82],q[104];
h q[104];
cx q[37],q[104];
h q[37];
h q[82];
cx q[104],q[84];
cx q[82],q[104];
cx q[104],q[84];
cx q[84],q[82];
h q[69];
cx q[69],q[84];
cx q[84],q[69];
h q[84];
cx q[69],q[84];
h q[84];
cx q[84],q[82];
h q[69];
cx q[47],q[86];
cx q[84],q[47];
h q[84];
cx q[47],q[86];
h q[86];
cx q[84],q[86];
h q[86];
h q[47];
h q[8];
cx q[8],q[47];
cx q[86],q[8];
h q[86];
cx q[8],q[47];
h q[47];
cx q[86],q[47];
h q[86];
h q[8];
cx q[47],q[102];
h q[60];
cx q[60],q[85];
cx q[93],q[60];
h q[93];
cx q[60],q[85];
h q[85];
cx q[93],q[85];
h q[60];
cx q[106],q[82];
cx q[82],q[106];
h q[82];
cx q[106],q[82];
h q[82];
h q[106];
cx q[85],q[105];
cx q[82],q[85];
h q[82];
cx q[85],q[105];
h q[105];
cx q[82],q[105];
h q[85];
cx q[105],q[86];
cx q[60],q[105];
cx q[105],q[86];
cx q[86],q[60];
h q[105];
h q[59];
cx q[59],q[105];
cx q[67],q[59];
h q[67];
cx q[59],q[105];
h q[105];
cx q[67],q[105];
h q[67];
cx q[82],q[106];
cx q[8],q[82];
h q[8];
cx q[82],q[106];
h q[106];
cx q[8],q[106];
cx q[8],q[67];
cx q[69],q[8];
h q[69];
cx q[8],q[67];
h q[67];
cx q[69],q[67];
h q[69];
h q[9];
cx q[9],q[60];
cx q[18],q[9];
h q[18];
h q[8];
cx q[9],q[60];
h q[60];
cx q[18],q[60];
h q[18];
h q[9];
cx q[59],q[18];
cx q[9],q[59];
h q[9];
cx q[59],q[18];
h q[18];
cx q[9],q[18];
h q[9];
h q[59];
cx q[104],q[85];
cx q[69],q[104];
cx q[104],q[85];
cx q[85],q[69];
h q[104];
cx q[84],q[76];
cx q[69],q[84];
h q[69];
cx q[84],q[76];
h q[76];
cx q[69],q[76];
h q[69];
h q[84];
cx q[99],q[75];
cx q[59],q[99];
h q[59];
cx q[99],q[75];
h q[75];
cx q[59],q[75];
h q[59];
h q[99];
cx q[67],q[74];
cx q[9],q[67];
cx q[67],q[74];
cx q[74],q[9];
h q[67];
cx q[47],q[86];
h q[73];
cx q[82],q[73];
h q[73];
h q[47];
cx q[105],q[72];
cx q[85],q[105];
cx q[105],q[72];
cx q[72],q[85];
h q[105];
cx q[60],q[74];
cx q[72],q[60];
h q[72];
cx q[60],q[74];
h q[74];
cx q[72],q[74];
cx q[74],q[9];
h q[72];
cx q[72],q[74];
cx q[74],q[72];
cx q[8],q[74];
h q[8];
cx q[74],q[72];
h q[74];
cx q[8],q[74];
h q[74];
cx q[74],q[72];
h q[102];
cx q[8],q[102];
h q[8];
h q[74];
cx q[104],q[39];
h q[104];
cx q[104],q[76];
h q[104];
h q[102];
h q[86];
cx q[86],q[73];
cx q[10],q[86];
h q[10];
cx q[86],q[73];
h q[73];
cx q[10],q[73];
h q[86];
cx q[75],q[102];
cx q[72],q[75];
cx q[75],q[102];
cx q[102],q[72];
cx q[106],q[72];
cx q[102],q[106];
h q[102];
cx q[106],q[72];
cx q[102],q[74];
h q[76];
h q[102];
cx q[102],q[74];
h q[74];
cx q[102],q[74];
h q[74];
cx q[60],q[37];
cx q[37],q[60];
h q[37];
cx q[60],q[37];
h q[37];
cx q[37],q[104];
h q[60];
h q[41];
cx q[41],q[104];
cx q[74],q[41];
h q[74];
cx q[41],q[104];
h q[104];
cx q[74],q[104];
h q[104];
h q[41];
cx q[93],q[8];
cx q[104],q[93];
h q[104];
cx q[93],q[8];
h q[8];
cx q[104],q[8];
h q[104];
cx q[72],q[93];
cx q[93],q[72];
cx q[8],q[104];
cx q[8],q[102];
h q[104];
cx q[8],q[104];
cx q[18],q[72];
cx q[49],q[18];
h q[49];
cx q[18],q[72];
h q[72];
cx q[49],q[72];
h q[49];
cx q[106],q[76];
cx q[41],q[106];
h q[41];
h q[104];
cx q[106],q[76];
h q[76];
cx q[41],q[76];
h q[41];
h q[106];
cx q[60],q[86];
h q[60];
cx q[60],q[86];
cx q[18],q[104];
cx q[106],q[18];
cx q[18],q[104];
cx q[105],q[39];
h q[18];
h q[60];
cx q[93],q[94];
h q[93];
cx q[76],q[69];
cx q[60],q[76];
h q[60];
cx q[76],q[69];
h q[104];
cx q[60],q[104];
h q[104];
h q[37];
cx q[37],q[66];
cx q[93],q[37];
cx q[37],q[66];
cx q[66],q[93];
h q[86];
cx q[86],q[47];
h q[65];
cx q[60],q[65];
h q[60];
h q[86];
cx q[75],q[64];
cx q[104],q[75];
cx q[75],q[64];
cx q[64],q[104];
h q[75];
cx q[82],q[73];
h q[63];
cx q[73],q[63];
h q[63];
h q[73];
h q[10];
cx q[74],q[62];
cx q[18],q[74];
h q[18];
cx q[74],q[62];
h q[62];
cx q[18],q[62];
h q[18];
h q[74];
cx q[65],q[64];
cx q[66],q[65];
cx q[65],q[64];
cx q[64],q[66];
h q[65];
cx q[76],q[49];
cx q[64],q[76];
cx q[76],q[49];
cx q[49],q[64];
h q[76];
h q[102];
cx q[102],q[49];
cx q[49],q[102];
h q[49];
cx q[102],q[49];
h q[49];
cx q[49],q[64];
h q[49];
cx q[66],q[49];
h q[66];
cx q[66],q[72];
h q[49];
h q[48];
cx q[48],q[49];
cx q[65],q[48];
h q[65];
cx q[48],q[49];
h q[49];
cx q[65],q[49];
h q[49];
cx q[62],q[106];
cx q[64],q[62];
cx q[62],q[106];
cx q[106],q[64];
h q[62];
cx q[65],q[62];
cx q[65],q[49];
h q[65];
cx q[65],q[62];
h q[62];
cx q[65],q[62];
h q[62];
cx q[72],q[62];
cx q[76],q[72];
cx q[72],q[62];
cx q[62],q[76];
cx q[48],q[76];
cx q[51],q[48];
cx q[48],q[76];
cx q[76],q[51];
h q[48];
cx q[66],q[65];
cx q[48],q[66];
h q[48];
cx q[66],q[65];
h q[65];
cx q[48],q[65];
h q[48];
h q[66];
h q[49];
cx q[48],q[49];
h q[48];
cx q[48],q[72];
h q[48];
cx q[72],q[64];
cx q[41],q[72];
h q[41];
cx q[72],q[64];
h q[64];
cx q[41],q[64];
cx q[41],q[62];
cx q[66],q[41];
h q[66];
cx q[41],q[62];
h q[72];
h q[62];
cx q[66],q[62];
h q[66];
h q[41];
cx q[49],q[51];
cx q[51],q[49];
h q[51];
cx q[49],q[51];
h q[51];
cx q[51],q[76];
h q[51];
cx q[51],q[106];
cx q[48],q[51];
h q[48];
cx q[51],q[106];
h q[106];
cx q[48],q[106];
h q[51];
h q[48];
h q[38];
cx q[38],q[63];
cx q[66],q[38];
h q[66];
cx q[38],q[63];
h q[63];
cx q[66],q[63];
cx q[49],q[51];
cx q[41],q[49];
cx q[49],q[51];
cx q[51],q[41];
cx q[38],q[41];
cx q[41],q[38];
h q[41];
cx q[38],q[41];
h q[41];
cx q[41],q[51];
h q[38];
h q[21];
cx q[21],q[72];
cx q[72],q[21];
h q[72];
cx q[21],q[72];
h q[72];
cx q[72],q[48];
h q[49];
cx q[106],q[49];
cx q[72],q[106];
h q[72];
cx q[106],q[49];
cx q[72],q[93];
cx q[50],q[106];
h q[50];
cx q[50],q[64];
h q[50];
h q[106];
h q[76];
cx q[76],q[56];
cx q[38],q[76];
cx q[76],q[56];
cx q[56],q[38];
h q[76];
cx q[64],q[104];
h q[55];
cx q[66],q[55];
h q[55];
h q[66];
h q[64];
cx q[62],q[54];
cx q[106],q[62];
cx q[62],q[54];
cx q[54],q[106];
h q[62];
cx q[65],q[53];
cx q[54],q[65];
cx q[65],q[53];
cx q[53],q[54];
h q[65];
cx q[102],q[52];
cx q[41],q[102];
h q[41];
cx q[102],q[52];
h q[52];
cx q[41],q[52];
h q[41];
h q[102];
t q[102];
cx q[52],q[55];
cx q[52],q[41];
h q[52];
cx q[52],q[55];
h q[55];
cx q[52],q[55];
h q[55];
h q[27];
cx q[27],q[55];
cx q[48],q[27];
cx q[27],q[55];
cx q[55],q[48];
h q[27];
cx q[72],q[66];
h q[72];
cx q[72],q[93];
cx q[21],q[48];
cx q[21],q[21];
h q[21];
cx q[21],q[48];
h q[48];
cx q[21],q[48];
h q[48];
h q[49];
cx q[49],q[21];
cx q[28],q[49];
cx q[49],q[21];
cx q[21],q[28];
cx q[49],q[28];
cx q[28],q[49];
h q[28];
cx q[49],q[28];
h q[28];
cx q[28],q[21];
h q[49];
cx q[63],q[53];
cx q[28],q[63];
h q[28];
cx q[63],q[53];
h q[53];
cx q[28],q[53];
h q[28];
h q[30];
cx q[30],q[49];
cx q[48],q[30];
cx q[30],q[49];
cx q[49],q[48];
h q[30];
h q[52];
cx q[52],q[72];
cx q[52],q[55];
h q[52];
cx q[52],q[72];
h q[72];
cx q[52],q[72];
cx q[53],q[50];
cx q[49],q[53];
h q[49];
cx q[53],q[50];
h q[50];
cx q[49],q[50];
h q[53];
cx q[50],q[51];
cx q[28],q[50];
cx q[50],q[51];
cx q[51],q[28];
cx q[50],q[51];
cx q[53],q[50];
h q[53];
cx q[50],q[51];
h q[51];
cx q[53],q[51];
h q[53];
cx q[51],q[55];
cx q[27],q[51];
h q[27];
cx q[51],q[55];
h q[55];
cx q[27],q[55];
h q[27];
h q[51];
cx q[50],q[56];
cx q[48],q[50];
h q[48];
cx q[50],q[56];
h q[56];
cx q[48],q[56];
h q[48];
cx q[8],q[51];
cx q[40],q[8];
h q[40];
cx q[8],q[51];
h q[51];
cx q[40],q[51];
h q[8];
cx q[50],q[64];
cx q[49],q[56];
h q[50];
cx q[40],q[53];
cx q[27],q[40];
h q[27];
cx q[40],q[53];
h q[53];
cx q[27],q[53];
h q[27];
h q[40];
h q[3];
cx q[3],q[50];
cx q[48],q[3];
h q[48];
cx q[3],q[50];
h q[50];
cx q[48],q[50];
cx q[72],q[66];
cx q[55],q[52];
h q[55];
h q[56];
cx q[48],q[40];
h q[72];
cx q[30],q[48];
cx q[48],q[40];
cx q[40],q[30];
h q[48];
cx q[49],q[30];
cx q[28],q[49];
h q[28];
cx q[49],q[30];
h q[30];
cx q[28],q[30];
cx q[63],q[46];
cx q[48],q[63];
cx q[63],q[46];
cx q[46],q[48];
h q[63];
cx q[51],q[45];
cx q[55],q[51];
h q[55];
cx q[51],q[45];
h q[45];
cx q[55],q[45];
h q[55];
h q[51];
cx q[53],q[54];
h q[44];
cx q[28],q[44];
h q[44];
h q[28];
h q[53];
cx q[50],q[43];
cx q[44],q[50];
cx q[50],q[43];
cx q[43],q[44];
h q[50];
cx q[30],q[42];
cx q[27],q[30];
cx q[30],q[42];
cx q[42],q[27];
h q[30];
cx q[3],q[43];
cx q[52],q[3];
h q[52];
cx q[3],q[43];
h q[43];
cx q[52],q[43];
h q[52];
cx q[49],q[42];
h q[3];
cx q[52],q[49];
h q[52];
cx q[49],q[42];
h q[42];
cx q[52],q[42];
h q[42];
h q[49];
cx q[52],q[46];
cx q[52],q[42];
h q[52];
cx q[52],q[46];
h q[46];
cx q[52],q[46];
h q[11];
cx q[11],q[56];
cx q[3],q[11];
h q[3];
cx q[11],q[56];
h q[56];
cx q[3],q[56];
cx q[43],q[44];
h q[52];
cx q[52],q[45];
h q[45];
h q[52];
h q[43];
h q[5];
cx q[5],q[42];
cx q[49],q[5];
h q[49];
cx q[5],q[42];
h q[42];
cx q[49],q[42];
h q[5];
cx q[42],q[52];
cx q[40],q[42];
h q[40];
cx q[42],q[52];
cx q[40],q[49];
h q[40];
h q[42];
cx q[56],q[40];
cx q[45],q[56];
h q[45];
cx q[56],q[40];
h q[40];
cx q[45],q[40];
h q[40];
h q[56];
h q[46];
cx q[3],q[72];
cx q[46],q[3];
cx q[3],q[72];
cx q[72],q[46];
h q[3];
cx q[11],q[40];
cx q[11],q[11];
h q[11];
cx q[11],q[40];
h q[40];
cx q[11],q[40];
cx q[72],q[93];
cx q[49],q[65];
h q[49];
h q[1];
cx q[1],q[21];
cx q[3],q[1];
h q[3];
cx q[1],q[21];
h q[21];
cx q[3],q[21];
cx q[45],q[8];
cx q[5],q[45];
h q[1];
h q[40];
h q[5];
cx q[45],q[8];
h q[8];
cx q[5],q[8];
h q[5];
h q[45];
cx q[8],q[49];
cx q[45],q[8];
h q[45];
cx q[8],q[49];
h q[49];
cx q[45],q[49];
h q[49];
h q[8];
cx q[45],q[49];
cx q[5],q[45];
h q[5];
cx q[45],q[49];
h q[45];
cx q[5],q[45];
h q[6];
cx q[6],q[42];
cx q[56],q[6];
cx q[6],q[42];
cx q[42],q[56];
h q[6];
h q[17];
cx q[17],q[56];
cx q[46],q[17];
h q[46];
cx q[17],q[56];
h q[56];
cx q[46],q[56];
cx q[21],q[36];
cx q[6],q[21];
cx q[21],q[36];
cx q[36],q[6];
h q[21];
h q[72];
cx q[72],q[52];
h q[35];
cx q[46],q[35];
h q[35];
h q[46];
h q[72];
h q[45];
h q[56];
cx q[45],q[49];
h q[34];
cx q[5],q[34];
h q[5];
h q[45];
cx q[3],q[33];
cx q[43],q[3];
h q[43];
cx q[3],q[33];
h q[33];
cx q[43],q[33];
s q[43];
h q[43];
t q[43];
h q[3];
h q[11];
cx q[11],q[32];
cx q[35],q[11];
cx q[11],q[32];
cx q[32],q[35];
h q[11];
h q[4];
cx q[4],q[52];
cx q[1],q[4];
cx q[4],q[52];
cx q[52],q[1];
h q[4];
h q[2];
h q[34];
cx q[2],q[40];
cx q[32],q[2];
h q[32];
cx q[2],q[40];
h q[40];
cx q[32],q[40];
h q[40];
cx q[33],q[40];
cx q[1],q[33];
h q[1];
cx q[33],q[40];
h q[40];
cx q[1],q[40];
h q[33];
h q[20];
cx q[20],q[52];
cx q[56],q[20];
cx q[20],q[52];
cx q[52],q[56];
h q[2];
h q[1];
h q[19];
cx q[19],q[42];
cx q[1],q[19];
h q[1];
cx q[19],q[42];
h q[42];
cx q[1],q[42];
h q[1];
h q[0];
cx q[0],q[49];
cx q[36],q[0];
h q[36];
cx q[0],q[49];
h q[49];
cx q[36],q[49];
cx q[40],q[26];
cx q[4],q[40];
cx q[40],q[26];
cx q[26],q[4];
h q[40];
cx q[20],q[25];
cx q[34],q[20];
h q[34];
cx q[20],q[25];
h q[25];
cx q[34],q[25];
h q[34];
h q[20];
cx q[19],q[24];
cx q[2],q[19];
cx q[19],q[24];
cx q[24],q[2];
h q[19];
cx q[42],q[52];
h q[23];
cx q[49],q[23];
h q[49];
h q[42];
cx q[17],q[22];
cx q[33],q[17];
h q[33];
cx q[17],q[22];
h q[22];
cx q[33],q[22];
h q[33];
h q[17];
cx q[32],q[16];
cx q[56],q[32];
h q[0];
cx q[32],q[16];
cx q[16],q[56];
h q[32];
h q[52];
cx q[52],q[15];
cx q[8],q[52];
h q[8];
cx q[52],q[15];
h q[15];
cx q[8],q[15];
h q[8];
sdg q[52];
h q[52];
t q[52];
z q[52];
cx q[25],q[14];
cx q[1],q[25];
cx q[25],q[14];
cx q[14],q[1];
h q[25];
cx q[22],q[13];
cx q[26],q[22];
h q[26];
cx q[22],q[13];
h q[13];
cx q[26],q[13];
sdg q[22];
h q[22];
z q[22];
cx q[36],q[12];
cx q[24],q[36];
cx q[36],q[12];
cx q[12],q[24];
h q[26];
cx q[16],q[13];
tdg q[13];
cx q[0],q[13];
t q[13];
cx q[16],q[13];
tdg q[13];
cx q[0],q[13];
cx q[0],q[16];
t q[13];
h q[13];
cx q[13],q[15];
tdg q[15];
cx q[12],q[15];
t q[15];
cx q[13],q[15];
tdg q[15];
cx q[12],q[15];
cx q[12],q[13];
t q[15];
h q[15];
cx q[15],q[23];
tdg q[23];
cx q[14],q[23];
t q[23];
cx q[15],q[23];
tdg q[23];
cx q[14],q[23];
cx q[14],q[15];
tdg q[15];
cx q[14],q[15];
t q[14];
t q[15];
t q[23];
h q[15];
t q[36];
z q[36];
h q[36];
t q[36];
z q[36];
h q[22];
tdg q[22];
h q[22];
h q[36];
t q[36];
t q[22];
s q[22];
h q[36];
tdg q[36];
h q[36];
t q[36];
z q[36];
h q[22];
t q[22];
h q[36];
t q[36];
s q[36];
t q[23];
s q[23];
h q[23];
h q[22];
t q[22];
h q[22];
t q[22];
h q[22];
t q[22];
s q[22];
h q[36];
h q[22];
t q[23];
z q[23];
h q[23];
t q[23];
s q[23];
t q[36];
z q[36];
h q[23];
tdg q[23];
t q[22];
h q[23];
h q[22];
t q[22];
s q[22];
h q[22];
t q[22];
z q[22];
h q[22];
t q[22];
h q[36];
t q[36];
s q[23];
h q[23];
t q[23];
h q[23];
t q[23];
z q[23];
h q[36];
h q[23];
t q[36];
z q[36];
h q[36];
t q[36];
h q[36];
t q[36];
h q[36];
z q[36];
h q[36];
t q[23];
s q[23];
h q[23];
t q[23];
z q[23];
h q[22];
tdg q[22];
h q[23];
t q[23];
h q[22];
tdg q[22];
t q[36];
z q[36];
h q[36];
tdg q[36];
h q[36];
t q[36];
z q[36];
h q[23];
z q[23];
h q[22];
z q[22];
h q[22];
t q[22];
z q[22];
h q[36];
h q[22];
t q[22];
h q[22];
t q[22];
s q[22];
s q[36];
h q[36];
t q[36];
h q[23];
tdg q[23];
h q[22];
t q[22];
s q[22];
h q[23];
t q[23];
s q[23];
h q[23];
h q[36];
z q[36];
t q[23];
s q[23];
tdg q[22];
h q[23];
t q[23];
h q[36];
t q[36];
h q[22];
t q[22];
z q[22];
h q[23];
h q[36];
t q[23];
s q[23];
t q[36];
h q[36];
h q[23];
tdg q[23];
t q[36];
s q[36];
h q[23];
t q[23];
h q[22];
h q[36];
t q[36];
s q[36];
h q[23];
t q[23];
h q[36];
z q[36];
h q[36];
t q[36];
s q[36];
tdg q[22];
h q[22];
t q[22];
s q[22];
h q[36];
tdg q[36];
h q[36];
z q[36];
h q[23];
z q[23];
h q[22];
t q[22];
h q[22];
z q[22];
h q[22];
t q[22];
z q[22];
h q[22];
t q[22];
h q[23];
t q[23];
z q[23];
h q[23];
tdg q[23];
sdg q[36];
h q[36];
t q[36];
s q[36];
h q[23];
tdg q[23];
h q[22];
z q[22];
h q[23];
t q[23];
z q[23];
h q[36];
h q[22];
t q[22];
s q[22];
t q[36];
h q[36];
h q[23];
t q[23];
s q[23];
h q[23];
z q[23];
t q[36];
z q[36];
h q[36];
tdg q[36];
h q[36];
t q[36];
s q[36];
h q[23];
t q[23];
z q[23];
h q[23];
t q[23];
z q[23];
h q[23];
z q[23];
h q[23];
t q[23];
z q[23];
h q[23];
t q[23];
h q[36];
h q[22];
t q[22];
h q[22];
t q[22];
z q[22];
h q[23];
tdg q[36];
t q[23];
z q[23];
h q[22];
h q[23];
h q[36];
t q[22];
z q[22];
t q[36];
s q[36];
h q[22];
t q[22];
z q[22];
t q[23];
s q[23];
h q[23];
t q[23];
s q[23];
h q[22];
t q[22];
z q[22];
h q[22];
s q[22];
h q[36];
sdg q[16];
cx q[0],q[16];
sdg q[13];
cx q[12],q[13];
cx q[13],q[15];
tdg q[15];
cx q[12],q[15];
t q[15];
cx q[13],q[15];
tdg q[15];
cx q[12],q[15];
s q[13];
s q[12];
t q[15];
h q[15];
h q[13];
cx q[16],q[13];
tdg q[13];
cx q[0],q[13];
t q[13];
cx q[16],q[13];
tdg q[13];
cx q[0],q[13];
s q[16];
rz15(6152) q[0];
t q[13];
h q[13];
h q[0];
t q[0];
s q[0];
h q[0];
t q[0];
h q[0];
tdg q[0];
h q[0];
tdg q[0];
h q[0];
z q[0];
h q[0];
z q[0];
h q[0];
z q[0];
h q[0];
t q[0];
z q[0];
h q[0];
t q[0];
z q[0];
h q[0];
s q[0];
h q[0];
t q[0];
h q[0];
t q[0];
s q[0];
h q[0];
t q[0];
h q[0];
t q[0];
s q[0];
h q[0];
t q[0];
s q[0];
h q[0];
t q[0];
h q[0];
t q[0];
s q[0];
h q[0];
tdg q[0];
h q[0];
tdg q[0];
h q[0];
t q[0];
z q[0];
h q[0];
t q[0];
h q[0];
t q[0];
h q[0];
t q[0];
s q[0];
h q[0];
t q[0];
h q[0];
t q[0];
z q[0];
h q[0];
sdg q[0];
h q[0];
t q[0];
z q[0];
h q[0];
t q[0];
h q[0];
t q[0];
z q[0];
h q[0];
tdg q[0];
h q[0];
tdg q[0];
h q[0];
tdg q[0];
h q[0];
t q[0];
z q[0];
h q[0];
t q[0];
s q[0];
h q[0];
t q[0];
h q[0];
tdg q[0];
h q[0];
tdg q[0];
h q[0];
tdg q[0];
h q[0];
t q[0];
s q[0];
h q[0];
tdg q[0];
h q[0];
t q[0];
t q[36];
tdg q[42];
t q[45];
h q[42];
tdg q[42];
h q[42];
tdg q[42];
h q[42];
t q[42];
h q[43];
tdg q[43];
h q[52];
t q[52];
h q[52];
h q[42];
h q[45];
t q[45];
h q[45];
z q[52];
h q[52];
t q[52];
z q[52];
t q[42];
s q[42];
h q[42];
t q[42];
t q[45];
s q[45];
h q[43];
t q[43];
s q[43];
h q[43];
tdg q[43];
h q[43];
t q[43];
s q[43];
h q[42];
h q[52];
t q[52];
s q[52];
h q[52];
t q[52];
s q[52];
t q[42];
z q[42];
h q[52];
z q[52];
h q[42];
t q[42];
s q[42];
h q[42];
tdg q[42];
h q[52];
tdg q[52];
h q[52];
t q[52];
z q[52];
h q[43];
t q[43];
h q[43];
h q[52];
t q[52];
t q[45];
h q[52];
t q[52];
s q[52];
h q[45];
tdg q[43];
t q[45];
h q[45];
tdg q[45];
h q[45];
h q[42];
tdg q[42];
h q[43];
t q[43];
t q[45];
h q[43];
h q[42];
h q[52];
t q[52];
z q[52];
z q[42];
h q[42];
tdg q[42];
h q[42];
t q[42];
h q[42];
t q[42];
s q[42];
h q[42];
t q[43];
h q[52];
h q[43];
z q[43];
z q[52];
h q[52];
t q[52];
s q[52];
h q[52];
tdg q[42];
h q[42];
t q[42];
h q[42];
tdg q[52];
h q[52];
z q[45];
tdg q[42];
h q[45];
z q[45];
h q[42];
z q[52];
h q[52];
h q[43];
tdg q[43];
t q[52];
z q[52];
h q[52];
t q[52];
h q[52];
h q[45];
t q[42];
h q[42];
t q[42];
h q[42];
h q[43];
tdg q[42];
h q[42];
t q[42];
z q[42];
h q[42];
t q[42];
t q[43];
z q[45];
h q[45];
tdg q[45];
h q[43];
tdg q[43];
h q[43];
z q[43];
h q[43];
t q[43];
s q[43];
h q[42];
tdg q[42];
h q[43];
h q[45];
tdg q[45];
h q[45];
tdg q[43];
t q[52];
z q[52];
h q[52];
t q[52];
s q[52];
h q[43];
t q[45];
s q[45];
tdg q[43];
h q[45];
t q[45];
s q[45];
h q[43];
t q[43];
s q[43];
h q[52];
z q[52];
h q[52];
h q[43];
t q[43];
h q[42];
t q[42];
s q[42];
h q[42];
h q[45];
t q[52];
h q[52];
t q[45];
z q[45];
h q[45];
t q[45];
z q[45];
t q[42];
s q[42];
h q[42];
t q[42];
s q[42];
tdg q[52];
h q[42];
t q[42];
z q[42];
h q[45];
t q[45];
s q[45];
h q[42];
t q[42];
z q[42];
h q[52];
t q[52];
z q[52];
h q[42];
h q[52];
t q[52];
z q[52];
h q[52];
t q[52];
z q[52];
h q[45];
z q[45];
h q[43];
t q[43];
z q[43];
t q[42];
h q[42];
t q[42];
h q[52];
tdg q[52];
h q[45];
h q[43];
h q[52];
t q[52];
tdg q[43];
h q[42];
t q[42];
h q[43];
tdg q[43];
t q[45];
z q[45];
h q[45];
h q[43];
h q[52];
t q[52];
s q[52];
t q[43];
h q[43];
h q[52];
t q[45];
z q[45];
h q[45];
t q[45];
s q[45];
tdg q[43];
h q[43];
z q[43];
h q[43];
h q[45];
t q[52];
z q[52];
h q[52];
t q[52];
z q[52];
h q[42];
h q[52];
t q[42];
s q[42];
t q[43];
h q[43];
tdg q[52];
z q[45];
h q[45];
t q[66];
h q[66];
tdg q[66];
h q[66];
t q[66];
h q[66];
tdg q[66];
h q[66];
t q[66];
h q[66];
t q[66];
s q[66];
h q[66];
t q[66];
h q[66];
t q[66];
z q[66];
h q[66];
t q[66];
z q[66];
h q[66];
t q[66];
h q[66];
t q[66];
z q[66];
h q[66];
tdg q[66];
h q[66];
t q[66];
h q[66];
t q[66];
z q[66];
h q[66];
t q[66];
z q[66];
h q[66];
t q[66];
h q[66];
tdg q[66];
h q[66];
t q[66];
s q[66];
h q[66];
t q[66];
z q[66];
h q[66];
t q[66];
s q[66];
h q[66];
t q[66];
h q[66];
tdg q[66];
h q[66];
z q[66];
h q[66];
t q[66];
h q[66];
t q[66];
h q[66];
t q[66];
s q[66];
h q[66];
z q[66];
h q[66];
t q[66];
h q[66];
t q[66];
s q[66];
h q[66];
t q[66];
h q[66];
z q[66];
h q[66];
tdg q[66];
h q[66];
z q[66];
h q[66];
t q[66];
s q[66];
h q[66];
t q[66];
s q[66];
h q[66];
t q[66];
s q[66];
h q[66];
t q[66];
s q[66];
h q[66];
t q[66];
z q[66];
h q[66];
z q[66];
t q[66];
s q[66];
h q[66];
t q[66];
z q[66];
h q[66];
z q[66];
h q[66];
tdg q[66];
h q[66];
t q[66];
z q[66];
h q[66];
tdg q[66];
h q[66];
z q[66];
h q[66];
tdg q[66];
h q[66];
tdg q[66];
h q[66];
t q[66];
h q[66];
t q[66];
h q[66];
t q[66];
h q[66];
t q[66];
s q[66];
t q[66];
s q[66];
h q[66];
t q[66];
s q[66];
h q[66];
t q[66];
h q[66];
t q[66];
z q[66];
h q[66];
t q[66];
z q[66];
h q[66];
z q[66];
h q[66];
tdg q[66];
h q[66];
tdg q[66];
h q[66];
tdg q[66];
h q[66];
t q[66];
h q[66];
t q[66];
h q[66];
t q[66];
s q[66];
h q[66];
tdg q[66];
h q[66];
t q[66];
s q[66];
h q[66];
t q[66];
h q[66];
t q[66];
h q[66];
t q[66];
h q[66];
tdg q[66];
h q[66];
t q[66];
h q[66];
t q[66];
h q[66];
t q[66];
z q[66];
h q[66];
t q[66];
z q[66];
h q[66];
t q[66];
z q[66];
h q[66];
t q[66];
z q[66];
h q[66];
t q[66];
z q[66];
h q[66];
z q[66];
h q[66];
t q[66];
z q[66];
h q[66];
z q[66];
h q[66];
z q[66];
h q[66];
t q[66];
s q[66];
h q[66];
z q[66];
h q[66];
z q[66];
h q[66];
tdg q[66];
h q[66];
t q[66];
s q[66];
h q[66];
t q[66];
z q[66];
h q[66];
z q[66];
h q[66];
t q[66];
s q[66];
h q[66];
t q[66];
z q[66];
h q[66];
t q[66];
s q[66];
h q[66];
z q[66];
h q[66];
t q[66];
h q[66];
t q[66];
h q[66];
t q[66];
h q[66];
tdg q[66];
h q[66];
t q[66];
z q[66];
h q[66];
t q[66];
z q[66];
h q[66];
s q[66];
h q[66];
t q[66];
z q[66];
h q[66];
t q[66];
s q[66];
h q[66];
tdg q[66];
h q[66];
sdg q[66];
h q[66];
s q[66];
h q[66];
t q[66];
s q[66];
h q[66];
tdg q[66];
h q[66];
t q[66];
h q[66];
t q[66];
s q[66];
h q[66];
t q[66];
h q[66];
tdg q[66];
h q[66];
t q[66];
h q[66];
t q[66];
h q[66];
t q[66];
z q[66];
h q[66];
z q[66];
h q[66];
t q[66];
h q[66];
t q[66];
s q[66];
h q[66];
t q[66];
h q[66];
t q[66];
s q[66];
h q[66];
t q[66];
s q[66];
h q[66];
tdg q[66];
h q[66];
t q[66];
h q[66];
tdg q[66];
h q[66];
t q[66];
z q[66];
h q[66];
s q[66];
h q[66];
t q[66];
z q[66];
h q[66];
tdg q[66];
h q[66];
t q[66];
h q[66];
t q[66];
z q[66];
h q[66];
tdg q[66];
h q[66];
t q[66];
z q[66];
s q[82];
h q[82];
sdg q[93];
h q[93];
t q[93];
z q[93];
tdg q[82];
tdg q[37];
h q[82];
s q[82];
h q[37];
tdg q[37];
h q[93];
t q[93];
z q[93];
h q[102];
t q[102];
s q[102];
h q[93];
h q[37];
t q[93];
z q[93];
h q[82];
t q[82];
t q[37];
h q[37];
h q[82];
h q[102];
z q[102];
t q[82];
h q[82];
t q[82];
s q[82];
t q[37];
s q[37];
h q[82];
t q[82];
h q[37];
t q[37];
z q[37];
h q[37];
t q[37];
h q[93];
t q[93];
s q[93];
h q[93];
h q[102];
tdg q[102];
h q[102];
z q[102];
s q[82];
t q[93];
h q[82];
t q[82];
h q[93];
h q[102];
tdg q[102];
t q[93];
h q[93];
z q[93];
h q[102];
z q[102];
h q[102];
h q[93];
tdg q[93];
h q[93];
t q[93];
h q[93];
t q[102];
h q[102];
tdg q[93];
h q[93];
tdg q[93];
h q[37];
tdg q[37];
h q[37];
t q[37];
z q[37];
t q[102];
h q[93];
t q[93];
h q[93];
h q[102];
tdg q[102];
t q[93];
z q[93];
h q[93];
tdg q[93];
h q[93];
t q[93];
s q[93];
h q[93];
t q[82];
t q[93];
h q[93];
tdg q[93];
h q[37];
t q[37];
h q[102];
h q[82];
h q[93];
t q[82];
h q[82];
t q[102];
h q[102];
tdg q[102];
h q[102];
t q[102];
h q[37];
t q[37];
z q[37];
h q[102];
t q[102];
z q[102];
h q[37];
t q[93];
s q[93];
h q[93];
t q[37];
h q[37];
t q[93];
z q[93];
tdg q[82];
h q[82];
t q[82];
h q[82];
h q[93];
t q[93];
t q[82];
z q[82];
t q[37];
s q[37];
h q[37];
s q[37];
h q[93];
h q[102];
tdg q[102];
h q[82];
t q[93];
s q[93];
tdg q[82];
h q[82];
h q[102];
t q[102];
z q[102];
h q[93];
tdg q[93];
h q[93];
t q[82];
h q[82];
z q[82];
h q[82];
h q[102];
t q[82];
s q[82];
h q[82];
t q[93];
h q[93];
t q[82];
z q[93];
h q[93];
h q[82];
t q[82];
s q[82];
h q[82];
t q[93];
z q[93];
z q[82];
h q[37];
h q[93];
sdg q[102];
h q[102];
t q[102];
h q[82];
z q[37];
h q[37];
t q[37];
s q[37];
t q[82];
z q[82];
h q[82];
t q[82];
z q[82];
h q[37];
t q[37];
h q[37];
h q[82];
tdg q[37];
h q[37];
t q[37];
z q[37];
z q[82];
h q[82];
h q[37];
tdg q[37];
h q[37];
tdg q[82];
t q[37];
s q[37];
h q[82];
t q[93];
h q[93];
t q[93];
z q[93];
h q[93];
t q[93];
h q[37];
t q[37];
t q[82];
h q[82];
t q[82];
s q[82];
h q[93];
t q[93];
s q[93];
h q[37];
t q[37];
h q[37];
h q[93];
tdg q[93];
h q[93];
t q[93];
s q[93];
h q[102];
t q[102];
h q[102];
t q[102];
s q[102];
h q[93];
h q[102];
t q[102];
s q[102];
t q[93];
z q[93];
h q[93];
t q[93];
z q[93];
t q[37];
h q[102];
t q[102];
z q[102];
h q[93];
h q[102];
t q[102];
h q[82];
tdg q[82];
t q[93];
s q[93];
h q[93];
t q[93];
s q[93];
h q[82];
t q[82];
h q[82];
t q[82];
z q[82];
h q[82];
h q[102];
sdg q[102];
h q[93];
t q[93];
h q[93];
t q[93];
h q[93];
sdg q[93];
h q[37];
t q[37];
s q[37];
t q[97];
s q[97];
h q[97];
z q[97];
sdg q[106];
h q[106];
s q[106];
s q[39];
h q[97];
h q[106];
t q[106];
z q[106];
t q[97];
s q[97];
t q[80];
h q[80];
z q[80];
h q[106];
t q[106];
h q[106];
t q[106];
s q[106];
h q[106];
t q[106];
h q[106];
tdg q[106];
h q[106];
t q[106];
s q[106];
h q[80];
z q[80];
h q[97];
h q[106];
tdg q[106];
t q[97];
h q[97];
tdg q[97];
h q[80];
h q[97];
tdg q[80];
h q[80];
z q[80];
h q[39];
tdg q[39];
h q[80];
h q[39];
t q[39];
tdg q[97];
h q[97];
t q[97];
z q[97];
h q[39];
t q[39];
z q[39];
h q[97];
t q[97];
h q[106];
tdg q[106];
t q[80];
h q[80];
h q[106];
t q[106];
z q[106];
h q[106];
t q[106];
z q[106];
h q[106];
t q[106];
s q[106];
t q[80];
h q[80];
t q[80];
s q[80];
h q[80];
tdg q[80];
h q[39];
tdg q[39];
h q[39];
t q[39];
h q[106];
t q[106];
s q[106];
h q[106];
t q[106];
s q[106];
h q[106];
t q[106];
s q[106];
h q[97];
h q[106];
h q[39];
z q[106];
h q[106];
t q[97];
z q[97];
h q[97];
t q[97];
tdg q[106];
h q[106];
z q[106];
s q[39];
h q[39];
t q[39];
z q[39];
h q[80];
t q[80];
z q[80];
h q[80];
t q[80];
z q[80];
h q[106];
h q[97];
t q[97];
s q[97];
tdg q[106];
h q[106];
z q[106];
h q[80];
t q[80];
s q[80];
h q[80];
t q[80];
h q[80];
z q[80];
h q[39];
t q[39];
h q[106];
h q[39];
t q[39];
z q[39];
h q[39];
sdg q[106];
h q[106];
t q[106];
h q[106];
t q[106];
s q[106];
t q[39];
z q[39];
h q[39];
t q[39];
s q[39];
z q[97];
h q[80];
h q[106];
z q[106];
h q[97];
t q[80];
z q[80];
h q[106];
h q[80];
t q[97];
h q[97];
h q[39];
t q[39];
t q[97];
s q[97];
tdg q[106];
z q[80];
h q[97];
tdg q[97];
h q[97];
h q[106];
t q[106];
h q[80];
t q[80];
z q[80];
h q[106];
tdg q[106];
t q[97];
s q[97];
h q[39];
t q[39];
z q[39];
h q[97];
z q[97];
h q[97];
t q[97];
h q[80];
t q[80];
h q[39];
t q[39];
s q[39];
h q[97];
h q[80];
h q[106];
t q[106];
z q[106];
t q[97];
h q[97];
t q[97];
s q[97];
h q[97];
h q[106];
tdg q[106];
tdg q[97];
t q[80];
s q[80];
h q[80];
t q[80];
z q[80];
h q[106];
t q[106];
z q[106];
h q[106];
tdg q[106];
h q[106];
s q[106];
h q[97];
t q[97];
z q[97];
h q[97];
z q[97];
h q[80];
t q[80];
s q[80];
h q[80];
h q[97];
t q[97];
z q[97];
h q[97];
tdg q[80];
z q[97];
h q[97];
tdg q[97];
h q[80];
t q[80];
h q[80];
t q[80];
h q[80];
t q[80];
s q[80];
h q[106];
t q[106];
z q[106];
h q[97];
t q[97];
s q[97];
h q[80];
t q[80];
h q[106];
h q[39];
z q[39];
t q[106];
s q[106];
h q[39];
h q[80];
z q[80];
h q[80];
t q[80];
z q[80];
t q[39];
s q[39];
h q[39];
z q[39];
h q[80];
t q[80];
s q[80];
h q[97];
t q[97];
h q[39];
h q[80];
tdg q[39];
h q[97];
t q[97];
s q[97];
h q[39];
t q[39];
z q[39];
h q[39];
h q[106];
t q[39];
s q[39];
t q[106];
h q[39];
h q[106];
t q[106];
h q[106];
t q[106];
h q[106];
tdg q[80];
h q[80];
z q[106];
h q[106];
t q[39];
tdg q[106];
h q[39];
h q[106];
z q[39];
z q[106];
h q[106];
t q[80];
s q[80];
h q[80];
t q[80];
h q[97];
t q[97];
s q[97];
h q[97];
tdg q[97];
h q[97];
t q[97];
h q[97];
t q[97];
s q[97];
h q[39];
h q[97];
h q[80];
t q[80];
s q[80];
t q[39];
h q[39];
sdg q[106];
h q[106];
tdg q[39];
t q[97];
s q[97];
h q[39];
t q[39];
z q[39];
h q[80];
t q[80];
z q[80];
t q[106];
