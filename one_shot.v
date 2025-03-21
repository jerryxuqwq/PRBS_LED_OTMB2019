module one_shot
  (input wire clk,
   input wire rst,
   input wire in,
   output wire out) ;
  reg in_dly;
  assign out = in & ~in_dly;

  always @(posedge clk or posedge rst)
    if(rst)
      in_dly <= 1'b0;
    else
      in_dly <= in;

endmodule
