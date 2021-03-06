module FFJK(input enable, reset, clk, J, K, output wire Q);

wire D;

assign D = (J & ~Q) | (~K & Q);

FFD F1(enable, reset, clk, D, Q);


endmodule






module FFD(input enable, reset, clk, D, output  reg Q);

always @ (posedge clk, posedge reset)
begin
  begin
  if (reset)
    Q <= 0;
  else if (~enable)
    Q <=Q;
  else
  Q <= D;
  end
end
  endmodule
