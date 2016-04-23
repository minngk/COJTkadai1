module mult
  (
   input [7:0] a,
   input [7:0] b,
   output [15:0] x 
   );

   wire [7:0]    c0, c1, c2, c3, c4, c5, c6 c7;
   wire [15:0]   x1, x2;
   
   makeC makeC_0(a[0], b, c0);
   makeC makeC_1(a[1], b, c1);
   makeC makeC_2(a[2], b, c2);
   makeC makeC_3(a[3], b, c3);
   makeC makeC_4(a[4], b, c4);
   makeC makeC_5(a[5], b, c5);
   makeC makeC_6(a[6], b, c6);
   makeC makeC_7(a[7], b, c7);

   /* Wallance tree */
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
   full_adder fa016(c5[4],c6[3],c7[2],s29,c29);

   half_adder ha000(c0[1],c1[0],s11,c11);
   half_adder ha001(c3[1],c4[0],s24,c24);
   half_adder ha002(c6[1],c7[0],s37,c37);
   half_adder ha003(c6[4],c7[3],s2A,c2A);
   half_adder ha004(c6[7],c7[6],s1D,c1D);
   
   /* second state */

   full_adder fa100(s13,c12,c3[0],s43,c43);
   full_adder fa101(s14,c13,s24,s44,c44);
   full_adder fa102(s15,c14,s25,s45,c45);
   full_adder fa103(s16,c15,s26,s46,c46);
   full_adder fa104(s17,c16,s27,s47,c47);
   full_adder fa105(s18,c17,s28,s48,c48);
   full_adder fa106(s19,c18,s29,s49,c49);
   full_adder fa107(s1A,c19,s2A,s4A,c4A);
   full_adder fa108(s1B,c1A,c7[4],s4B,c4B);
   
   full_adder fa109(c27,c7[1],s58,c58);
   
   half_adder ha100(s12,c11,s42,c42);
   half_adder ha101(c25,c6[0],s56,c56);
   half_adder ha102(c26,s37,s57,c57);

   /* third state */
   
   full_adder fa200(s45,c44,c24,s65,c65);
   full_adder fa201(s46,c45,s56,s66,c66);
   full_adder fa202(s47,c46,s57,s67,c67);
   full_adder fa203(s48,c47,s58,s68,c68);
   full_adder fa204(s49,c48,c28,s69,c69);
   full_adder fa205(s4A,c49,c29,s6A,c6A);
   full_adder fa206(s4B,c4A,c2A,s6B,c6B);
   full_adder fa207(s4C,c4B,c2B,s6C,c6C);
   
   half_adder ha200(s43,c42,s63,c63);
   half_adder ha201(s44,c43,s64,c64);

   /* forth state  */
   
   full_adder fa300(s67,c66,c56,s77,c77);
   full_adder fa301(s68,c67,c57,s78,c78);
   full_adder fa302(s69,c68,c58,s79,c79);
   full_adder fa303(s1D,c1C,c6C,s7D,c7D);

   half_adder ha300(s64,c63,s74,c74);
   half_adder ha301(s65,c63,s75,c75);
   half_adder ha302(s66,c63,s76,c76);
   half_adder ha303(s6A,c63,s77,c77);
   half_adder ha304(s6B,c63,s78,c78);
   half_adder ha305(s6C,c63,s7A,c7A);
   half_adder ha306(c7[7],c1D,s7B,c7B);

   /* make add souce */

   /* make first add souce x1 */
   
   assign x1[0] = c0[0];
   assign x1[1] = s11;
   assign x1[2] = s42;
   assign x1[3] = s63;
   assign x1[4] = s74;
   assign x1[5] = s75;
   assign x1[6] = s76;
   assign x1[7] = s77;
   assign x1[8] = s78;
   assign x1[9] = s79;
   assign x1[10] = s7A;
   assign x1[11] = s7B;
   assign x1[12] = s7C;
   assign x1[13] = s7D;
   assign x1[14] = s7E;
   assign x1[15] = 0;

   /* make first add souce x1 */
   
   assign x2[0] = 0;
   assign x2[1] = 0;
   assign x2[2] = 0;
   assign x2[3] = 0;
   assign x2[4] = 0;
   assign x2[5] = c74;
   assign x2[6] = c75;
   assign x2[7] = c76;
   assign x2[8] = c77;
   assign x2[9] = c78;
   assign x2[10] = c79;
   assign x2[11] = c7A;
   assign x2[12] = c7B;
   assign x2[13] = c7C;
   assign x2[14] = c7D;
   assign x2[15] = c7E;
   
   /* add */

   assign x = x1 + x2;
   
endmodule
