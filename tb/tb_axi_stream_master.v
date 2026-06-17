`timescale 1ns / 1ps

module tb_axi_stream_master;

    parameter DATA_WIDTH   = 32;
    parameter PACKET_WORDS = 9;

    reg clk;
    reg rst;
    reg start;

    reg  [DATA_WIDTH-1:0] fifo_dout;
    reg                   fifo_empty;
    reg                   axis_tready;

    wire                  fifo_rd_en;
    wire [DATA_WIDTH-1:0] axis_tdata;
    wire                  axis_tvalid;
    wire                  axis_tlast;
    wire [3:0]            axis_tkeep;
    wire                  busy;
    wire                  done;
    wire [3:0]            debug_state;

    integer error_count;
    integer i;
    integer fifo_index;
    integer rx_index;

    reg [DATA_WIDTH-1:0] expected_packet [0:PACKET_WORDS-1];

    axi_stream_master #(
        .DATA_WIDTH(DATA_WIDTH),
        .PACKET_WORDS(PACKET_WORDS)
    ) dut (
        .clk(clk),
        .rst(rst),
        .start(start),

        .fifo_dout(fifo_dout),
        .fifo_empty(fifo_empty),
        .axis_tready(axis_tready),

        .fifo_rd_en(fifo_rd_en),
        .axis_tdata(axis_tdata),
        .axis_tvalid(axis_tvalid),
        .axis_tlast(axis_tlast),
        .axis_tkeep(axis_tkeep),
        .busy(busy),
        .done(done),
        .debug_state(debug_state)
    );

    always #5 clk = ~clk;

  
    always @(posedge clk) begin
        if (rst == 1'b1) begin
            fifo_index <= 0;
            fifo_dout  <= 0;
            fifo_empty <= 0;
        end
        else begin
            if (fifo_rd_en == 1'b1 && fifo_empty == 1'b0) begin
                fifo_dout <= expected_packet[fifo_index];

                if (fifo_index == PACKET_WORDS - 1)
                    fifo_empty <= 1'b1;

                fifo_index <= fifo_index + 1;
            end
        end
    end

    initial begin
        clk          = 0;
        rst          = 1;
        start        = 0;
        fifo_dout    = 0;
        fifo_empty   = 0;
        axis_tready  = 1;
        error_count  = 0;
        fifo_index   = 0;
        rx_index     = 0;

        expected_packet[0] = 32'hA5A50001;
        expected_packet[1] = 32'h00000006;
        expected_packet[2] = 32'h00000001;
        expected_packet[3] = 32'h00000007;
        expected_packet[4] = 32'h00000008;
        expected_packet[5] = 32'h00000003;
        expected_packet[6] = 32'h00000006;
        expected_packet[7] = 32'h00000003;
        expected_packet[8] = 32'h0000001C;

        repeat(3) @(posedge clk);
        #1;

        if (axis_tvalid !== 1'b0) begin
            $display("ERROR: axis_tvalid after reset is not 0");
            error_count = error_count + 1;
        end
        else begin
            $display("PASS: axis_tvalid after reset is 0");
        end

        if (done !== 1'b0) begin
            $display("ERROR: done after reset is not 0");
            error_count = error_count + 1;
        end
        else begin
            $display("PASS: done after reset is 0");
        end

        rst = 0;

        repeat(2) @(posedge clk);
        #1;

        start = 1'b1;
        @(posedge clk);
        #1;
        start = 1'b0;

        while (done !== 1'b1) begin
            @(posedge clk);
            #1;

            if (axis_tvalid == 1'b1 && axis_tready == 1'b1) begin

                if (axis_tdata !== expected_packet[rx_index]) begin
                    $display("ERROR: AXI word[%0d] expected = %h, got = %h",
                              rx_index, expected_packet[rx_index], axis_tdata);
                    error_count = error_count + 1;
                end
                else begin
                    $display("PASS: AXI word[%0d] = %h", rx_index, axis_tdata);
                end

                if (rx_index == PACKET_WORDS - 1) begin
                    if (axis_tlast !== 1'b1) begin
                        $display("ERROR: axis_tlast is not 1 on last word");
                        error_count = error_count + 1;
                    end
                    else begin
                        $display("PASS: axis_tlast is 1 on last word");
                    end
                end
                else begin
                    if (axis_tlast !== 1'b0) begin
                        $display("ERROR: axis_tlast is 1 too early at word[%0d]", rx_index);
                        error_count = error_count + 1;
                    end
                end

                rx_index = rx_index + 1;
            end
        end

        if (rx_index !== PACKET_WORDS) begin
            $display("ERROR: received words = %0d, expected = %0d", rx_index, PACKET_WORDS);
            error_count = error_count + 1;
        end
        else begin
            $display("PASS: received all %0d AXI words", PACKET_WORDS);
        end

        if (error_count == 0) begin
            $display("TEST PASSED");
        end
        else begin
            $display("TEST FAILED with %0d errors", error_count);
        end

        $finish;
    end

endmodule