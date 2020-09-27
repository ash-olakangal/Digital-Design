module full_adder_1_bit (
    output sum,carry_out,
    input a,b,carry_in
);   
    // Internal wire declarations
    wire y0,y1,y2;

    // Sum logic
    xor(sum,a,b,carry_in);
    
    // Carry_out logic
    and(y0,a,b);
    and(y1,a,carry_in);
    and(y2,b,carry_in);

    or(carry_out, y0, y1, y2);

endmodule

module full_adder_4_bit (
    output c_out,
    output [3:0]sum, // 4-bit wide sum output
    input c_in,
    input [3:0]a,b // 4-bit wide numbers for addition
);
    // Internal wire declarations
    wire c1,c2,c3;

    // 4-bit full adder by instantiating 1-bit FA module
    full_adder_1_bit add1(sum[0],c1,a[0],b[0],c_in);
    full_adder_1_bit add2(sum[1],c2,a[1],b[1],c1);
    full_adder_1_bit add3(sum[2],c3,a[2],b[2],c2);
    full_adder_1_bit add4(sum[3],c_out,a[3],b[3],c3);
    
endmodule

