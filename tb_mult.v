`timescale 1ns/10ps

module tb_mult;

   // define parameter
   parameter CYCLE = 100;

   // define sign
   reg clk;
   reg [7:0] a;
   reg [7:0] b;
   reg [8:0] i,j;
   wire [15:0] x;

   // tested circuit
   mult mult_a(.a(a), .b(b), .x(x));

   // define clk
   always #(CYCLE/2)
     clk = ~clk;

   // make input signal & compare expected value
   initial begin
      for (i = 0; i < 128; i = i + 1) begin
         a = i;
         for(j = 0 j < 128; j = j + 1) begin
            b = j;
            #CYCLE;

            if(x !== a*b) begin
               $display("error! expval = %h result = %h\n", a+b, x);
               $stop;
            end
         end
      end // for (i = 0; i < 128; i = i + 1)
      $display("finish\n");
      $stop;
   end
   
endmodule   
   
