`include "./mux_4_1.v"

module stimulus;

    wire OUT;
    reg in0,in1,in2,in3;
    reg sel0,sel1;

    mux_4_1 dut_mux(.out(OUT), .s0(sel0), .s1(sel1), .i0(in0), .i1(in1), .i2(in2), .i3(in3));

    initial begin
        // Initializing input values
        in0 = 1; in1 = 0; in2 = 0; in3 = 1;
        #1$display("I3 = %b, I2 = %b, I1 = %b, I0 = %b", in3,in2,in1,in0);

        // Setting up select lines
        sel0 = 0;
        sel1 = 1;

        // Displaying the output for given select line input
        #1$display("S1 = %b, S0= %b, OUTPUT = %b", sel1, sel0, OUT);

    end


endmodule