// IC Compiler II Version W-2024.09 Verilog Writer
// Generated on 4/5/2026 at 5:45:46
// Library Name: updown_counter_LIB
// Block Name: updown_counter
// User Label: 
// Write Command: write_verilog -exclude { pg_objects } ./outputs/updown_counter_final.v
module updown_counter ( Clock , rst , dir , count ) ;
input  Clock ;
input  rst ;
input  dir ;
output [3:0] count ;

wire N14 ;
wire N15 ;
wire N16 ;
wire n6 ;
wire n7 ;
wire n8 ;
wire n9 ;
wire n10 ;
wire n11 ;
wire n12 ;
wire copt_net_0 ;
wire copt_net_1 ;
wire copt_net_3 ;
wire copt_net_4 ;
wire SYNOPSYS_UNCONNECTED_1 ;
wire SYNOPSYS_UNCONNECTED_2 ;
wire SYNOPSYS_UNCONNECTED_3 ;
wire SYNOPSYS_UNCONNECTED_4 ;

DFFARX1_RVT \count_reg[0] ( .D ( copt_net_0 ) , .CLK ( Clock ) , 
    .RSTB ( n6 ) , .Q ( count[0] ) , .QN ( n12 ) ) ;
DFFARX1_RVT \count_reg[1] ( .D ( copt_net_4 ) , .CLK ( Clock ) , 
    .RSTB ( n6 ) , .Q ( count[1] ) , .QN ( SYNOPSYS_UNCONNECTED_1 ) ) ;
DFFARX1_RVT \count_reg[2] ( .D ( copt_net_1 ) , .CLK ( Clock ) , 
    .RSTB ( n6 ) , .Q ( count[2] ) , .QN ( n11 ) ) ;
DFFARX1_RVT \count_reg[3] ( .D ( copt_net_3 ) , .CLK ( Clock ) , 
    .RSTB ( n6 ) , .Q ( count[3] ) , .QN ( SYNOPSYS_UNCONNECTED_2 ) ) ;
INVX0_RVT U12 ( .A ( n9 ) , .Y ( N14 ) ) ;
INVX0_RVT U13 ( .A ( n7 ) , .Y ( n8 ) ) ;
INVX0_RVT U14 ( .A ( rst ) , .Y ( n6 ) ) ;
FADDX1_RVT U15 ( .A ( dir ) , .B ( count[1] ) , .CI ( count[0] ) , 
    .CO ( n7 ) , .S ( n9 ) ) ;
FADDX1_RVT U16 ( .A ( n9 ) , .B ( n7 ) , .CI ( n11 ) , 
    .CO ( SYNOPSYS_UNCONNECTED_3 ) , .S ( N15 ) ) ;
OA222X1_RVT U17 ( .A1 ( n9 ) , .A2 ( n8 ) , .A3 ( N14 ) , .A4 ( count[2] ) , 
    .A5 ( n7 ) , .A6 ( n11 ) , .Y ( n10 ) ) ;
HADDX1_RVT U18 ( .A0 ( count[3] ) , .B0 ( n10 ) , 
    .C1 ( SYNOPSYS_UNCONNECTED_4 ) , .SO ( N16 ) ) ;
DELLN2X2_RVT copt_h_inst_690 ( .A ( n12 ) , .Y ( copt_net_0 ) ) ;
DELLN1X2_RVT copt_h_inst_691 ( .A ( N15 ) , .Y ( copt_net_1 ) ) ;
DELLN1X2_RVT copt_h_inst_693 ( .A ( N16 ) , .Y ( copt_net_3 ) ) ;
DELLN1X2_RVT copt_h_inst_694 ( .A ( N14 ) , .Y ( copt_net_4 ) ) ;
endmodule


