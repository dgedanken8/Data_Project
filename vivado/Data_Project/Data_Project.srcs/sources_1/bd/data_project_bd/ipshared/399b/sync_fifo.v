
`timescale 1ns / 1ps

module sync_fifo #(

    parameter DATA_WIDTH = 32,
    parameter DEPTH = 16, 
    parameter ADDR_WIDTH = 4

 )(
    input clk,
    input rst,
    input wr_en,
    input rd_en,
    input [DATA_WIDTH - 1:0] din,

    output reg [DATA_WIDTH - 1:0] dout,
    output  full,
    output  empty,
    output reg [ADDR_WIDTH:0] count,
    output reg overflow,
    output reg underflow
 );

    reg [DATA_WIDTH-1:0] mem [0:DEPTH-1];
    reg [ADDR_WIDTH -1 :0] wr_pr;
    reg [ADDR_WIDTH -1 :0] rd_pr;
    wire valid_write;
    wire valid_read;

    assign full = (count == DEPTH);
    assign empty = (count ==0);
    assign valid_write = wr_en && !full;
    assign valid_read = rd_en && !empty;


    always @(posedge clk) begin
        if (rst == 1) begin
            wr_pr <= 0;
            rd_pr <= 0;
            count <= 0;
            dout <= 0;
            overflow <= 0;
            underflow <= 0;
        end
        else begin
            overflow <= 0;
            underflow <= 0;

            if (wr_en == 1 && full == 1) begin
                overflow <= 1;
            end

            if (rd_en == 1 && empty == 1) begin
                underflow <= 1;
            end

            if (valid_write == 1) begin
                mem [wr_pr] <= din;
                wr_pr <= wr_pr +1;
              
            end

             if (valid_read == 1) begin
               dout <= mem [rd_pr];
                rd_pr <= rd_pr +1;
              
            end

            case ({valid_write, valid_read}) 
                2'b00: count <= count;
                2'b01: count<= count - 1;
                2'b10: count <= count + 1;
                2'b11: count <= count;

                default:
                        count <= count;
            endcase



            


        end

        
    end





 
endmodule