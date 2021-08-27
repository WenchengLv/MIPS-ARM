module alu (input logic [31:0] srca,srcb,
				input logic [2:0]	alucontrol,
				output logic [31:0] aluout,
				output logic  		zero);
				
		always_comb
			case(alucontrol)
				3'b010: aluout <= srca+srcb;
				3'b110: aluout <= srca-srcb;
				
				//TODO:and,or,*,/
				
				default: aluout <= 'b0;
				
			endcase
		
		assign zero = (aluout == 0) ? 1 : 0;
		
endmodule