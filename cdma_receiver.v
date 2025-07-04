// Receiver Module: cdma_receiver.v
module cdma_receiver (
    input clk, rst,
    input [7:0] spread_input,
    output [3:0] user1_out, user2_out, user3_out, user4_out
);
    wire [3:0] pn1, pn2, pn3, pn4;
    wire [3:0] despread1, despread2, despread3, despread4;
    wire [3:0] fifo1_out, fifo2_out, fifo3_out, fifo4_out;
    wire [3:0] arbiter_out;
    wire [1:0] sel;

    pn_sequence pn (.pn_seq1(pn1), .pn_seq2(pn2), .pn_seq3(pn3), .pn_seq4(pn4));

    despreader d1 (.spread_input(spread_input), .pn_bit(pn1), .despread_out(despread1));
    despreader d2 (.spread_input(spread_input), .pn_bit(pn2), .despread_out(despread2));
    despreader d3 (.spread_input(spread_input), .pn_bit(pn3), .despread_out(despread3));
    despreader d4 (.spread_input(spread_input), .pn_bit(pn4), .despread_out(despread4));

    fifo f1 (.clk(clk), .rst(rst), .data_in(despread1), .data_out(fifo1_out));
    fifo f2 (.clk(clk), .rst(rst), .data_in(despread2), .data_out(fifo2_out));
    fifo f3 (.clk(clk), .rst(rst), .data_in(despread3), .data_out(fifo3_out));
    fifo f4 (.clk(clk), .rst(rst), .data_in(despread4), .data_out(fifo4_out));

    arbiter arb (.clk(clk), .rst(rst), .fifo1_in(fifo1_out), .fifo2_in(fifo2_out),
                .fifo3_in(fifo3_out), .fifo4_in(fifo4_out), .data_out(arbiter_out), .sel(sel));

    crossbar cb (.data_in(arbiter_out), .sel(sel), .user1_out(user1_out), .user2_out(user2_out),
                 .user3_out(user3_out), .user4_out(user4_out));
endmodule