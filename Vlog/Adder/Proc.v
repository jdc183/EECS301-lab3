//
// Verilog description for cell adder, 
// Fri Feb 21 13:35:56 2020
//
// LeonardoSpectrum Level 3, 2009a.6 
//


module adder ( cin, ia, ib, sum, cout ) ;

    input cin ;
    input [3:0]ia ;
    input [3:0]ib ;
    output [3:0]sum ;
    output cout ;

    wire nx6, nx18, nx28, nx30, nx36, nx156, nx160, nx163, nx166, nx169, nx173;



    ao21 ix39 (.Y (cout), .A0 (ia[3]), .A1 (ib[3]), .B0 (nx36)) ;
    nor02_2x ix37 (.Y (nx36), .A0 (nx156), .A1 (nx166)) ;
    aoi22 ix157 (.Y (nx156), .A0 (ia[2]), .A1 (ib[2]), .B0 (nx30), .B1 (nx6)) ;
    ao21 ix31 (.Y (nx30), .A0 (ia[1]), .A1 (ib[1]), .B0 (nx28)) ;
    nor02_2x ix29 (.Y (nx28), .A0 (nx160), .A1 (nx163)) ;
    aoi22 ix161 (.Y (nx160), .A0 (ia[0]), .A1 (ib[0]), .B0 (cin), .B1 (nx18)) ;
    xnor2 ix164 (.Y (nx163), .A0 (ib[1]), .A1 (ia[1])) ;
    xnor2 ix167 (.Y (nx166), .A0 (ib[3]), .A1 (ia[3])) ;
    xnor2 ix47 (.Y (sum[0]), .A0 (cin), .A1 (nx169)) ;
    xnor2 ix170 (.Y (nx169), .A0 (ib[0]), .A1 (ia[0])) ;
    xor2 ix45 (.Y (sum[1]), .A0 (nx160), .A1 (nx163)) ;
    xnor2 ix43 (.Y (sum[2]), .A0 (nx30), .A1 (nx173)) ;
    xnor2 ix174 (.Y (nx173), .A0 (ib[2]), .A1 (ia[2])) ;
    xor2 ix41 (.Y (sum[3]), .A0 (nx156), .A1 (nx166)) ;
    inv02 ix19 (.Y (nx18), .A (nx169)) ;
    inv02 ix7 (.Y (nx6), .A (nx173)) ;
endmodule

