//  Described ALU using full adder/sub 
module alu( input  [7:0] a, b,
            input  [2:0] opcode,
				output reg [7:0] out,
				output reg cout, c_flag, z_flag
			  );
			  
	wire [7:0] mid_out;
wire       mid_cout;
			  
	full_add_sub a0 (.s(mid_out), .cout(mid_cout), .a(a), .b(b), .cin(opcode[0]));

always @(*)
begin
c_flag = 0 ;  //carry_flag
z_flag = 0 ;
cout = 0;
case(opcode)
 
 3'b000 :  begin
            out = mid_out;
				cout= mid_cout;
		     end
 
 3'b001 : begin
            out = mid_out;
		     end
 
 3'b010 : begin
            out = a &  b;
		    end
 
 3'b011 : begin  
            out = a |  b;
			 end
 
 3'b100 : begin  
            out = a ^  b; 
			 end
 
 3'b101 : begin  
            out = a >  b;
			 end
 
 3'b110 : begin  
            out = a << 1;
			 end
 
 3'b111 : begin  
            out = b << 1;
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
