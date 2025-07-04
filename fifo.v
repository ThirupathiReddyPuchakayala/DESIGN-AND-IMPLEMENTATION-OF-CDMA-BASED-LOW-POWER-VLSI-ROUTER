// FIFO Module: fifo.v
module fifo (
    input clk, rst,
    input [3:0] data_in,
    output reg [3:0] data_out
);
    reg [3:0] mem [0:3];
    integer wr_ptr, rd_ptr;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            wr_ptr <= 0;
            rd_ptr <= 0;
            data_out <= 0;
        end else begin
            mem[wr_ptr] <= data_in;
            wr_ptr <= (wr_ptr + 1) % 4;
            data_out <= mem[rd_ptr];
            rd_ptr <= (rd_ptr + 1) % 4;
        end
    end
endmodule