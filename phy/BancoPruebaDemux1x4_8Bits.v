`timescale 	1ns				/ 100ps
`include "Demux_1x4_8Bits.v"
`include "probadorDemux1x4_8Bits.v"
`include "Demux_1x4_8Bits_estructural.v"
`include "cmos_cells.v"


module BancoPruebaDemux1x4_8Bits; // Testbench
	// Por lo general, las señales en el banco de pruebas son wires.
	// No almacenan un valor, son manejadas por otras instancias de módulos.
	/*AUTOWIRE*/
	// Beginning of automatic wires (for undeclared instantiated-module outputs)
	wire [7:0]	In;			// From probador of probadorDemux1x4_8Bits.v
	wire		clk;			// From probador of probadorDemux1x4_8Bits.v
	wire		clk2;			// From probador of probadorDemux1x4_8Bits.v
	wire		clk4;			// From probador of probadorDemux1x4_8Bits.v
	wire [7:0]	data_out0_conductual;	// From conductual of Demux_1x4_8Bits.v
	wire [7:0]	data_out0_estructural;	// From estructural of Demux_1x4_8Bits_estructural.v
	wire [7:0]	data_out1_conductual;	// From conductual of Demux_1x4_8Bits.v
	wire [7:0]	data_out1_estructural;	// From estructural of Demux_1x4_8Bits_estructural.v
	wire [7:0]	data_out2_conductual;	// From conductual of Demux_1x4_8Bits.v
	wire [7:0]	data_out2_estructural;	// From estructural of Demux_1x4_8Bits_estructural.v
	wire [7:0]	data_out3_conductual;	// From conductual of Demux_1x4_8Bits.v
	wire [7:0]	data_out3_estructural;	// From estructural of Demux_1x4_8Bits_estructural.v
	wire		outValid0_conductual;	// From conductual of Demux_1x4_8Bits.v
	wire		outValid0_estructural;	// From estructural of Demux_1x4_8Bits_estructural.v
	wire		outValid1_conductual;	// From conductual of Demux_1x4_8Bits.v
	wire		outValid1_estructural;	// From estructural of Demux_1x4_8Bits_estructural.v
	wire		outValid2_conductual;	// From conductual of Demux_1x4_8Bits.v
	wire		outValid2_estructural;	// From estructural of Demux_1x4_8Bits_estructural.v
	wire		outValid3_conductual;	// From conductual of Demux_1x4_8Bits.v
	wire		outValid3_estructural;	// From estructural of Demux_1x4_8Bits_estructural.v
	wire		reset;			// From probador of probadorDemux1x4_8Bits.v
	wire		validIn;		// From probador of probadorDemux1x4_8Bits.v
	// End of automatics

	// End of automatics


    Demux_1x4_8Bits conductual( /*AUTOINST*/
			       // Outputs
			       .outValid0_conductual(outValid0_conductual),
			       .outValid1_conductual(outValid1_conductual),
			       .outValid2_conductual(outValid2_conductual),
			       .outValid3_conductual(outValid3_conductual),
			       .data_out0_conductual(data_out0_conductual[7:0]),
			       .data_out1_conductual(data_out1_conductual[7:0]),
			       .data_out2_conductual(data_out2_conductual[7:0]),
			       .data_out3_conductual(data_out3_conductual[7:0]),
			       // Inputs
			       .In		(In[7:0]),
			       .clk4		(clk4),
			       .clk2		(clk2),
			       .clk		(clk),
			       .validIn		(validIn),
			       .reset		(reset));

	Demux_1x4_8Bits_estructural estructural( /*AUTOINST*/
						// Outputs
						.data_out0_estructural(data_out0_estructural[7:0]),
						.data_out1_estructural(data_out1_estructural[7:0]),
						.data_out2_estructural(data_out2_estructural[7:0]),
						.data_out3_estructural(data_out3_estructural[7:0]),
						.outValid0_estructural(outValid0_estructural),
						.outValid1_estructural(outValid1_estructural),
						.outValid2_estructural(outValid2_estructural),
						.outValid3_estructural(outValid3_estructural),
						// Inputs
						.In		(In[7:0]),
						.clk		(clk),
						.clk2		(clk2),
						.clk4		(clk4),
						.reset		(reset),
						.validIn	(validIn));
  
	probadorDemux1x4_8Bits probador( /*AUTOINST*/
					// Outputs
					.clk		(clk),
					.clk2		(clk2),
					.clk4		(clk4),
					.reset		(reset),
					.validIn	(validIn),
					.In		(In[7:0]),
					// Inputs
					.outValid0_conductual(outValid0_conductual),
					.outValid1_conductual(outValid1_conductual),
					.outValid2_conductual(outValid2_conductual),
					.outValid3_conductual(outValid3_conductual),
					.data_out0_conductual(data_out0_conductual[7:0]),
					.data_out1_conductual(data_out1_conductual[7:0]),
					.data_out2_conductual(data_out2_conductual[7:0]),
					.data_out3_conductual(data_out3_conductual[7:0]),
					.outValid0_estructural(outValid0_estructural),
					.outValid1_estructural(outValid1_estructural),
					.outValid2_estructural(outValid2_estructural),
					.outValid3_estructural(outValid3_estructural),
					.data_out0_estructural(data_out0_estructural[7:0]),
					.data_out1_estructural(data_out1_estructural[7:0]),
					.data_out2_estructural(data_out2_estructural[7:0]),
					.data_out3_estructural(data_out3_estructural[7:0]));
 


endmodule
// Local Variable:
   // eval:(verilog-read-defines)
   // eval:(verilog-read-includes)
   // End:
