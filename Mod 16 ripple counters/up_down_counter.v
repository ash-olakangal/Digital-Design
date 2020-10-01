module up_down_counter (
    input enable,clock,clear,
    output reg [3:0] up_down_counter // 4-bit wide counter output
);
    initial
    begin
        
        if (enable == 1) // If enable is set to one, then up-counter is implemented
            up_down_counter <= 4'd0;
        
        else
            up_down_counter <= 4'd15; // If enable is set to zero, down-counter

    end
    
    always @(posedge clock or posedge clear)
    begin
        if (clear)
            up_down_counter <= 4'd0; // Reset counter if clear is set
            
        else if (enable) 
            up_down_counter <= up_down_counter + 4'd1; // Increment counter if enable is 1
        
        else
            up_down_counter <= up_down_counter - 4'd1; // Decrement counter if enable is 0

    end
    
endmodule