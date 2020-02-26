
module rega(clk,c1,c2, ia, ib, ic, id, q);
input	clk,c1,c2;
input   [3:0]  ia, ib, ic, id;
output	[3:0]	q;
reg	[3:0]	q;



	parameter	LD0=2'b00, LD1=2'b01, LD2=2'b10,LD3=2'b11;

	always @( posedge clk)
	begin

		case({c1,c2})
		LD0: q=ia;
		LD1: q=ib;
		LD2: q=ic;
		LD3: q=id;
		endcase
	end

endmodule
