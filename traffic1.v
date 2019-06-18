module traffic(clk,x,light);
input clk;
input x;
output reg[3:0]light;
reg [1:0]state;
parameter s0=11, s1=00, s2=01, s3=10;
parameter black=1000, red=0100, green=0010, yellow=0001;
always@(posedge clk)

	case(state)
		s0: state=s1;
		s1: state=s2;
		s2: state=s3;
		s3: state=s1;
		default: state=x?s0:s0;
	endcase
always@(state)
	case(state)
		s0: light=black;
		s1: light=red;
		s2: light=green;
		s3: light=yellow;
	endcase

endmodule

