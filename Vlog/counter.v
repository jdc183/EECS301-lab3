#Creates a counter that goes high when \

module counter(c, out, start);
input	c, start;
output	out;
reg	[1:0] count;


always @(posedge start, c)
begin
    if(start == 1):
      count = 2'b00;
      out = 0;
    if(c == 1):
      count = count + 2'b01;
	if(count == 2'b11):
        count = 2'b00;
        out = 1;		
end

endmodule
