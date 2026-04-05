/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : W-2024.09
// Date      : Sun Apr  5 05:01:05 2026
/////////////////////////////////////////////////////////////


module updown_counter ( Clock, rst, dir, count );
  output [3:0] count;
  input Clock, rst, dir;
  wire   N14, N15, N16, n6, n7, n8, n9, n10, n11, n12;

  DFFARX1_RVT \count_reg[0]  ( .D(n12), .CLK(Clock), .RSTB(n6), .Q(count[0]), 
        .QN(n12) );
  DFFARX1_RVT \count_reg[1]  ( .D(N14), .CLK(Clock), .RSTB(n6), .Q(count[1])
         );
  DFFARX1_RVT \count_reg[2]  ( .D(N15), .CLK(Clock), .RSTB(n6), .Q(count[2]), 
        .QN(n11) );
  DFFARX1_RVT \count_reg[3]  ( .D(N16), .CLK(Clock), .RSTB(n6), .Q(count[3])
         );
  INVX0_RVT U12 ( .A(n9), .Y(N14) );
  INVX0_RVT U13 ( .A(n7), .Y(n8) );
  INVX0_RVT U14 ( .A(rst), .Y(n6) );
  FADDX1_RVT U15 ( .A(dir), .B(count[1]), .CI(count[0]), .CO(n7), .S(n9) );
  FADDX1_RVT U16 ( .A(n9), .B(n7), .CI(n11), .S(N15) );
  OA222X1_RVT U17 ( .A1(n9), .A2(n8), .A3(N14), .A4(count[2]), .A5(n7), .A6(
        n11), .Y(n10) );
  HADDX1_RVT U18 ( .A0(count[3]), .B0(n10), .SO(N16) );
endmodule

