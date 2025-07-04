// Crossbar Module: crossbar.v
module crossbar (
    input [3:0] data_in,
    input [1:0] sel,
    output reg [3:0] user1_out, user2_out, user3_out, user4_out
);
    always @(*) begin
        user1_out = 0; user2_out = 0; user3_out = 0; user4_out = 0;
        case (sel)
            0: user1_out = data_in;
            1: user2_out = data_in;
            2: user3_out = data_in;
            3: user4_out = data_in;
        endcase
    end
endmodule