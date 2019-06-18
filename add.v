`include "sum.v"
`include "carry.v"
module add(cy_out,sum, a,b,c);
input a,b,c;
output cy_out, sum;
su s1(sum,a,b,c);
carry c1(cy_out, a,b,c);
endmodule
