module flopr(input logic clk,
				input logic reset,
				input logic [3:0]	d,
				output logic [3:0] q);
/*异步
		always_ff @(posedge clk , posedge reset) //D触发器
			if(reset) q <= 4'b0;
			else q <= d;
 */
 
		always_ff @(posedge clk )
			if(reset) q <= 4'b0;
			else q <= d;
 
endmodule