// Multiplier Module: multiplier.v (Spreading)
module multiplier (
    input [3:0] data_bit, pn_bit,
    output [3:0] spread_bit
);
    assign spread_bit = data_bit ^ pn_bit;
endmodule