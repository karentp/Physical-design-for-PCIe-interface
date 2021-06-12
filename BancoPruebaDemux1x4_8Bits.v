`timescale 	1ns				/ 100ps
`include "Demux_1x4_8Bits.v"
`include "probadorDemux1x4_8Bits.v"


module BancoPruebaDemux1x4_8Bits; // Testbench
	// Por lo general, las señales en el banco de pruebas son wires.
	// No almacenan un valor, son manejadas por otras instancias de módulos.
	/*AUTOWIRE*/
	// Beginning of automatic wires (for undeclared instantiated-module outputs)
	wire [7:0]	In;			// From prob of probadorDemux1x4_8Bits.v
	wire		clk;			// From prob of probadorDemux1x4_8Bits.v
	wire		clk0;			// From prob of probadorDemux1x4_8Bits.v
	wire		clk2;			// From prob of probadorDemux1x4_8Bits.v
	wire		clk4;			// From prob of probadorDemux1x4_8Bits.v
	wire [7:0]	data_out0;		// From Demux_1x4 of Demux_1x4_8Bits.v
	wire [7:0]	data_out1;		// From Demux_1x4 of Demux_1x4_8Bits.v
	wire [7:0]	data_out2;		// From Demux_1x4 of Demux_1x4_8Bits.v
	wire [7:0]	data_out3;		// From Demux_1x4 of Demux_1x4_8Bits.v
	wire		validIn;		// From prob of probadorDemux1x4_8Bits.v
	wire		validOut0;		// From Demux_1x4 of Demux_1x4_8Bits.v
	wire		validOut1;		// From Demux_1x4 of Demux_1x4_8Bits.v
	wire		validOut2;		// From Demux_1x4 of Demux_1x4_8Bits.v
	wire		validOut3;		// From Demux_1x4 of Demux_1x4_8Bits.v
	// End of automatics


    Demux_1x4_8Bits Demux_1x4( /*AUTOINST*/
			      // Outputs
			      .validOut0	(validOut0),
			      .validOut1	(validOut1),
			      .validOut2	(validOut2),
			      .validOut3	(validOut3),
			      .data_out0	(data_out0[7:0]),
			      .data_out1	(data_out1[7:0]),
			      .data_out2	(data_out2[7:0]),
			      .data_out3	(data_out3[7:0]),
			      // Inputs
			      .In		(In[7:0]),
			      .clk0		(clk0),
			      .clk4		(clk4),
			      .clk2		(clk2),
			      .clk		(clk),
			      .validIn		(validIn));
  
	probadorDemux1x4_8Bits prob( /*AUTOINST*/
				    // Outputs
				    .clk		(clk),
				    .clk2		(clk2),
				    .clk4		(clk4),
				    .clk0		(clk0),
				    .validIn		(validIn),
				    .In			(In[7:0]),
				    // Inputs
				    .outValid0		(outValid0),
				    .outValid1		(outValid1),
				    .outValid2		(outValid2),
				    .outValid3		(outValid3),
				    .data_out0		(data_out0[7:0]),
				    .data_out1		(data_out1[7:0]),
				    .data_out2		(data_out2[7:0]),
				    .data_out3		(data_out3[7:0]));
 
/*
	Mux4x1_4Bits Mux4x1Conductual( .valid(valid), .selector(selector), .data_in0(data_in0), .data_in1(data_in1), .data_in2(data_in2), .data_in3(data_in3), .data_out(data_outCond));
    Mux4x1_4Bits_synth Mux4x1Estructural( .valid(valid), .selector(selector), .data_in0(data_in0), .data_in1(data_in1), .data_in2(data_in2), .data_in3(data_in3), .data_out(data_outEstr));
	probador prob(.clk(clk), .valid(valid), .selector(selector), .data_in0(data_in0), .data_in1(data_in1),.data_in2(data_in2), .data_in3(data_in3), .data_outConductual(data_outCond), .data_outExtructural(data_outEstr));
  */  

endmodule
