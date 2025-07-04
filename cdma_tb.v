// Testbench: cdma_tb.v
module cdma_tb;
    reg clk, rst;
    reg [3:0] user1_data, user2_data, user3_data, user4_data;
    wire [3:0] user1_out, user2_out, user3_out, user4_out;

    cdma_top dut (.clk(clk), .rst(rst), .user1_data(user1_data), .user2_data(user2_data),
                  .user3_data(user3_data), .user4_data(user4_data),
                  .user1_out(user1_out), .user2_out(user2_out), .user3_out(user3_out), .user4_out(user4_out));

    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 10ns period (100 MHz)
    end

    initial begin
        rst = 1;
        user1_data = 4'b1010; user2_data = 4'b1100;
        user3_data = 4'b0110; user4_data = 4'b1001;
        #10 rst = 0;
        #100;
        user1_data = 4'b1111; user2_data = 4'b0000;
        user3_data = 4'b1011; user4_data = 4'b0101;
        #200 $finish;
    end

    initial begin
        $monitor("Time=%0t rst=%b user1_out=%b user2_out=%b user3_out=%b user4_out=%b",
                 $time, rst, user1_out, user2_out, user3_out, user4_out);
    end
endmodule