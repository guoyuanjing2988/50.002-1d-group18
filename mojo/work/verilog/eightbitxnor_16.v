/*
   This file was generated automatically by the Mojo IDE version B1.3.4.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module eightbitxnor_16 (
    input [7:0] a,
    input [7:0] b,
    output reg [7:0] out
  );
  
  
  
  always @* begin
    out = ~(a ^ b);
  end
endmodule
