`timescale 1ns / 1ps


module Clk_Div(
input clk, 
output reg divided_clk = 1 
    );

localparam divisor = 24999999;

integer counterValue = 0;


always @ (posedge clk) 
begin
	
	if (counterValue == divisor)
		counterValue <= 0; 
	else
		counterValue <= counterValue + 1; 

end


always @ (posedge clk)
begin
	
	if (counterValue == divisor)
		divided_clk <= ~divided_clk; 
	else
		divided_clk <= divided_clk; 
		
end


endmodule


