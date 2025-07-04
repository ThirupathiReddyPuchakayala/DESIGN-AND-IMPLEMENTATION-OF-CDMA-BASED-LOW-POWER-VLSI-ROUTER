// Transmitter Module: cdma_transmitter.v
module cdma_transmitter (
    input clk, rst,
    input [3:0] user1_data, user2_data, user3_data, user4_data,
    output [7:0] spread_output
);
    wire [3:0] serial1, serial2, serial3, serial4;
    wire [3:0] pn1, pn2, pn3, pn4;
    wire [3:0] spread1, spread2, spread3, spread4;

    piso p1 (.clk(clk), .rst(rst), .parallel_in(user1_data), .serial_out(serial1));
    piso p2 (.clk(clk), .rst(rst), .parallel_in(user2_data), .serial_out(serial2));
    piso p3 (.clk(clk), .rst(rst), .parallel_in(user3_data), .serial_out(serial3));
    piso p4 (.clk(clk), .rst(rst), .parallel_in(user4_data), .serial_out(serial4));

    pn_sequence pn (.pn_seq1(pn1), .pn_seq2(pn2), .pn_seq3(pn3), .pn_seq4(pn4));

    multiplier m1 (.data_bit(serial1), .pn_bit(pn1), .spread_bit(spread1));
    multiplier m2 (.data_bit(serial2), .pn_bit(pn2), .spread_bit(spread2));
    multiplier m3 (.data_bit(serial3), .pn_bit(pn3), .spread_bit(spread3));
    multiplier m4 (.data_bit(serial4), .pn_bit(pn4), .spread_bit(spread4));

    adder add (.spread1(spread1), .spread2(spread2), .spread3(spread3), .spread4(spread4), .spread_output(spread_output));
endmodule