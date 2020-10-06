`include"./../Full_adder_4bit/full_adder_4bit.v"

module BCD_Adder (
    input [3:0] a,b,
    input carry_in,
    output [3:0]sum,
    output carry_out
);

wire k;
wire reg [3:0]sum_init;

full_adder_4_bit fa1(k,sum_init,carry_in,a,b);

wire and1, and2;
and(and1, sum_init[3], sum_init[1]);
and(and2, sum_init[3], sum_init[2]);

wire or1;
or(or1, and1, and2);

or(carry_out, k, or1);

wire c_out;

reg [3:0]correct = 4'b0000;
always @(carry_out)
begin
    if (carry_out) 
    correct = 4'b0110;
end

full_adder_4_bit fa2(c_out,sum,1'b0,sum_init, correct);



endmodule