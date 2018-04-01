module top(
	input clk50,
	output trig, 
	input echo,
	input clk10, 
	output [6:0] HEX0,
	output [6:0] HEX1,
	output [6:0] HEX2,
	output [6:0] HEX3,
	output [6:0] HEX4,
	output [6:0] HEX5
);
  
  wire [32:0] distance;

  sonic sc (
    clk50,
	 trig,
	 echo,
	 distance
  );
   
  shownumber sn (
    clk10,
	 HEX0, HEX1, HEX2, HEX3, HEX4, HEX5,
	 distance
  );
endmodule