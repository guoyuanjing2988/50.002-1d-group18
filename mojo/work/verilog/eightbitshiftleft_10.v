/*
   This file was generated automatically by the Mojo IDE version B1.3.4.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module eightbitshiftleft_10 (
    input [7:0] a,
    input [7:0] b,
    output reg [7:0] out
  );
  
  
  
  reg [7:0] x;
  
  always @* begin
    x = a;
    if (b[0+0-:1]) begin
      x = x << 1'h1;
    end
    if (b[1+0-:1]) begin
      x = x << 2'h2;
    end
    if (b[2+0-:1]) begin
      x = x << 3'h4;
    end
    out = x;
  end
endmodule
