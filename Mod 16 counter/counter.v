module up_counter(
    input clock,clear,
    output [3:0] up_counter
);

    reg up_counter = 4'd0;
    always @(posedge clock or posedge clear)
    begin
    
        if(clear)
        up_counter <= 4'd0;

        else
        up_counter <= up_counter + 4'd1;
    end

endmodule

module down_counter (
    input clock,clear,
    output [3:0] down_counter
);

    reg down_counter = 4'd15;
    
    always @(posedge clock or posedge clear)
    begin

        if(clear)
        down_counter <= 4'd0;

        else
        down_counter <= down_counter - 4'd1;

    end
    
endmodule



// module up_down_counter (
//     input enable,clock,clear,
//     output reg [3:0]ud_counter
// );


//     ud_counter <= 4'd15;

//     always @(posedge clock or posedge clear)
//     begin

//         if (clear)
//             ud_counter <= 4'd0;
            
//         else if (enable) 
//             ud_counter <= ud_counter + 4'd1;
        
//         else
//             ud_counter <= ud_counter - 4'd1; 

//     end

// endmodule


