`include "fulladder.v"
module adder4(s,cout,a,b,cin);
input [3:0] a,b;
input cin;
output [3:0] s;
output cout;

wire [2:0] c;

fulladder a0(s[0],c[0],a[0],b[0],cin);
fulladder a1(s[1],c[1],a[1],b[1],c[0]);
fulladder a2(s[2],c[2],a[2],b[2],c[1]);
fulladder a3(s[3],cout,a[3],b[3],c[2]);

endmodule
