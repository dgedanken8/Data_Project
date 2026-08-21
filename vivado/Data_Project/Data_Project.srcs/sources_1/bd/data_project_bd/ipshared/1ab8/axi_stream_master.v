`timescale 1ns / 1ps

module axi_stream_master #(
    parameter DATA_WIDTH   = 32,
    parameter PACKET_WORDS = 9
)(
    input clk,
    input rst,
    input start,

    input  [DATA_WIDTH-1:0] fifo_dout,
    input fifo_empty,
    input axis_tready,

    output reg fifo_rd_en,
    output reg [DATA_WIDTH-1:0] axis_tdata,
    output reg axis_tvalid,
    output reg axis_tlast,
    output reg [3:0] axis_tkeep,
    output reg busy,
    output reg done,
    output reg [3:0] debug_state
);

    localparam IDLE = 2'd0;
    localparam LOAD = 2'd1;
    localparam SEND = 2'd2;
    localparam DONE = 2'd3;

    reg [1:0] state;
    reg [1:0] next_state;

    reg [DATA_WIDTH-1:0] data_reg;
    reg [3:0] word_count;

    wire axis_handshake;
    wire last_word;

    assign axis_handshake = axis_tvalid && axis_tready;
    assign last_word = (word_count == PACKET_WORDS - 1);


    always @(posedge clk) begin
        if (rst == 1'b1)
            state <= IDLE;
        else
            state <= next_state;
    end

 
    always @(*) begin
        next_state = state;

        case (state)

            IDLE: begin
                if (start == 1'b1 && fifo_empty == 1'b0)
                    next_state = LOAD;
                else
                    next_state = IDLE;
            end

            LOAD: begin
                next_state = SEND;
            end

            SEND: begin
                if (axis_handshake == 1'b1 && last_word == 1'b1)
                    next_state = DONE;
                else if (axis_handshake == 1'b1 && last_word == 1'b0)
                    next_state = LOAD;
                else
                    next_state = SEND;
            end

            DONE: begin
                next_state = IDLE;
            end

            default: begin
                next_state = IDLE;
            end

        endcase
    end


    always @(posedge clk) begin
        if (rst == 1'b1) begin
            fifo_rd_en   <= 1'b0;
            axis_tdata   <= {DATA_WIDTH{1'b0}};
            axis_tvalid  <= 1'b0;
            axis_tlast   <= 1'b0;
            axis_tkeep   <= 4'b0000;
            busy         <= 1'b0;
            done         <= 1'b0;
            word_count   <= 4'd0;
            data_reg     <= {DATA_WIDTH{1'b0}};
            debug_state  <= IDLE;
        end
        else begin
            case (state)

                IDLE: begin
                    axis_tdata   <= {DATA_WIDTH{1'b0}};
                    axis_tvalid  <= 1'b0;
                    axis_tlast   <= 1'b0;
                    axis_tkeep   <= 4'b0000;
                    busy         <= 1'b0;
                    done         <= 1'b0;
                    word_count   <= 4'd0;
                    data_reg     <= {DATA_WIDTH{1'b0}};
                    debug_state  <= IDLE;

                    if (start == 1'b1 && fifo_empty == 1'b0) begin
                        fifo_rd_en <= 1'b1;
                        busy       <= 1'b1;
                    end
                    else begin
                        fifo_rd_en <= 1'b0;
                    end
                end

                LOAD: begin
                    fifo_rd_en   <= 1'b0;
                    axis_tvalid  <= 1'b0;
                    axis_tlast   <= 1'b0;
                    axis_tkeep   <= 4'b0000;
                    busy         <= 1'b1;
                    done         <= 1'b0;
                    debug_state  <= LOAD;
                end

                SEND: begin
                    fifo_rd_en  <= 1'b0;
                    busy        <= 1'b1;
                    done        <= 1'b0;
                    debug_state <= SEND;

                    if (axis_tvalid == 1'b0) begin
                        data_reg    <= fifo_dout;
                        axis_tdata  <= fifo_dout;
                        axis_tvalid <= 1'b1;
                        axis_tkeep  <= 4'b1111;

                        if (last_word == 1'b1)
                            axis_tlast <= 1'b1;
                        else
                            axis_tlast <= 1'b0;
                    end
                    else begin
                        axis_tdata  <= data_reg;
                        axis_tvalid <= 1'b1;
                        axis_tkeep  <= 4'b1111;

                        if (last_word == 1'b1)
                            axis_tlast <= 1'b1;
                        else
                            axis_tlast <= 1'b0;

                        if (axis_tready == 1'b1) begin
                            if (last_word == 1'b0) begin
                                word_count  <= word_count + 1'b1;
                                fifo_rd_en  <= 1'b1;
                                axis_tvalid <= 1'b0;
                                axis_tlast  <= 1'b0;
                            end
                            else begin
                                fifo_rd_en  <= 1'b0;
                                axis_tvalid <= 1'b0;
                                axis_tlast  <= 1'b0;
                            end
                        end
                    end
                end

                DONE: begin
                    fifo_rd_en   <= 1'b0;
                    axis_tdata   <= {DATA_WIDTH{1'b0}};
                    axis_tvalid  <= 1'b0;
                    axis_tlast   <= 1'b0;
                    axis_tkeep   <= 4'b0000;
                    busy         <= 1'b0;
                    done         <= 1'b1;
                    debug_state  <= DONE;
                end

                default: begin
                    fifo_rd_en   <= 1'b0;
                    axis_tdata   <= {DATA_WIDTH{1'b0}};
                    axis_tvalid  <= 1'b0;
                    axis_tlast   <= 1'b0;
                    axis_tkeep   <= 4'b0000;
                    busy         <= 1'b0;
                    done         <= 1'b0;
                    word_count   <= 4'd0;
                    data_reg     <= {DATA_WIDTH{1'b0}};
                    debug_state  <= IDLE;
                end

            endcase
        end
    end

endmodule