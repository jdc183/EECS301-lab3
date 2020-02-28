//
// Verilog description for cell regq, 
// Fri Feb 28 09:38:09 2020
//
// LeonardoSpectrum Level 3, 2009a.6 
//


module regq ( clk, c1, c2, ia0, ia1, ia2, ia3, ib0, ib1, ib2, ib3, ic0, ic1, ic2, 
              ic3, id0, id1, id2, id3, q0, q1, q2, q3 ) ;

    input clk ;
    input c1 ;
    input c2 ;
    input ia0 ;
    input ia1 ;
    input ia2 ;
    input ia3 ;
    input ib0 ;
    input ib1 ;
    input ib2 ;
    input ib3 ;
    input ic0 ;
    input ic1 ;
    input ic2 ;
    input ic3 ;
    input id0 ;
    input id1 ;
    input id2 ;
    input id3 ;
    output q0 ;
    output q1 ;
    output q2 ;
    output q3 ;

    wire nx2, nx18, nx28, nx48, nx68, nx88, nx136, nx139, nx141, nx147, nx149, 
         nx154, nx156, nx161, nx163, nx171;
    wire [3:0] \$dummy ;




    dff reg_q_0 (.Q (q3), .QB (\$dummy [0]), .D (nx28), .CLK (clk)) ;
    nand02_2x ix29 (.Y (nx28), .A0 (nx136), .A1 (nx139)) ;
    aoi32 ix137 (.Y (nx136), .A0 (id3), .A1 (c1), .A2 (c2), .B0 (ia3), .B1 (nx18
          )) ;
    nor02_2x ix19 (.Y (nx18), .A0 (c1), .A1 (c2)) ;
    aoi32 ix140 (.Y (nx139), .A0 (ib3), .A1 (nx141), .A2 (c2), .B0 (ic3), .B1 (
          nx171)) ;
    inv02 ix142 (.Y (nx141), .A (c1)) ;
    dff reg_q_1 (.Q (q2), .QB (\$dummy [1]), .D (nx48), .CLK (clk)) ;
    nand02_2x ix49 (.Y (nx48), .A0 (nx147), .A1 (nx149)) ;
    aoi32 ix148 (.Y (nx147), .A0 (id2), .A1 (c1), .A2 (c2), .B0 (ia2), .B1 (nx18
          )) ;
    aoi32 ix150 (.Y (nx149), .A0 (ib2), .A1 (nx141), .A2 (c2), .B0 (ic2), .B1 (
          nx171)) ;
    dff reg_q_2 (.Q (q1), .QB (\$dummy [2]), .D (nx68), .CLK (clk)) ;
    nand02_2x ix69 (.Y (nx68), .A0 (nx154), .A1 (nx156)) ;
    aoi32 ix155 (.Y (nx154), .A0 (id1), .A1 (c1), .A2 (c2), .B0 (ia1), .B1 (nx18
          )) ;
    aoi32 ix157 (.Y (nx156), .A0 (ib1), .A1 (nx141), .A2 (c2), .B0 (ic1), .B1 (
          nx171)) ;
    dff reg_q_3 (.Q (q0), .QB (\$dummy [3]), .D (nx88), .CLK (clk)) ;
    nand02_2x ix89 (.Y (nx88), .A0 (nx161), .A1 (nx163)) ;
    aoi32 ix162 (.Y (nx161), .A0 (id0), .A1 (c1), .A2 (c2), .B0 (ia0), .B1 (nx18
          )) ;
    aoi32 ix164 (.Y (nx163), .A0 (ib0), .A1 (nx141), .A2 (c2), .B0 (ic0), .B1 (
          nx171)) ;
    nor02ii ix3 (.Y (nx2), .A0 (c2), .A1 (c1)) ;
    buf02 ix170 (.Y (nx171), .A (nx2)) ;
endmodule

