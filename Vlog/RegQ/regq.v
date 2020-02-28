
module regq(clk,c1,c2, ia0,ia1,ia2,ia3, ib0,ib1,ib2,ib3, ic0,ic1,ic2,ic3, 
		       id0,id1,id2,id3, q0,q1,q2,q3);
input	clk,c1,c2,ia0,ia1,ia2,ia3, ib0,ib1,ib2,ib3, ic0,ic1,ic2,ic3,
                      id0,id1,id2,id3;
output	q0, q1, q2, q3;
reg	[3:0]	q;

//	assign {ia0,ia1,ia2,ia3} = ia;
//	assign {ib0,ib1,ib2,ib3} = ib;
//	assign {ic0,ic1,ic2,ic3} = ic;
//	assign {id0,id1,id2,id3} = id;

	assign {q0,q1,q2,q3} = q;
	parameter	LD0=2'b00, LD1=2'b01, LD2=2'b10,LD3=2'b11;

	always @( posedge clk)
	begin

		case({c1,c2})
		LD0: q={ia0,ia1,ia2,ia3};
		LD1: q={ib0,ib1,ib2,ib3};
		LD2: q={ic0,ic1,ic2,ic3};
		LD3: q={id0,id1,id2,id3};
		endcase
	end

endmodule
