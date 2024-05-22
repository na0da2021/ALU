//  Described ALU using full adder/sub 
module alu( input  [7:0] a, b,
            input  [2:0] opcode,
				output reg [7:0] out,
				output reg cout, c_flag, z_flag
			  );
			  
wire [7:0] mid_out1,  mid_out2;
wire       mid_cout1, mid_cout2;
			  
full_add_sub a0 (.s(mid_out1), .cout(mid_cout1), .a(a), .b(b), .cin(0));
full_add_sub a1 (.s(mid_out2), .cout(mid_cout2), .a(a), .b(b), .cin(1));

always @(*)
begin
c_flag = 0 ;
z_flag = 0 ; 
case(opcode)
 
 3'b000 :  begin
            out = mid_out1;
				cout= mid_cout1;
		     end
 
 3'b001 : begin
            out = mid_out2;
				cout= mid_cout2;
		     end
 
 3'b010 : begin
            out = a &  b;
				cout= 0;
		    end
 
 3'b011 : begin  
            out = a |  b;
				cout= 0;
			 end
 
 3'b100 : begin  
            out = a ^  b; 
				cout= 0;
			 end
 
 3'b101 : begin  
            out = a >  b;
				cout= 0;
			 end
 
 3'b110 : begin  
            out = a << 1;
				cout= 0;
			 end
 
 3'b111 : begin  
            out = b << 1;
				cout= 0;
			 end
 
endcase

if(cout == 1)
begin
 c_flag = 1;
end

if(out == 8'b00000000)
begin
 z_flag = 1;
end

end			  

endmodule							

// 1_bit full adder
module f_a_s( output sum, cout,
              input a, b, cin
             ); 			 				 
assign sum = a ^ b ^ cin;
assign cout = 	(a & b) | (cin & (a ^ b));
endmodule
