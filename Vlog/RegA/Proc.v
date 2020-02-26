//
// Verilog description for cell rega, 
// Fri Feb 21 13:11:11 2020
//
// LeonardoSpectrum Level 3, 2009a.6 
//


module rega ( clk, c1, c2, ia, ib, ic, id, q ) ;

    input clk ;
    input c1 ;
    input c2 ;
    input [3:0]ia ;
    input [3:0]ib ;
    input [3:0]ic ;
    input [3:0]id ;
    output [3:0]q ;

    wire nx2, nx18, nx28, nx48, nx68, nx88, nx136, nx139, nx141, nx147, nx149, 
         nx154, nx156, nx161, nx163, nx171;
    wire [3:0] \$dummy ;




    dff reg_q_0 (.Q (q[0]), .QB (\$dummy [0]), .D (nx28), .CLK (clk)) ;
    nand02_2x ix29 (.Y (nx28), .A0 (nx136), .A1 (nx139)) ;
    aoi32 ix137 (.Y (nx136), .A0 (id[0]), .A1 (c1), .A2 (c2), .B0 (ia[0]), .B1 (
          nx18)) ;
    nor02_2x ix19 (.Y (nx18), .A0 (c1), .A1 (c2)) ;
    aoi32 ix140 (.Y (nx139), .A0 (ib[0]), .A1 (nx141), .A2 (c2), .B0 (ic[0]), .B1 (
          nx171)) ;
    inv02 ix142 (.Y (nx141), .A (c1)) ;
    dff reg_q_1 (.Q (q[1]), .QB (\$dummy [1]), .D (nx48), .CLK (clk)) ;
    nand02_2x ix49 (.Y (nx48), .A0 (nx147), .A1 (nx149)) ;
    aoi32 ix148 (.Y (nx147), .A0 (id[1]), .A1 (c1), .A2 (c2), .B0 (ia[1]), .B1 (
          nx18)) ;
    aoi32 ix150 (.Y (nx149), .A0 (ib[1]), .A1 (nx141), .A2 (c2), .B0 (ic[1]), .B1 (
          nx171)) ;
    dff reg_q_2 (.Q (q[2]), .QB (\$dummy [2]), .D (nx68), .CLK (clk)) ;
    nand02_2x ix69 (.Y (nx68), .A0 (nx154), .A1 (nx156)) ;
    aoi32 ix155 (.Y (nx154), .A0 (id[2]), .A1 (c1), .A2 (c2), .B0 (ia[2]), .B1 (
          nx18)) ;
    aoi32 ix157 (.Y (nx156), .A0 (ib[2]), .A1 (nx141), .A2 (c2), .B0 (ic[2]), .B1 (
          nx171)) ;
    dff reg_q_3 (.Q (q[3]), .QB (\$dummy [3]), .D (nx88), .CLK (clk)) ;
    nand02_2x ix89 (.Y (nx88), .A0 (nx161), .A1 (nx163)) ;
    aoi32 ix162 (.Y (nx161), .A0 (id[3]), .A1 (c1), .A2 (c2), .B0 (ia[3]), .B1 (
          nx18)) ;
    aoi32 ix164 (.Y (nx163), .A0 (ib[3]), .A1 (nx141), .A2 (c2), .B0 (ic[3]), .B1 (
          nx171)) ;
    nor02ii ix3 (.Y (nx2), .A0 (c2), .A1 (c1)) ;
    buf02 ix170 (.Y (nx171), .A (nx2)) ;
endmodule
