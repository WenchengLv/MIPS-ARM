module latchD(input logic clk,
				input logic [3:0]	d,
				output logic [3:0] q);
//锁存器
		always_latch 
			if(clk) q <= d;

endmodule