`timescale 1ns / 1ps


module TestBench;

			

	reg clk = 1;


	wire secclk;
	wire [2:0] TL_1;
	wire [2:0] TL_2;
	wire [2:0] TL_3;
	wire [2:0] TL_4;
	wire PED_1;
	wire PED_2;
	wire PED_3;
	wire PED_4;



	Four_Way_Traffic_Lights uut (
		.clk(clk),
		.secclk(secclk),
		.TL_1(TL_1),
		.TL_2(TL_2),
		.TL_3(TL_3),
		.TL_4(TL_4),
		.PED_1(PED_1),
		.PED_2(PED_2),
		.PED_3(PED_3),
		.PED_4(PED_4)
	);


always #10 clk = ~clk; 

endmodule


      

