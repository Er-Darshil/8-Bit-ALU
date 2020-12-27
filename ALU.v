module ALU (
input [7:0]a, b,
input [2:0]opcode,
output reg [7:0]alu_out
);
always @(opcode,a,b)
case(opcode)
3'b000:alu_out = a + b;
3'b001:alu_out = a- b;
3'b010:alu_out = a&b;
3'b011:alu_out = a|b;
3'b100:alu_out = ~b;
3'b101:alu_out = a^b;
3'b110:alu_out = a~^b;
default:alu_out = 0;
endcase
endmodule