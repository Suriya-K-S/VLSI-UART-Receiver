module uart_rx(
    input clk,
    input rst,
    input rx,
    output reg [7:0] data_out,
    output reg done
);

reg [3:0] bit_index;

always @(posedge clk or posedge rst)
begin

    if(rst)
    begin
        bit_index <= 0;
        data_out <= 8'b0;
        done <= 0;
    end

    else
    begin

        if(rx == 0 && bit_index == 0)
        begin
            bit_index <= 1;
            done <= 0;
        end

        else if(bit_index >= 1 && bit_index <= 8)
        begin
            data_out[bit_index-1] <= rx;
            bit_index <= bit_index + 1;
        end

        else if(bit_index == 9)
        begin
            done <= 1;
            bit_index <= 0;
        end

    end

end

endmodule