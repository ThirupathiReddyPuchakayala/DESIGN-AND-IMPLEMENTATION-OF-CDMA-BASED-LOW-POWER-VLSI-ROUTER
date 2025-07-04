// Despreader Module: despreader.v (Updated for 4-bit output)
module despreader (
    input [7:0] spread_input,
    input [3:0] pn_bit,
    output [3:0] despread_out
);
    assign despread_out = spread_input[3:0] ^ pn_bit;
endmodule