`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2026 15:27:17
// Design Name: 
// Module Name: data_generator
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module data_generator(
 input clk,
 input rst,
 input start,
 input data_ready,
 output reg [31:0] data_out,
 output reg data_valid,
 output reg done  
    );

 parameter DATA_WIDTH = 32;
 parameter NUM_WORDS =6;
 reg [2:0] word_index;
 reg active;
 
 always@ (posedge clk)
  begin
    if (rst == 1'b1)
      begin
       data_out <= 32'b0;
       data_valid <= 1'b0;
       done <= 1'b0;
       word_index <= 3'b0;
       active <= 1'b0;
      end
     else
     begin
        if ((start == 1'b1) && (active == 1'b0))
           begin
           active <= 1'b1;
           word_index <= 3'b0;
           done <= 1'b0;
           data_valid <= 1'b1;
           data_out <= 32'b1;
           end
         else if ((active ==1'b1) && (data_ready == 1'b1))
              begin
              if (word_index == NUM_WORDS - 1)
               begin
               done <= 1'b1;
               active <= 1'b0;
               data_valid <= 1'b0;
               word_index <= 3'b0;
               end
              

              else
               begin
                word_index <= word_index +1;
                data_valid <= 1'b1;
                done <= 1'b0;
                active <= 1'b1;
                case (word_index)
                    3'd0: data_out <= 32'd7;
                    3'd1: data_out <= 32'd8; 
                    3'd2: data_out <= 32'd3;
                    3'd3: data_out <= 32'd6;
                    3'd4: data_out <= 32'd3; 
                    default: data_out <= 32'd0;
                endcase
               end
          end

         

            
         end
    end    
 endmodule