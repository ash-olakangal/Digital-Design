`include "./up_down_counter.v"

module stimulus();

    reg ENABLE=1'b0,CLOCK,CLEAR;
    wire [3:0]OUTPUT;

    up_down_counter dut(ENABLE,CLOCK,CLEAR,OUTPUT);
    initial
    $monitor($time, " Counter = %b, Clear = %b", OUTPUT, CLEAR);

    initial 
    begin
        CLOCK = 1'b0;
        forever #10 CLOCK = ~CLOCK;
    end

    initial
    begin
        CLEAR = 1'b0;
        #330 CLEAR = 1'b1;
        #20 CLEAR = 1'b0;
    end

    initial
        #400 $finish;

endmodule