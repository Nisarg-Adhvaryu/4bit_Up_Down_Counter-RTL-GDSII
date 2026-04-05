// IC Compiler II Version W-2024.09 Verilog Writer
// Generated on 4/4/2026 at 7:28:30
// Library Name: FULL_ADDER_LIB
// Block Name: full_adder
// User Label: 
// Write Command: write_verilog -exclude { pg_objects } ./outputs/full_adder_final.v
module full_adder ( A , B , C_in , C_out , Clock , SUM ) ;
input  [3:0] A ;
input  [3:0] B ;
input  C_in ;
output C_out ;
input  Clock ;
output [3:0] SUM ;

wire c_in ;
wire \intadd_0/n4 ;
wire \intadd_0/n3 ;
wire \intadd_0/n2 ;
wire \intadd_0/n1 ;
wire [3:0] reg1 ;
wire [3:0] reg2 ;
wire [3:0] sum_i ;
wire copt_net_0 ;
wire copt_net_1 ;
wire copt_net_3 ;
wire copt_net_5 ;
wire copt_net_6 ;
wire SYNOPSYS_UNCONNECTED_1 ;
wire SYNOPSYS_UNCONNECTED_2 ;
wire SYNOPSYS_UNCONNECTED_3 ;
wire SYNOPSYS_UNCONNECTED_4 ;
wire SYNOPSYS_UNCONNECTED_5 ;
wire SYNOPSYS_UNCONNECTED_6 ;
wire SYNOPSYS_UNCONNECTED_7 ;
wire SYNOPSYS_UNCONNECTED_8 ;
wire SYNOPSYS_UNCONNECTED_9 ;
wire SYNOPSYS_UNCONNECTED_10 ;
wire SYNOPSYS_UNCONNECTED_11 ;
wire SYNOPSYS_UNCONNECTED_12 ;
wire SYNOPSYS_UNCONNECTED_13 ;
wire SYNOPSYS_UNCONNECTED_14 ;

DFFX1_RVT \reg1_reg[3] ( .D ( A[3] ) , .CLK ( Clock ) , .Q ( reg1[3] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_1 ) ) ;
DFFX1_RVT \reg1_reg[2] ( .D ( A[2] ) , .CLK ( Clock ) , .Q ( reg1[2] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_2 ) ) ;
DFFX1_RVT \reg1_reg[1] ( .D ( A[1] ) , .CLK ( Clock ) , .Q ( reg1[1] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_3 ) ) ;
DFFX1_RVT \reg1_reg[0] ( .D ( A[0] ) , .CLK ( Clock ) , .Q ( reg1[0] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_4 ) ) ;
DFFX1_RVT \reg2_reg[3] ( .D ( B[3] ) , .CLK ( Clock ) , .Q ( reg2[3] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_5 ) ) ;
DFFX1_RVT \reg2_reg[2] ( .D ( B[2] ) , .CLK ( Clock ) , .Q ( reg2[2] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_6 ) ) ;
DFFX1_RVT \reg2_reg[1] ( .D ( B[1] ) , .CLK ( Clock ) , .Q ( reg2[1] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_7 ) ) ;
DFFX1_RVT \reg2_reg[0] ( .D ( B[0] ) , .CLK ( Clock ) , .Q ( reg2[0] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_8 ) ) ;
DFFX1_RVT c_in_reg ( .D ( C_in ) , .CLK ( Clock ) , .Q ( c_in ) , 
    .QN ( SYNOPSYS_UNCONNECTED_9 ) ) ;
DFFX1_RVT \SUM_reg[3] ( .D ( copt_net_5 ) , .CLK ( Clock ) , .Q ( SUM[3] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_10 ) ) ;
DFFX1_RVT \SUM_reg[2] ( .D ( copt_net_0 ) , .CLK ( Clock ) , .Q ( SUM[2] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_11 ) ) ;
DFFX1_RVT \SUM_reg[1] ( .D ( copt_net_3 ) , .CLK ( Clock ) , .Q ( SUM[1] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_12 ) ) ;
DFFX1_RVT \SUM_reg[0] ( .D ( copt_net_1 ) , .CLK ( Clock ) , .Q ( SUM[0] ) , 
    .QN ( SYNOPSYS_UNCONNECTED_13 ) ) ;
DFFX1_RVT C_out_reg ( .D ( copt_net_6 ) , .CLK ( Clock ) , .Q ( C_out ) , 
    .QN ( SYNOPSYS_UNCONNECTED_14 ) ) ;
FADDX1_RVT \intadd_0/U5 ( .A ( c_in ) , .B ( reg1[0] ) , .CI ( reg2[0] ) , 
    .CO ( \intadd_0/n4 ) , .S ( sum_i[0] ) ) ;
FADDX1_RVT \intadd_0/U4 ( .A ( reg1[1] ) , .B ( \intadd_0/n4 ) , 
    .CI ( reg2[1] ) , .CO ( \intadd_0/n3 ) , .S ( sum_i[1] ) ) ;
FADDX1_RVT \intadd_0/U3 ( .A ( reg1[2] ) , .B ( \intadd_0/n3 ) , 
    .CI ( reg2[2] ) , .CO ( \intadd_0/n2 ) , .S ( sum_i[2] ) ) ;
FADDX1_RVT \intadd_0/U2 ( .A ( reg1[3] ) , .B ( \intadd_0/n2 ) , 
    .CI ( reg2[3] ) , .CO ( \intadd_0/n1 ) , .S ( sum_i[3] ) ) ;
DELLN1X2_RVT copt_h_inst_908 ( .A ( sum_i[2] ) , .Y ( copt_net_0 ) ) ;
DELLN1X2_RVT copt_h_inst_909 ( .A ( sum_i[0] ) , .Y ( copt_net_1 ) ) ;
DELLN1X2_RVT copt_h_inst_911 ( .A ( sum_i[1] ) , .Y ( copt_net_3 ) ) ;
DELLN1X2_RVT copt_h_inst_913 ( .A ( sum_i[3] ) , .Y ( copt_net_5 ) ) ;
DELLN1X2_RVT copt_h_inst_914 ( .A ( \intadd_0/n1 ) , .Y ( copt_net_6 ) ) ;
endmodule


