//
// Verilog description for cell alu, 
// Wed Feb 26 10:29:57 2020
//
// LeonardoSpectrum Level 3, 2009a.6 
//


module alu ( c1, c2, ia, ib, sum, cout ) ;

    input c1 ;
    input c2 ;
    input [3:0]ia ;
    input [3:0]ib ;
    output [3:0]sum ;
    output cout ;

    wire nx8, nx22, nx24, nx36, nx44, nx50, nx66, nx68, nx74, nx76, nx166, nx168, 
         nx170, nx173, nx175, nx178, nx181, nx184, nx189, nx192, nx195, nx198, 
         nx201, nx206, nx208;



    xor2 ix91 (.Y (sum[0]), .A0 (nx166), .A1 (nx170)) ;
    nand02_2x ix167 (.Y (nx166), .A0 (c1), .A1 (nx168)) ;
    inv02 ix169 (.Y (nx168), .A (c2)) ;
    xnor2 ix171 (.Y (nx170), .A0 (ib[0]), .A1 (nx50)) ;
    oai21 ix51 (.Y (nx50), .A0 (c1), .A1 (nx173), .B0 (nx175)) ;
    xnor2 ix174 (.Y (nx173), .A0 (ia[0]), .A1 (c2)) ;
    nand02_2x ix176 (.Y (nx175), .A0 (c1), .A1 (c2)) ;
    xor2 ix89 (.Y (sum[1]), .A0 (nx178), .A1 (nx181)) ;
    oai21 ix179 (.Y (nx178), .A0 (c1), .A1 (nx44), .B0 (ib[0])) ;
    xnor2 ix182 (.Y (nx181), .A0 (ib[1]), .A1 (nx36)) ;
    oai21 ix37 (.Y (nx36), .A0 (c1), .A1 (nx184), .B0 (nx175)) ;
    xnor2 ix185 (.Y (nx184), .A0 (ia[1]), .A1 (c2)) ;
    xnor2 ix87 (.Y (sum[2]), .A0 (nx68), .A1 (nx189)) ;
    ao21 ix69 (.Y (nx68), .A0 (nx36), .A1 (ib[1]), .B0 (nx66)) ;
    nor02_2x ix67 (.Y (nx66), .A0 (nx178), .A1 (nx181)) ;
    xnor2 ix190 (.Y (nx189), .A0 (ib[2]), .A1 (nx22)) ;
    oai21 ix23 (.Y (nx22), .A0 (c1), .A1 (nx192), .B0 (nx175)) ;
    xnor2 ix193 (.Y (nx192), .A0 (ia[2]), .A1 (c2)) ;
    xor2 ix85 (.Y (sum[3]), .A0 (nx195), .A1 (nx198)) ;
    aoi22 ix196 (.Y (nx195), .A0 (nx22), .A1 (ib[2]), .B0 (nx68), .B1 (nx24)) ;
    xnor2 ix199 (.Y (nx198), .A0 (ib[3]), .A1 (nx8)) ;
    oai21 ix9 (.Y (nx8), .A0 (c1), .A1 (nx201), .B0 (nx175)) ;
    xnor2 ix202 (.Y (nx201), .A0 (ia[3]), .A1 (c2)) ;
    xnor2 ix83 (.Y (cout), .A0 (nx76), .A1 (nx206)) ;
    ao21 ix77 (.Y (nx76), .A0 (nx8), .A1 (ib[3]), .B0 (nx74)) ;
    nor02_2x ix75 (.Y (nx74), .A0 (nx195), .A1 (nx198)) ;
    nand02_2x ix207 (.Y (nx206), .A0 (nx208), .A1 (c2)) ;
    inv02 ix209 (.Y (nx208), .A (c1)) ;
    inv02 ix45 (.Y (nx44), .A (nx173)) ;
    inv02 ix25 (.Y (nx24), .A (nx189)) ;
endmodule

