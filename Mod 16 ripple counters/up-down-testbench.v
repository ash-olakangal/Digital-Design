`include "./up_down_counter.v"

module stimulus();

    reg ENABLE=1'b0,CLOCK,CLEAR;
    wire [3:0]OUTPUT;

    // Module instantiation
    up_down_counter dut(ENABLE,CLOCK,CLEAR,OUTPUT);
    
    // Monitoring counter output and clear input
    initial
    $monitor($time, " Counter = %b, Clear = %b", OUTPUT, CLEAR);

    // Initializing clock with Time period of 20
    initial 
    begin
        CLOCK = 1'b0;
        forever #10 CLOCK = ~CLOCK;
    end

    // Simulating clear input
    initial
    begin
        CLEAR = 1'b0;
        #330 CLEAR = 1'b1;
        #20 CLEAR = 1'b0;
    end

    // Stopping after 400 tim units
    initial
        #400 $finish;

endmodule