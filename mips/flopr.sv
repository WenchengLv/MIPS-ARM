module flopr #(parameter WIDTH=8)
				(input logic clk,reset,
				input logic [WIDTH-1:0]	d,
				output logic [WIDTH-1:0] q);

		always_ff @(posedge clk , posedge reset) //D触发器
			if(reset) q <= 4'b0;
			else q <= d;
 

endmodule