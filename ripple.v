`include "add.v"
module add4(s,cy4,cy_in,a,b);
input[3:0] a,b;
input cy_in;
output[3:0]s;
output cy4;
wire [2:0] cy_out;
add B0(cy_out[0],a[0],b[0],cy_in);
add B1(cy_out[1],a[1],b[1],cy_out[0]);
add B2(cy_out[2],a[2],b[2],cy_out[1]);
add B3(cy4,a[3],b[3],cy_out[2]);
endmodule




