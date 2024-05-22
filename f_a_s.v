// 1_bit full adder
module f_a_s( output sum, cout,
              input a, b, cin
             ); 			 				 
assign sum = a ^ b ^ cin;
assign cout = 	(a & b) | (cin & (a ^ b));
endmodule
