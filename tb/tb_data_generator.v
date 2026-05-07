
`timescale 1ns / 1ps

module tb_data_generator;
    reg  clk;
    reg rst;
    reg start;
    reg data_ready;
    wire [31:0] data_out;
    wire data_valid;
    wire done;

 data_generator dut (.clk(clk), .rst(rst), .start(start), .data_ready(data_ready), 
          .data_out(data_out),  .data_valid(data_valid), .done(done));

 always #10 clk =~clk;

 initial begin
 #40 

 clk =0;
 rst = 1;
 start = 0;
 data_ready = 0;

 #40

 rst = 0;
 data_ready =1;
  
  #20

 start =1;

 #20

 start = 0;
 
 #200
 $finish;
 
 end

 endmodule
