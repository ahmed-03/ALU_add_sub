`timescale 1ns / 1ps

module tb_ALU #(parameter bits = 8);
     logic [bits-1:0] a;
     logic [bits-1:0] b;
     logic s;
     logic [bits-1:0] y;
     logic cOut;
    
ALU #(bits) alu1(
    .a(a),
    .b(b),
    .s(s),
    .y(y),
    .cOut(cOut)
);

  initial begin
  a = 8'haa;
  b = 8'h33;
  s = 1'b1;#5
  
  a = 8'hff;
  b = 8'h00;
  s = 1'b1;#5
  
  a = 8'hff;
  b = 8'h01;
  s = 1'b0;#5
  
  a = 8'h77;
  b = 8'h11;
  s = 1'b0;#5
  $finish;
  end

endmodule
