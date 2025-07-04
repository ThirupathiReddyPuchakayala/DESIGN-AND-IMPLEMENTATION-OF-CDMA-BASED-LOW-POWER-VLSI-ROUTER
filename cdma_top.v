// Top Module: cdma_top.v
module cdma_top (
    input clk, rst,
    input [3:0] user1_data, user2_data, user3_data, user4_data,
    output [3:0] user1_out, user2_out, user3_out, user4_out
);
    wire [7:0] spread_signal;
    cdma_transmitter tx (.clk(clk), .rst(rst), .user1_data(user1_data), .user2_data(user2_data),
                        .user3_data(user3_data), .user4_data(user4_data), .spread_output(spread_signal));
    cdma_receiver rx (.clk(clk), .rst(rst), .spread_input(spread_signal),
                      .user1_out(user1_out), .user2_out(user2_out), .user3_out(user3_out), .user4_out(user4_out));
endmodule