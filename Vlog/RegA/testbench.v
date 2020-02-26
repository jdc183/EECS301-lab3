
module testbench;

reg	clk,c1,c2;
reg   [3:0]  ia, ib, ic, id;
wire	[3:0]	q;

	rega A (clk,c1,c2, ia, ib, ic, id, q);

	initial
	begin
		$monitor( $time,,"%b %b %b %b %b %b %b", clk,c1,c2, ia, ib, ic, id, q);
		{c1,c2} = 2'b00;
		ia = 4'b1000;
		ib = 4'b0100;
		ic = 4'b0010;
		id = 4'b0001;

		#10 clk = 0; #10 clk =1;
		{c1,c2} = 2'b01; #10 clk = 0; #10 clk =1;
		{c1,c2} = 2'b10; #10 clk = 0; #10 clk =1;
		{c1,c2} = 2'b11; #10 clk = 0; #10 clk =1;
	end

endmodule
