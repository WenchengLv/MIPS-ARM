module maindec (input logic  [5:0] 	op,
					output logic 			memtoreg,memwrite,
					output logic 			pcsrc,alusrc,
					output logic 			regdst,regwrite,
					output logic 			jump,
					output logic [1:0]	aluop);
					
		logic [8:0] controls;
		
		assign {regwrite,regdst,alusrc,branch,memwrite,
					memtoreg,jump,aluop} = controls;
					
					
		always_comb
			case(op)
				6'b000000:	controls <= 9'b11000_0010;	//RTYPE
				6'b100011:	controls <= 9'b10100_1000;	//LW
				6'b101011:	controls <= 9'b00101_0000;	//SW
				6'b000100:	controls <= 9'b00010_0001;	//BEQ
				6'b001000:	controls <= 9'b10100_0000;	//ADDI
				6'b000010:	controls <= 9'b00000_0100;	//J
				default:		controls <= 9'bxxxxx_xxxx;	//illegal op
			endcase
			
endmodule