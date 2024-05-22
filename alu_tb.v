module alu_tb();

reg  [7:0] a, b;
reg  [2:0] opcode;
wire [7:0] out;
wire cout, c_flag, z_flag;

initial begin
$monitor(" a = %b | b = %b | opcode = %b | out = %b | carry_out = %b carry_flag = %b | Zero_flag = %b\n" , a, b, opcode, out, cout, c_flag, z_flag);
// test addition
a = 8;
b = 20;
opcode = 000;
// test subtraction_1
#50
a = 15;
b = 5;
opcode = 001;
// test subtraction_2
#50
a = 5;
b = 15;
opcode = 001;
// test and_1
#50
a = 8'b11111111;
b = 8'b11111111;
opcode = 010;
// test and_2
#50
a = 8'b11100101;
b = 8'b11111110;
opcode = 010;
// test or
#50
a = 8'b00110010;
b = 8'b11111111;
opcode = 011;
// test Xor
#50
a = 8'b00110010;
b = 8'b11001111;
opcode = 100;
// test a>b_1
#50
a = 25;
b = 10;
opcode = 101;
// test a>b_2
#50
a = 10;
b = 25;
opcode = 101;
// test a << 1
#50
a = 8'b01101101;
opcode = 110;
// test b << 1
#50
a = 8'b10001110;
opcode = 111;
end

endmodule
