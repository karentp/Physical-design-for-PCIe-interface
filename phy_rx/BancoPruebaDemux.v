`timescale 	1ns				/ 100ps
`include "Demux_1x2_8Bits.v"
`include "probadorDemux.v"
`include "phy_tx_estruct.v"


module BancoPruebaDemux; // Testbench
	
  /*AUTOWIRE*/
  // Beginning of automatic wires (for undeclared instantiated-module outputs)
  wire [7:0]		In0;			// From prob of probadorDemux.v
  wire			clk;			// From prob of probadorDemux.v
  wire			clk2;			// From prob of probadorDemux.v
  wire			clk4;			// From prob of probadorDemux.v
  wire [7:0]		data_out0;		// From Demux1 of Demux_1x2_8Bits.v
  wire [7:0]		data_out1;		// From Demux1 of Demux_1x2_8Bits.v
  wire			outValid0;		// From Demux1 of Demux_1x2_8Bits.v
  wire			outValid1;		// From Demux1 of Demux_1x2_8Bits.v
  wire			validIn;		// From prob of probadorDemux.v
  // End of automatics




    Demux_1x2_8Bits Demux1(/*AUTOINST*/
			   // Outputs
			   .outValid0		(outValid0),
			   .outValid1		(outValid1),
			   .data_out0		(data_out0[7:0]),
			   .data_out1		(data_out1[7:0]),
			   // Inputs
			   .In0			(In0[7:0]),
			   .clk4		(clk4),
			   .clk2		(clk2),
			   .clk			(clk),
			   .validIn		(validIn));
	probadorDemux prob(/*AUTOINST*/
			   // Outputs
			   .clk4		(clk4),
			   .clk2		(clk2),
			   .clk			(clk),
			   .validIn		(validIn),
			   .In0			(In0[7:0]),
			   // Inputs
			   .data_out0		(data_out0[7:0]),
			   .data_out1		(data_out1[7:0]),
			   .outValid0		(outValid0),
			   .outValid1		(outValid1));

  

endmodule

// Local Variable:
   // eval:(verilog-read-defines)
   // eval:(verilog-read-includes)
   // End:
