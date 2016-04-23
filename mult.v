module mult
  (
   input [7:0] a,
   input [7:0] b,
   output [7:0] x 
   );

   wire [7:0]    c0, c1, c2, c3, c4, c5, c6 c7;

   wire 
   
   makeC makeC_0(a[0], b, c0);
   makeC makeC_1(a[1], b, c1);
   makeC makeC_2(a[2], b, c2);
   makeC makeC_3(a[3], b, c3);
   makeC makeC_4(a[4], b, c4);
   makeC makeC_5(a[5], b, c5);
   makeC makeC_6(a[6], b, c6);
   makeC makeC_7(a[7], b, c7);

   /* first state */
   
   full_adder fa000(c0[2],c1[1],c2[0],s12,c12);
   full_adder fa001(c0[3],c1[2],c2[1],s13,c13);
   full_adder fa002(c0[4],c1[3],c2[2],s14,c14);
   full_adder fa003(c0[5],c1[4],c2[3],s15,c15);
   full_adder fa004(c0[6],c1[5],c2[4],s16,c16);
   full_adder fa005(c0[7],c1[6],c2[5],s17,c17);
   full_adder fa006(c1[7],c2[6],c3[5],s18,c18);
   full_adder fa007(c2[7],c3[6],c4[5],s19,c19);
   full_adder fa008(c3[7],c4[6],c5[5],s1A,c1A);
   full_adder fa009(c4[7],c5[6],c6[5],s1B,c1B);
   full_adder fa010(c5[7],c6[6],c7[5],s1C,c1C);
   
   full_adder fa012(c3[2],c4[1],c5[0],s25,c25);
   full_adder fa013(c3[3],c4[2],c5[1],s26,c26);
   full_adder fa014(c3[4],c4[3],c5[2],s27,c27);
   full_adder fa015(c4[4],c5[3],c6[2],s28,c28);
   full_adder fa016(c5[4],c6[3],c7[2],s29,s29);

   half_adder ha000(c0[1],c1[0],s11,c11);
   half_adder ha001(c3[1],c4[0],s24,c24);
   half_adder ha002(c6[1],c7[0],s37,c37);
   half_adder ha003(c6[4],c7[3],s2A,c2A);
   half_adder ha004(c6[7],c7[6],s1D,c1D);
   
   /* second state */

   full_adder fa100(s13,c12,c3[0],s29,s29);
   full_adder fa101(s14,c13,s24,s29,s29);
   full_adder fa102(s15,c14,s25,s29,s29);
   full_adder fa103(s16,c15,s26,s29,s29);
   full_adder fa104(s17,c16,s27,s29,s29);
   full_adder fa105(s18,c17,s28,s29,s29);
   full_adder fa106(s19,c18,s29,s29,s29);
   full_adder fa107(s1A,c19,s2A,s29,s29);
   full_adder fa108(s1B,c1A,c7[4],s29,s29);
   
   full_adder fa109(c27,c7[1],c37,);
   
   half_adder ha100(s12,c11,);
   half_adder ha101(c25,c6[0],);
   half_adder ha102(c26,s37,);

   
   
   
   
   

   
endmodule
   
   
        
   
