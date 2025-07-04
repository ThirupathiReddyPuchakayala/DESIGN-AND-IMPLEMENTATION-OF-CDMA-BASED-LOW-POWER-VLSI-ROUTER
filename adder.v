// Adder Module: adder.v
module adder (
    input [3:0] spread1, spread2, spread3, spread4,
    output [7:0] spread_output
);
    assign spread_output = spread1 + spread2 + spread3 + spread4;
endmodule