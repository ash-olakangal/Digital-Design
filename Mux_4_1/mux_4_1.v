module mux_4_1 (
    output out,
    input i0,i1,i2,i3,
    input s0,s1
);

// Internal wire declaration
wire s0n,s1n;
wire y0,y1,y2,y3;

// Implementing 4:1 mux logic
not (s0n,s0);
not (s1n,s1);

and (y0,i0,s0n,s1n);
and (y1,i1,s0,s1n);
and (y2,i2,s0n,s1);
and (y3,i3,s0,s1);

or (out,y0,y1,y2,y3);
    
endmodule