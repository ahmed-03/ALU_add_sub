`timescale 1ns / 1ps

module ALU #(
    parameter bits = 8
) (
    a,
    b,
    s,
    y,
    cOut
);
    input logic [bits-1:0] a;
    input logic [bits-1:0] b;
    input logic s;
    output logic [bits-1:0] y;
    output logic cOut;


  always @(*) begin
      {cOut, y} = s ? a - b : a + b;

  end

endmodule
