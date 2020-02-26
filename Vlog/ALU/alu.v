
module alu(c1, c2, ia, ib, sum, cout);
input	c1,c2;
input   [3:0]  ia, ib;
output	[3:0]	sum;
reg	[3:0]	sum;
output   cout;
reg   cout;


	parameter	Add=2'b00, Sub=2'b01, Inc=2'b10, Dec=2'b11;

	always @( c1 or c2 or ia or ib)
	begin
		case({c1,c2})
			Add: {cout,sum} = ia + ib;
			Sub: {cout,sum} = ~ia + ib;
			Inc: {cout,sum} = 4'b0001 + ib;
			Dec: {cout,sum} = 4'b1111 + ib;
		endcase
	end

endmodule

