module fulladder(s,cout,a,b,c);
input a,b,c;
output s,cout;
wire s1,c1,c2;

xor g1(s1,a,b) , g2(s,s1,c);
and g3(c1,a,b) , g4(c2,c1,c);
or g5(cout,c1,c2);

endmodule
