module uart_rx_tb;

reg clk;
reg rst;
reg rx;

wire [7:0] data_out;
wire done;

uart_rx uut(
    .clk(clk),
    .rst(rst),
    .rx(rx),
    .data_out(data_out),
    .done(done)
);

// Clock generation
always #5 clk = ~clk;

initial begin

    clk = 0;
    rst = 1;
    rx  = 1;

    #10;
    rst = 0;

    // Start Bit
    #10 rx = 0;

    // Data = 01000001 (ASCII A)
    #10 rx = 1;
    #10 rx = 0;
    #10 rx = 0;
    #10 rx = 0;
    #10 rx = 0;
    #10 rx = 0;
    #10 rx = 1;
    #10 rx = 0;

    // Stop Bit
    #10 rx = 1;

    #50;

    $finish;

end

initial begin
    $monitor("Time=%0t RX=%b DATA=%b DONE=%b",
              $time, rx, data_out, done);
end

endmodule