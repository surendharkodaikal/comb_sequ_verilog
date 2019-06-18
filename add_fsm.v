module add(a,b,clk,z);
input a,b,clk;
output reg z;
parameter zero=0, one=1;
reg zero_one;
always@(posedge clk)
	case(zero_one)
		zero:begin
			if({a,b}=0)begin
				z<=0;
				zero_one<=zero;
				end
				else if	(a=0,b=1)begin
				z<=1;
				zero_one<=zero;
			end
			else if	(a=1,b=0)begin
				z<=1;
				zero_one<=zero;
					end
			else begin
				z=0;
				zero_one<=one;
				end

			end
		one:begin
			if(a=1,b=1)begin
				z=0;
				zero_one=<one;
				end
				else if	(a=0,b=1)begin
				z<=0;
				zero_one<=one;
			end
			else if	(a=1,b=0)begin
				z<=0;
				zero_one<=one;
					end
			else begin
				z=0;
				zero_one=zero;
				end

			end
			default:zero_one<=zero
endmodule
