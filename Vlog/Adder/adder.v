
module adder(cin, ia, ib, sum, cout);
input	cin;
input   [3:0]  ia, ib;
output	[3:0]	sum;
reg	[3:0]	sum;
output   cout;
reg   cout;



	always @( cin or ia or ib)
	begin
		{cout,sum} = ia + ib + cin;
	end

endmodule
