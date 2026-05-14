
`timescale 1ns / 1ps

module packet_builder_FSM #(

    parameter DATA_WIDTH  = 32,
    parameter DATA_COUNT  = 6,
    parameter HEADER_VALUE = 32'hA5A50001
    )(
    input clk,
    input rst,
    input start,
    input data_valid,
    input  [DATA_WIDTH- 1:0] data_in,

    output reg [DATA_WIDTH-1:0] packet_word_out,
    output reg packet_valid,
    output reg packet_done
    );

   
    reg [2:0] state;
    reg [2:0] next_state;
    reg [2:0] data_index ;
    reg [DATA_WIDTH-1:0] checksum;

    parameter IDLE = 3'd0;
    parameter SEND_HEADER = 3'd1;
    parameter SEND_LENGTH = 3'd2;
    parameter SEND_DATA = 3'd3;
    parameter SEND_CHECKSUM = 3'd4;
    parameter DONE = 3'd5;

    always@ (posedge clk)
    begin
        if (rst == 1'b1 )
            state <= IDLE;
        else
            state <= next_state;
    end

    always@ (*)
        begin
            next_state = state;

        case (state)
        IDLE: begin
            if (start == 1'b1)
                next_state = SEND_HEADER;
            else 
                next_state = IDLE;
            end
         
         SEND_HEADER: begin
            next_state = SEND_LENGTH;
         end

         SEND_LENGTH: begin
            next_state = SEND_DATA;
         end

         SEND_DATA: begin
            if (data_valid == 1'b0)
             next_state = SEND_DATA;
            else if (data_index == DATA_COUNT -1)
                next_state = SEND_CHECKSUM; 
            else
                next_state = SEND_DATA;
         end

         SEND_CHECKSUM: begin
            next_state = DONE;
         end

         DONE: begin
            next_state = IDLE;
         end

         default: begin
            next_state = IDLE;
         end

         endcase
         end

    always@ (posedge clk)
    begin
        if (rst == 1'b1)
         begin
            checksum <=0;
            packet_valid <=0;
            packet_word_out <=0;
            packet_done <=0;
            data_index <=0;
         end
        else begin
            case (state)
               IDLE: begin
                checksum        <= 0;
                data_index      <= 0;
                packet_valid    <= 0;
                packet_done     <= 0;
                packet_word_out <= 0;

                end

                SEND_HEADER: begin
                    packet_word_out <= HEADER_VALUE;
                    packet_valid <= 1;
                end

                SEND_LENGTH: begin
                     packet_word_out <= DATA_COUNT;
                     packet_valid <= 1'b1;
                    end

                SEND_DATA: begin
                    if (data_valid == 1'b1) begin
                     packet_word_out <= data_in;
                     packet_valid <= 1'b1;
                     checksum <= checksum + data_in;
                     data_index <= data_index + 1;

                    end

                    else begin
                     packet_word_out <=1'b0;
                      packet_valid <= 1'b0;
                       packet_done     <= 1'b0;
                      
                end
                end

                SEND_CHECKSUM: begin
                    packet_word_out <= checksum;
                    packet_valid <= 1'b1;
                end

                DONE: begin
                    packet_done <=1'b1;
                    packet_valid <= 1'b0;
                end

                default: begin
                 checksum        <= 0;
                 data_index      <= 0;
                 packet_valid    <= 0;
                 packet_done     <= 0;
                 packet_word_out <= 0;
                end
                
            endcase
        end
    end





    

    



              

    
        







 endmodule