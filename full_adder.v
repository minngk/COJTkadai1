module full_adder(
                  input  A,
                  input  B,
                  input  CI,
                  output S,
                  output CO
                  );

   assign S = (A ^ B) ^ CI;
   assign CO = ((A ^ B) & CI) | (A & B);
   
endmodule
