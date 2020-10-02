`include "DFF_clear.v"

module stimulus ();
    reg INPUT, CLOCK, CLEAR;
    wire OUTPUT;

    // Initializing module
    DFF_asynch dut(INPUT,CLOCK,CLEAR,OUTPUT); 

    initial
    $monitor($time, "Clock = %b, Input = %b, Clear = %b, Output = %b", CLOCK,INPUT, CLEAR, OUTPUT);

    // Setting up waveform
    initial
    begin
        $dumpfile("output_wave.vcd");
        $dumpvars(0,stimulus);
    end

    // Setting up clock
    initial
    begin
        CLOCK = 1'b0;
        forever #10 CLOCK = ~CLOCK;
    end

    // Simulating Input signal
    initial
    begin
        INPUT = 1'b1;
        #40 INPUT = 1'b0;
        #80 INPUT = 1'b0;
        #40 INPUT = 1'b1;
    end

    // Simulating clear input
    initial
    begin
        CLEAR = 1'b0;
        #40 CLEAR = 1'b1;
        #80 CLEAR = 1'b0;
        #40 CLEAR = 1'b1;
    end

    // Finishing after 200 time units
    initial 
    #200 $finish;

endmodule