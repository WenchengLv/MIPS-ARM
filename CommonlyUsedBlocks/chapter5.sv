module adder #(parameter N=8)
					(input logic [N-1:0] a,b,
					input logic 			cin,
					output logic [N-1:0] s,
					output logic			cout);
					
		assign {cout,s} = a+b+cin;
		
endmodule

//减法器
//比较器
//乘法器

module counter #(parameter N=8)
					(input logic clk,
					input logic	reset,
					output logic [N-1:0] q);
					
		always_ff @(posedge clk,posedge reset)
			if(reset)   q <= 0;
			else			q <= q+1;
		
endmodule

//移位寄存器
module shiftreg #(parameter N=8)
					(input logic clk,
					input logic	reset,load,
					input logic	sin,
					input logic [N-1:0] d,
					output logic [N-1:0] q,
					output logic sout);
					
		always_ff @(posedge clk,posedge reset)
			if(reset)   q <= 0;
			else if (load) q <= d;
			else			q <= {q[N-2:0],sin};
			
		assign sout = q[N-1:0];
		
endmodule
