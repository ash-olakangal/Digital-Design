`include "./full_adder_4bit.v"

module stimulus;
    
    // Outputs declared as wire
    wire CARRY_OUT;
    wire [3:0]SUM;
    // Inputs declared as reg
    reg CARRY_IN;
    reg [3:0]A,B;
    
    // instantiation of full adder module
    full_adder_4_bit dut_fa(.c_out(CARRY_OUT), .sum(SUM), .a(A), .b(B), .c_in(CARRY_IN));


    initial begin
        
        // Initializing A, B, CARRY_IN, can change to desired values
        A = 4'b1001;
        B = 4'b0110;

        CARRY_IN = 1'b1;

        $display("Carry in = %b", CARRY_IN);
        $display("A = %b \n B = %b ", A,B);

        #1 $display("\nOUTPUT SUM = %b, Carry out = %b", SUM, CARRY_OUT);

    end

endmodule