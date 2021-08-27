module flop(input logic clk,
				input logic [3:0]	d,
				output logic [3:0] q);
		
		always_ff @(posedge clk) //D触发器
			q <= d;

endmodule