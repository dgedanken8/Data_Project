`timescale 1ns / 1ps

module tb_data_project_integration;

    parameter DATA_WIDTH   = 32;
    parameter DATA_COUNT   = 6;
    parameter PACKET_WORDS = 9;
    parameter FIFO_DEPTH   = 16;
    parameter ADDR_WIDTH   = 4;

    reg clk;
    reg rst;
    reg start;
    reg axis_tready;

    // ------------------------------------------------------------
    // Data Generator -> Packet Builder
    // ------------------------------------------------------------
    wire [DATA_WIDTH-1:0] gen_data_out;
    wire                  gen_data_valid;
    wire                  gen_done;
    wire                  data_ready;

    // ------------------------------------------------------------
    // Packet Builder -> FIFO
    // ------------------------------------------------------------
    wire [DATA_WIDTH-1:0] packet_word_out;
    wire                  packet_valid;
    wire                  packet_done;

    // ------------------------------------------------------------
    // FIFO signals
    // ------------------------------------------------------------
    wire [DATA_WIDTH-1:0] fifo_dout;
    wire                  fifo_full;
    wire                  fifo_empty;
    wire [ADDR_WIDTH:0]   fifo_count;
    wire                  fifo_overflow;
    wire                  fifo_underflow;
    wire                  fifo_wr_en;
    wire                  fifo_rd_en;

    // ------------------------------------------------------------
    // AXI Stream Master signals
    // ------------------------------------------------------------
    reg                   axi_start;
    wire [DATA_WIDTH-1:0] axis_tdata;
    wire                  axis_tvalid;
    wire                  axis_tlast;
    wire [3:0]            axis_tkeep;
    wire                  axi_busy;
    wire                  axi_done;
    wire [3:0]            axi_debug_state;

    // ------------------------------------------------------------
    // Testbench variables
    // ------------------------------------------------------------
    integer error_count;
    integer received_count;
    integer timeout;

    reg [DATA_WIDTH-1:0] expected_packet [0:PACKET_WORDS-1];

    // ------------------------------------------------------------
    // FIFO write enable protection
    // ------------------------------------------------------------
    assign fifo_wr_en = packet_valid && !fifo_full;

    // ------------------------------------------------------------
    // Clock generation
    // ------------------------------------------------------------
    always #5 clk = ~clk;

    // ------------------------------------------------------------
    // Start AXI Stream Master after full packet is written to FIFO
    // ------------------------------------------------------------
    always @(posedge clk) begin
        if (rst == 1'b1) begin
            axi_start <= 1'b0;
        end
        else begin
            axi_start <= packet_done;
        end
    end

    // ------------------------------------------------------------
    // DUT blocks
    // ------------------------------------------------------------

    data_generator u_data_generator (
        .clk(clk),
        .rst(rst),
        .start(start),
        .data_ready(data_ready),
        .data_out(gen_data_out),
        .data_valid(gen_data_valid),
        .done(gen_done)
    );

    packet_builder_FSM u_packet_builder_FSM (
        .clk(clk),
        .rst(rst),
        .start(start),
        .data_valid(gen_data_valid),
        .data_in(gen_data_out),
        .packet_word_out(packet_word_out),
        .packet_valid(packet_valid),
        .packet_done(packet_done),
        .data_ready(data_ready)
    );

    sync_fifo #(
        .DATA_WIDTH(DATA_WIDTH),
        .DEPTH(FIFO_DEPTH),
        .ADDR_WIDTH(ADDR_WIDTH)
    ) u_sync_fifo (
        .clk(clk),
        .rst(rst),
        .wr_en(fifo_wr_en),
        .rd_en(fifo_rd_en),
        .din(packet_word_out),
        .dout(fifo_dout),
        .full(fifo_full),
        .empty(fifo_empty),
        .count(fifo_count),
        .overflow(fifo_overflow),
        .underflow(fifo_underflow)
    );

    axi_stream_master #(
        .DATA_WIDTH(DATA_WIDTH),
        .PACKET_WORDS(PACKET_WORDS)
    ) u_axi_stream_master (
        .clk(clk),
        .rst(rst),
        .start(axi_start),
        .fifo_dout(fifo_dout),
        .fifo_empty(fifo_empty),
        .axis_tready(axis_tready),
        .fifo_rd_en(fifo_rd_en),
        .axis_tdata(axis_tdata),
        .axis_tvalid(axis_tvalid),
        .axis_tlast(axis_tlast),
        .axis_tkeep(axis_tkeep),
        .busy(axi_busy),
        .done(axi_done),
        .debug_state(axi_debug_state)
    );

    // ------------------------------------------------------------
    // Main test
    // ------------------------------------------------------------
    initial begin

        clk = 1'b0;
        rst = 1'b1;
        start = 1'b0;
        axis_tready = 1'b1;
        error_count = 0;
        received_count = 0;
        timeout = 0;

        expected_packet[0] = 32'hA5A50001;
        expected_packet[1] = 32'h00000006;
        expected_packet[2] = 32'h00000001;
        expected_packet[3] = 32'h00000007;
        expected_packet[4] = 32'h00000008;
        expected_packet[5] = 32'h00000003;
        expected_packet[6] = 32'h00000006;
        expected_packet[7] = 32'h00000003;
        expected_packet[8] = 32'h0000001C;

        $display("Starting Stage 6 Full RTL Integration Simulation...");

        // Reset
        repeat (5) @(posedge clk);
        rst = 1'b0;

        repeat (2) @(posedge clk);

        // Start pulse
        start = 1'b1;
        @(posedge clk);
        start = 1'b0;

        // --------------------------------------------------------
        // Capture AXI Stream output
        // Sampling on negedge avoids race with registered outputs.
        // --------------------------------------------------------
        while ((received_count < PACKET_WORDS) && (timeout < 500)) begin
            @(negedge clk);

            if (axis_tvalid == 1'b1 && axis_tready == 1'b1) begin

                if (axis_tdata !== expected_packet[received_count]) begin
                    $display("ERROR: AXI word[%0d] mismatch. expected=%h got=%h",
                             received_count,
                             expected_packet[received_count],
                             axis_tdata);
                    error_count = error_count + 1;
                end
                else begin
                    $display("PASS: AXI word[%0d] = %h",
                             received_count,
                             axis_tdata);
                end

                if (received_count == PACKET_WORDS - 1) begin
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
                        $display("ERROR: axis_tlast is 1 before last word at word[%0d]",
                                 received_count);
                        error_count = error_count + 1;
                    end
                end

                received_count = received_count + 1;
            end

            timeout = timeout + 1;
        end

        if (timeout >= 500) begin
            $display("ERROR: Timeout while waiting for AXI Stream packet");
            error_count = error_count + 1;
        end

        if (received_count !== PACKET_WORDS) begin
            $display("ERROR: Expected %0d AXI words, received %0d",
                     PACKET_WORDS,
                     received_count);
            error_count = error_count + 1;
        end

        // Wait for AXI done
        timeout = 0;
        while ((axi_done !== 1'b1) && (timeout < 50)) begin
            @(posedge clk);
            #1;
            timeout = timeout + 1;
        end

        if (axi_done !== 1'b1) begin
            $display("ERROR: axi_done did not rise");
            error_count = error_count + 1;
        end
        else begin
            $display("PASS: axi_done is high");
        end

        // FIFO safety checks
        if (fifo_overflow !== 1'b0) begin
            $display("ERROR: FIFO overflow detected");
            error_count = error_count + 1;
        end

        if (fifo_underflow !== 1'b0) begin
            $display("ERROR: FIFO underflow detected");
            error_count = error_count + 1;
        end

        // Final result
        if (error_count == 0) begin
            $display("======================================");
            $display("TEST PASSED: Stage 6 Integration OK");
            $display("======================================");
        end
        else begin
            $display("======================================");
            $display("TEST FAILED with %0d errors", error_count);
            $display("======================================");
        end

        repeat (10) @(posedge clk);
        $finish;

    end

endmodule