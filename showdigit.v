module showdigit (
	input i_Clk,
	input [3:0] bcd,
	output [6:0] HEX0
);

reg [6:0] r_Hex_Encoding = 7'h00;

 always @(posedge i_Clk)
    begin
      case (bcd)
        4'b0000 : r_Hex_Encoding <= 7'h7E;
        4'b0001 : r_Hex_Encoding <= 7'h30;
        4'b0010 : r_Hex_Encoding <= 7'h6D;
        4'b0011 : r_Hex_Encoding <= 7'h79;
        4'b0100 : r_Hex_Encoding <= 7'h33;          
        4'b0101 : r_Hex_Encoding <= 7'h5B;
        4'b0110 : r_Hex_Encoding <= 7'h5F;
        4'b0111 : r_Hex_Encoding <= 7'h70;
        4'b1000 : r_Hex_Encoding <= 7'h7F;
        4'b1001 : r_Hex_Encoding <= 7'h7B;
        4'b1010 : r_Hex_Encoding <= 7'h77;
        4'b1011 : r_Hex_Encoding <= 7'h1F;
        4'b1100 : r_Hex_Encoding <= 7'h4E;
        4'b1101 : r_Hex_Encoding <= 7'h3D;
        4'b1110 : r_Hex_Encoding <= 7'h4F;
        4'b1111 : r_Hex_Encoding <= 7'h47;
      endcase
 end
  
 assign HEX0[0] = ~r_Hex_Encoding[6];
 assign HEX0[1] = ~r_Hex_Encoding[5];
 assign HEX0[2] = ~r_Hex_Encoding[4];
 assign HEX0[3] = ~r_Hex_Encoding[3];
 assign HEX0[4] = ~r_Hex_Encoding[2];
 assign HEX0[5] = ~r_Hex_Encoding[1];
 assign HEX0[6] = ~r_Hex_Encoding[0];
endmodule