/*
   This file was generated automatically by the Mojo IDE version B1.3.4.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module eightbitdivider_16 (
    input [7:0] a,
    input [7:0] b,
    output reg [7:0] out
  );
  
  
  
  integer x;
  integer y;
  integer z;
  
  integer count;
  
  integer i;
  
  always @* begin
    count = 1'h1;
    x = 1'h0;
    for (i = 1'h0; i < 4'h8; i = i + 1) begin
      x = x + count * a[(i)*1+0-:1];
      count = count * 2'h2;
    end
    count = 1'h1;
    y = 1'h0;
    for (i = 1'h0; i < 4'h8; i = i + 1) begin
      y = y + count * b[(i)*1+0-:1];
      count = count * 2'h2;
    end
    z = x / y;
    for (i = 1'h0; i < 4'h8; i = i + 1) begin
      out[(i)*1+0-:1] = z - z / 2'h2 * 2'h2;
      z = z / 2'h2;
    end
  end
endmodule
