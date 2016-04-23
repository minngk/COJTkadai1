module half_adder(
                  input A,
                  input B,
                  output S,
                  output CO
                  );

   assign S = (A ^ B);
   assign CO = (A & B);

endmodule
   
