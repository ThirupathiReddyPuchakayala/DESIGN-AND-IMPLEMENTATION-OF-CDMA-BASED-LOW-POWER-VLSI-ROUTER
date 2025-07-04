// PN Sequence Module: pn_sequence.v
module pn_sequence (
    output [3:0] pn_seq1, pn_seq2, pn_seq3, pn_seq4
);
    assign pn_seq1 = 4'b1010; // User 1
    assign pn_seq2 = 4'b1100; // User 2
    assign pn_seq3 = 4'b0110; // User 3
    assign pn_seq4 = 4'b1001; // User 4
endmodule