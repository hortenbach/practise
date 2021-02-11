`timescale 1 ns/10 ps   // time unit / precision

module play_tb;

  reg [7:0] a,b,c;
  reg s_clk;

  localparam period = 20;

  play uut (.clk(s_clk), .a(a), .b(b), .c(c));

  initial
    begin
    a = 1;
    b = 1;
    s_clk = 1'b0;
    forever begin
      #1 s_clk = ~s_clk; 
    end
    end


  always @(posedge s_clk) 
    begin
      a = a+1;
      b = b+a-2;
    end
endmodule