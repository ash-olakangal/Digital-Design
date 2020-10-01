`include "counter.v"

module stimulus();

    reg CLOCK,CLEAR;
    wire [3:0]OUTPUT;

    // Module instantiation
    up_counter dut(CLOCK,CLEAR,OUTPUT); // change to desired counter (up or down)
    
    
    // Monitoring changes in counter output and clear input
    initial
    $monitor($time, " Counter = %b, Clear = %b", OUTPUT, CLEAR);

    // Initializing clock with Time period of 20
    initial
    begin
        CLOCK = 1'b0;
        forever #10 CLOCK = ~CLOCK;
    end

    // Stimulating clear input
    initial
    begin
        CLEAR = 1'b0;
        #330 CLEAR = 1'b1;
        #20 CLEAR = 1'b0;
    end

    // Stopping after 400 time units
    initial
        #400 $finish;

endmodule