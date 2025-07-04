// PISO Module: piso.v (Parallel to Serial)
module piso (
    input clk, rst,
    input [3:0] parallel_in,
    output reg [3:0] serial_out
);
    reg [3:0] shift_reg;
    integer count;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            shift_reg <= 0;
            serial_out <= 0;
            count <= 0;
        end else begin
            if (count == 0) begin
                shift_reg <= parallel_in;
                count <= count + 1;
            end else begin
                serial_out <= shift_reg;
                shift_reg <= shift_reg << 1;
                count <= (count == 4) ? 0 : count + 1;
            end
        end
    end
endmodule