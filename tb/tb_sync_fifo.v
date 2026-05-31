
`timescale 1ns / 1ps

module tb_sync_fifo;

    reg clk;
    reg rst;
    reg wr_en;
    reg rd_en;
    reg [31:0] din;

    wire  [31:0] dout;
    wire  full;
    wire  empty;
    wire [4:0] count;
    wire overflow;
    wire underflow;

    integer error_count;
    integer i;
    reg [31:0] expe_packet [8:0]; 

   sync_fifo dut ( .clk(clk), .rst(rst), .wr_en(wr_en), .rd_en(rd_en), .din(din),.dout(dout),
                    .full(full), .empty(empty), .count(count), .overflow(overflow), .underflow(underflow));

   always #5 clk= ~clk;

   initial begin
    
    clk =0;
    rst = 1;
    wr_en = 0;
    rd_en = 0;
    din = 0;
    error_count = 0;

    expe_packet [0]= 32'hA5A50001;
    expe_packet [1]= 32'h00000006;
    expe_packet [2]= 32'h00000001;
    expe_packet [3]= 32'h00000007;
    expe_packet [4]= 32'h00000008;
    expe_packet [5]= 32'h00000003;
    expe_packet [6]= 32'h00000006;
    expe_packet [7]= 32'h00000003;
    expe_packet [8]= 32'h0000001c;

    repeat(2) @(posedge clk);
    #1;

    if (count !== 5'd0) begin
        $display ("ERROR: count after reset is not 0. count %0d", count);
            error_count = error_count + 1;
     end
    else begin
        $display ("PASS: count after reset is 0");
    end

    if (empty !== 1'b1) begin
        $display ("ERROR: empty after reset is not 1. empty = %b", empty);
             error_count = error_count + 1;
     end
    else begin
        $display ("PASS: empty after reset is 1.");
    end

    if (full !== 1'b0) begin
        $display ("ERROR: full after reset is not 0. full = %b", full);
             error_count = error_count + 1;
     end 
    else begin
        $display ("PASS: full after reset is 0");
    end

    if (overflow !== 1'b0) begin
    $display("ERROR: overflow after reset is not 0. overflow = %b", overflow);
    error_count = error_count + 1;
    end
    else begin
    $display("PASS: overflow after reset is 0");
    end

    if (underflow !== 1'b0) begin
    $display("ERROR: underflow after reset is not 0. overflow = %b" , underflow);
    error_count = error_count + 1;
    end
    else begin
    $display("PASS: underflow after reset is 0");
    end

    if (dout !== 32'd0) begin
    $display("ERROR: dout after reset is not 0. dout = %h", dout);
    error_count = error_count + 1;
    end
    else begin
    $display("PASS: dout after reset is 0");
    end


    rst = 0;
    

    repeat (2) @(posedge clk);
    #1;

    for (i =0 ;i < 9 ;i = i +1 ) begin
        din = expe_packet [i];
        wr_en = 1'b1;
        rd_en = 1'b0;

        @(posedge clk);
        #1;
    
    end

      wr_en = 1'b0;
      din = 32'd0;

    #1;

     for (i =0 ;i < 9 ;i = i +1 ) begin
  
        wr_en = 1'b0;
        rd_en = 1'b1;

          @(posedge clk);
          #1;

          rd_en = 1'b0;

          if (dout !== expe_packet [i]) begin
            $display ("ERROR: read packet [%0d] mismatch. expected = %h, got =%h", i, expe_packet [i], dout);
            error_count = error_count +1;
          end

          else begin
            $display ("PASS: read packet [%0d]=%h", i ,dout);
          end
        end

 

$display("Starting Full + Overflow waveform simulation...");

// Fill FIFO to full
for (i = 0; i < 16; i = i + 1) begin
    din   = 32'h00001000 + i;
    wr_en = 1'b1;
    rd_en = 1'b0;

    @(posedge clk);
    #1;
end

wr_en = 1'b0;
din   = 32'd0;

repeat(2) @(posedge clk);
#1;


din   = 32'hDEADBEEF;
wr_en = 1'b1;
rd_en = 1'b0;

@(posedge clk);
#1;

wr_en = 1'b0;
din   = 32'd0;

 repeat(2) @(posedge clk);
 #1;


 for (i = 0; i < 16; i = i + 1) begin
    wr_en = 1'b0;
    rd_en = 1'b1;

    @(posedge clk);
    #1;
 end

 rd_en = 1'b0;

 repeat(2) @(posedge clk);
 #1;


 wr_en = 1'b0;
 rd_en = 1'b1;

 @(posedge clk);
 #1;

 rd_en = 1'b0;

 repeat(2) @(posedge clk);
 #1;




   if(error_count ==0) begin
     $display ("TEST PASSED");
   end
   else begin
    $display ("TEST FAILED with %0d errors", error_count );
   end

    $finish;
   end

endmodule
