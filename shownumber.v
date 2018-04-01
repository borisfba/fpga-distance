module shownumber(
	input i_Clk, 
	output [6:0] HEX0,
	output [6:0] HEX1,
	output [6:0] HEX2,
	output [6:0] HEX3,
	output [6:0] HEX4,
	output [6:0] HEX5,
	input [32:0] num
);

wire [3:0] d0 = num % 10;
wire [3:0] d1 = (num / 10) % 10 ;
wire [3:0] d2 = (num / 100) % 10;
wire [3:0] d3 = (num / 1000) % 10;
wire [3:0] d4 = (num / 10000) % 10;
wire [3:0] d5 = (num / 100000) % 10;

 showdigit cd0 (
	i_Clk,
	d0,
	HEX0
 );
 
 showdigit cd1 (
	i_Clk,
	d1,
	HEX1
 );
 
 showdigit cd2 (
	i_Clk,
	d2,
	HEX2
 );
 
 showdigit cd3 (
	i_Clk,
	d3,
	HEX3
 );
 
 showdigit cd4 (
	i_Clk,
	d4,
	HEX4
 );
 
 showdigit cd5 (
	i_Clk,
	d5,
	HEX5
 );
   
endmodule