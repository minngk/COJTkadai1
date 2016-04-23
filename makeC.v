module makeC(
                input  ai,
                input [7:0] b,
                output [7:0] ci
             );

   assign ci[0] = b[0]& ai;
   assign ci[1] = b[1]& ai;
   assign ci[2] = b[2]& ai;
   assign ci[3] = b[3]& ai;
   assign ci[4] = b[4]& ai;
   assign ci[5] = b[5]& ai;
   assign ci[6] = b[6]& ai;
   assign ci[7] = b[7]& ai;
   
   
endmodule
