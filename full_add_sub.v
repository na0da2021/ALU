// 8_bit full adder/subtractor using 1_bit full adder
module full_add_sub (output [7:0]  s,
                     output cout,
                     input  [7:0]  a, b,
							input  cin
							);

wire [6:0] mid_c;

f_a_s f0 (.a(a[0]), .b(b[0] ^ cin), .cin(cin), .sum(s[0]), .cout(mid_c[0]));							
f_a_s f1 (.a(a[1]), .b(b[1] ^ cin), .cin(mid_c[0]), .sum(s[1]), .cout(mid_c[1]));
f_a_s f2 (.a(a[2]), .b(b[2] ^ cin), .cin(mid_c[1]), .sum(s[2]), .cout(mid_c[2]));
f_a_s f3 (.a(a[3]), .b(b[3] ^ cin), .cin(mid_c[2]), .sum(s[3]), .cout(mid_c[3]));
f_a_s f4 (.a(a[4]), .b(b[4] ^ cin), .cin(mid_c[3]), .sum(s[4]), .cout(mid_c[4]));
f_a_s f5 (.a(a[5]), .b(b[5] ^ cin), .cin(mid_c[4]), .sum(s[5]), .cout(mid_c[5]));
f_a_s f6 (.a(a[6]), .b(b[6] ^ cin), .cin(mid_c[5]), .sum(s[6]), .cout(mid_c[6]));
f_a_s f7 (.a(a[7]), .b(b[7] ^ cin), .cin(mid_c[6]), .sum(s[7]), .cout(cout));
endmodule
