`include "./BCD_adder.v"

module stimulus (
    
);
    reg[3:0]X,Y;
    reg CARRY_IN;
    wire[3:0]SUM;
    wire CARRY_OUT;

    BCD_Adder dut(X,Y,CARRY_IN,SUM,CARRY_OUT);

    initial begin
        X = 4'b1000;
        Y = 4'b0111;
        CARRY_IN = 0;
    end

    initial
    #20 $display("SUM = %b, CARRY = %b", SUM, CARRY_OUT);
    
endmodule