/**********************************************
**										     **
**	title = tb of ALU                        **
**	AUTHOR : DARSHIL R. SACHDEV			     **
**										     **
**********************************************/
`include "ALU.v"
module ALU_tb;

reg [7:0]a,b;
reg [2:0] opcode;
wire [7:0] alu_out;

reg monitor,stimulus;

ALU DUT( .a(a), .b(b), .opcode(opcode), .alu_out(alu_out) );

initial begin

	monitor=1;
	stimulus=1;
	
end

	initial begin
	
		if(monitor)begin
		
			$monitor("a=%b,b=%b,opcode=%b,alu_out=%b",a,b,opcode,alu_out);
			
		end
		
	end
	
	initial begin
	
	
		if(stimulus)begin
		
			a=8'b0; b=8'b0; opcode=3'b000; 
			
		#20 opcode=3'b001; a=8'b00000001; b=8'b00000010; 
		#20 opcode=3'b010; a=8'b00000010; b=8'b00000001; 
		#20 opcode=3'b011; a=8'b00000001; b=8'b00000001; 
		#20 opcode=3'b100; a=8'b00000001; b=8'b00000010; 
		#20 opcode=3'b101; a=8'b00000001; b=8'b00000010; 
		#20 opcode=3'b110; a=8'b00000001; b=8'b00000010; 
		#20 opcode=3'b111; a=8'b00000001; b=8'b00000010; 
		
		#20 $finish;
		
		end
	end
	
	initial begin
	
		$dumpfile("ALU.vcd");
		$dumpvars;
		
	end
	
endmodule