`timescale 	1ns				/ 100ps
//`include "Demux_1x2_8Bits.v"
`include "Demux_1x2_8Bits.v"
//`include "Demux_1x2_8Bits_estructural.v"
`include "probadorDemux1x2_8Bits.v"
//`include "cmos_cells.v"



module BancoPruebaDemux1x2_8Bits; // Testbench
	// Por lo general, las señales en el banco de pruebas son wires.
	// No almacenan un valor, son manejadas por otras instancias de módulos.
	/*AUTOWIRE*/
	// Beginning of automatic wires (for undeclared instantiated-module outputs)
	wire [7:0]	In;			// From prob of probadorDemux1x2_8Bits.v
	wire		clk;			// From prob of probadorDemux1x2_8Bits.v
	wire		clk2;			// From prob of probadorDemux1x2_8Bits.v
	wire		clk4;			// From prob of probadorDemux1x2_8Bits.v
	wire [7:0]	data_out0;		// From Demux_1x4_conductual of Demux_1x2_8Bits.v
	wire [7:0]	data_out0_estructural;	// From Demux_1x2_estructural of Demux_1x2_8Bits_estructural.v
	wire [7:0]	data_out1;		// From Demux_1x4_conductual of Demux_1x2_8Bits.v
	wire [7:0]	data_out1_estructural;	// From Demux_1x2_estructural of Demux_1x2_8Bits_estructural.v
	wire		outValid0;		// From Demux_1x4_conductual of Demux_1x2_8Bits.v
	wire		outValid0_estructural;	// From Demux_1x2_estructural of Demux_1x2_8Bits_estructural.v
	wire		outValid1;		// From Demux_1x4_conductual of Demux_1x2_8Bits.v
	wire		outValid1_estructural;	// From Demux_1x2_estructural of Demux_1x2_8Bits_estructural.v
	wire		validIn;		// From prob of probadorDemux1x2_8Bits.v
	// End of automatics

	// End of automatics


    Demux_1x2_8Bits Demux_1x4_conductual( /*AUTOINST*/
					 // Outputs
					 .outValid0		(outValid0),
					 .outValid1		(outValid1),
					 .data_out0		(data_out0[7:0]),
					 .data_out1		(data_out1[7:0]),
					 // Inputs
					 .In			(In[7:0]),
					 .clk4			(clk4),
					 .clk2			(clk2),
					 .clk			(clk),
					 .validIn		(validIn));

	Demux_1x2_8Bits_estructural Demux_1x2_estructural( /*AUTOINST*/
							  // Outputs
							  .data_out0_estructural(data_out0_estructural[7:0]),
							  .data_out1_estructural(data_out1_estructural[7:0]),
							  .outValid0_estructural(outValid0_estructural),
							  .outValid1_estructural(outValid1_estructural),
							  // Inputs
							  .In			(In[7:0]),
							  .clk			(clk),
							  .clk2			(clk2),
							  .clk4			(clk4),
							  .validIn		(validIn));
  
	probadorDemux1x2_8Bits prob( /*AUTOINST*/
				    // Outputs
				    .clk		(clk),
				    .clk2		(clk2),
				    .clk4		(clk4),
				    .validIn		(validIn),
				    .In			(In[7:0]),
				    // Inputs
				    .outValid0		(outValid0),
				    .outValid1		(outValid1),
				    .data_out0		(data_out0[7:0]),
				    .data_out1		(data_out1[7:0]));
 
/*
	Mux4x1_4Bits Mux4x1Conductual( .valid(valid), .selector(selector), .data_in0(data_in0), .data_in1(data_in1), .data_in2(data_in2), .data_in3(data_in3), .data_out(data_outCond));
    Mux4x1_4Bits_synth Mux4x1Estructural( .valid(valid), .selector(selector), .data_in0(data_in0), .data_in1(data_in1), .data_in2(data_in2), .data_in3(data_in3), .data_out(data_outEstr));
	probador prob(.clk(clk), .valid(valid), .selector(selector), .data_in0(data_in0), .data_in1(data_in1),.data_in2(data_in2), .data_in3(data_in3), .data_outConductual(data_outCond), .data_outExtructural(data_outEstr));
  */  

endmodule
