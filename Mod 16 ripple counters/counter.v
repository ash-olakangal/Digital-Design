module up_counter(
    input clock,clear,
    output [3:0] up_counter // 4-bit wide counter: 16 states
);

    reg up_counter = 4'd0; // Initializing the value of counter
    always @(posedge clock or posedge clear)
    begin
    
        if(clear)
        up_counter <= 4'd0; // if clear is set, then we reset the counter

        else
        up_counter <= up_counter + 4'd1; // else increment counter on clock edge
    end

endmodule

module down_counter (
    input clock,clear,
    output [3:0] down_counter // 4-bit wide counter
);

    reg down_counter = 4'd15; // Initializing the value of counter
    
    always @(posedge clock or posedge clear)
    begin

        if(clear)
        down_counter <= 4'd0; // if clear is set, then we reset the counter

        else
        down_counter <= down_counter - 4'd1; // else decrement the counter on clock edge

    end
    
endmodule