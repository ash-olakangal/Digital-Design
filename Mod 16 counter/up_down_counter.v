module up_down_counter (
    input enable,clock,clear,
    output reg [3:0] up_down_counter
);
    initial
    begin
        
        if (enable == 1)
            up_down_counter <= 4'd0;
        
        else
            up_down_counter <= 4'd15;

    end
    
    always @(posedge clock or posedge clear)
    begin
        if (clear)
            up_down_counter <= 4'd0;
            
        else if (enable) 
            up_down_counter <= up_down_counter + 4'd1;
        
        else
            up_down_counter <= up_down_counter - 4'd1;

    end
    
endmodule