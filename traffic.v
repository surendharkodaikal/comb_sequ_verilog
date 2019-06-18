module traffic(clk,light);
input clk;
output reg[2:0] light;
parameter red=3'b100, green=3'b010, yellow=3'b001;
reg [1:0]state;
parameter s0=00, s1=01, s2=10;
always @(posedge clk)
begin
case(state)
	s0:begin
		state<=s1;
	end
	s1:begin
		state<=s2;
	end
	s2:begin
		state<=s0;
	end
	default:begin
		state<=s0;
	end

endcase
always@(state)
	case(state)
		s0: light=red;
		s1: light=green;
		s2: light yellow;
		default: red;
	endcase

end
endmodule
