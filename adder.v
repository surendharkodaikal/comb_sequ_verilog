module carry( carry, sum, a, b, c);
input a,b,c;
output carry, sum;
assign sum=a^b^c;
assign carry= (a&b)|(b&c)|(c&a);
endmodule