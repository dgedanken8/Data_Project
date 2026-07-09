`timescale 1ns / 1ps

module tb_packet_builder_FSM;

reg clk;
reg rst;
reg start;
reg data_valid;
reg [31:0] data_in;

wire [31:0] packet_word_out;
wire packet_valid;
wire packet_done;
wire data_ready;

packet_builder_FSM dut (
    .clk(clk),
    .rst(rst),
    .start(start),
    .data_valid(data_valid),
    .data_in(data_in), 
    .packet_word_out(packet_word_out),
    .packet_valid(packet_valid),
    .packet_done(packet_done),
    .data_ready(data_ready)
);

always #10 clk = ~clk;

initial begin
    
    clk = 0;
    rst = 1;
    data_in = 0;
    data_valid = 0;
    start = 0;

    #20

    rst = 0;

    start = 1;

    #20

    start = 0;

    #40

    data_valid = 1;
    data_in = 1;

    #20
    data_in = 7;

    #20
    data_in = 8;

    #20
    data_in = 3;

    #20
    data_in = 6;

    #20
    data_in = 3;

    #20

    data_valid = 0;
      
    #200

    $finish;

end

endmodule