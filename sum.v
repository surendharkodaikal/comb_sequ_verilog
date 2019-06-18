module su(sum,a,b,c);
input a,b,c;
output sum;
wire t;
xor x1(t,a,b);
xor x2(sum,t,c);
endmodule
