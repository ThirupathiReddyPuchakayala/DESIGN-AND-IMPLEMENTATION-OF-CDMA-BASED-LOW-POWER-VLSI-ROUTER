// Arbiter Module: arbiter.v (Round-robin scheduling)
module arbiter (
    input clk, rst,
    input [3:0] fifo1_in, fifo2_in, fifo3_in, fifo4_in,
    output reg [3:0] data_out,
    output reg [1:0] sel
);
    reg [1:0] state;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            state <= 0;
            data_out <= 0;
            sel <= 0;
        end else begin
            case (state)
                0: begin data_out <= fifo1_in; sel <= 0; state <= 1; end
                1: begin data_out <= fifo2_in; sel <= 1; state <= 2; end
                2: begin data_out <= fifo3_in; sel <= 2; state <= 3; end
                3: begin data_out <= fifo4_in; sel <= 3; state <= 0; end
            endcase
        end
    end
endmodule