// Positive edge triggered D flip-flop with synchronous reset
module DFF_sync (
    input D,clock, clear,
    output reg Q
);

    always @(posedge clock)
    begin
        if(clear) // Resetting if clear is set and clock edge is positive
        Q = 1'b0;
        else
        Q = D; // Setting the value of output
    end
endmodule

// Positive edge triggered D flip-flop with asynchronous reset
module DFF_asynch (
    input D,clock,clear,
    output reg Q
);
    always @(posedge clock or posedge clear)
    begin        
        if (clear) // Resetting if clear is set
            Q = 1'b0;
        else
            Q = D; // Setting the value of output
    end
endmodule