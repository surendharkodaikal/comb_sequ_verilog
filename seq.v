module seq(x,clk,reset,z);
input x,clk,reset;
output reg z;
parameter s0=0, s1=1, s2=2, s3=3;
reg [1:0] ps, ns;
always@(posedge clk or negedge reset)
begin 
	if(reset)
		ps<=s0;
	else
		ps<=ns;
end

always@(ps,x)
	case(ps)

		s0: begin
		        z=x?0:0;	
			ns=x?s0:s1;
			end

		s1: begin
		        z=x?0:0;	
			ns=x?s2:s1;
			end
		s2: begin
		        z=x?0:0;	
			ns=x?s3:s1;
			end
		s3: begin
		        z=x?0:1;	
			ns=x?s0:s1;
			end
		endcase
		endmodule

