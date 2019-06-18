module carry(cy_out,a,b,c);
input a,b,c;
output cy_out;
wire [2:0]t;
and g1(t[0],a,b);
and g2(t[1],b,c);
and g3(t[2],a,c);
or g4(cy_out,t[0],t[1],t[2]);
endmodule

