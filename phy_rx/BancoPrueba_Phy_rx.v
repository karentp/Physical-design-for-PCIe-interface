`timescale 	1ns				/ 100ps
`include "Demux_1x4_8Bits.v"
`include "probadorDemux1x4_8Bits.v"
`include "Demux_1x4_8Bits_estructural.v"
`include "cmos_cells.v"
`include "SerialParalelo_verde.v"
`include "SerialParalelo_verde_estruct.v"
`include "ParaleloSerial_verde.v"
`include "ParaleloSerial_verde_estruct.v"



module BancoPrueba_Phy_rx; // Testbench
	// Por lo general, las señales en el banco de pruebas son wires.
	// No almacenan un valor, son manejadas por otras instancias de módulos.
	/*AUTOWIRE*/
	// Beginning of automatic wires (for undeclared instantiated-module outputs)
	wire [7:0]	In;			// From probador of probadorDemux1x4_8Bits.v
	wire		active_estruct_to_PS;	// From SerialParalelo_verdeE of SerialParalelo_verde_estruct.v
	wire		active_to_PS;		// From SerialParaleloV of SerialParalelo_verde.v
	wire		clk;			// From probador of probadorDemux1x4_8Bits.v
	wire		clk2;			// From probador of probadorDemux1x4_8Bits.v
	wire		clk4;			// From probador of probadorDemux1x4_8Bits.v
	wire [7:0]	data2send_to_LDMX;	// From SerialParaleloV of SerialParalelo_verde.v
	wire [7:0]	data2send_to_LDMX_estruct;// From SerialParalelo_verdeE of SerialParalelo_verde_estruct.v
	wire		data_out;		// From ParaleloSerial_v_cond of ParaleloSerial_verde.v
	wire [7:0]	data_out0_conductual;	// From conductual of Demux_1x4_8Bits.v
	wire [7:0]	data_out0_estructural;	// From estructural of Demux_1x4_8Bits_estructural.v
	wire [7:0]	data_out1_conductual;	// From conductual of Demux_1x4_8Bits.v
	wire [7:0]	data_out1_estructural;	// From estructural of Demux_1x4_8Bits_estructural.v
	wire [7:0]	data_out2_conductual;	// From conductual of Demux_1x4_8Bits.v
	wire [7:0]	data_out2_estructural;	// From estructural of Demux_1x4_8Bits_estructural.v
	wire [7:0]	data_out3_conductual;	// From conductual of Demux_1x4_8Bits.v
	wire [7:0]	data_out3_estructural;	// From estructural of Demux_1x4_8Bits_estructural.v
	wire		data_out_estruct;	// From ParaleloSerial_v_est of ParaleloSerial_verde_estruct.v
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
	wire		valid_out_to_LDMX;	// From SerialParaleloV of SerialParalelo_verde.v
	wire		valid_out_to_LDMX_estruct;// From SerialParalelo_verdeE of SerialParalelo_verde_estruct.v
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
			       .data2send_to_LDMX(data2send_to_LDMX[7:0]),
			       .clk_4f		(clk_4f),
			       .clk_2f		(clk_2f),
			       .clk		(clk),
			       .valid_out_to_LDMX(valid_out_to_LDMX),
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
						.clk		(clk),
						.clk_2f		(clk_2f),
						.clk_4f		(clk_4f),
						.data2send_to_LDMX_estruct(data2send_to_LDMX_estruct[7:0]),
						.reset		(reset),
						.valid_out_to_LDMX_estruct(valid_out_to_LDMX_estruct));
  
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
 
    SerialParalelo_verde SerialParaleloV(/*AUTOINST*/
					 // Outputs
					 .data2send_to_LDMX	(data2send_to_LDMX[7:0]),
					 .active_to_PS		(active_to_PS),
					 .valid_out_to_LDMX	(valid_out_to_LDMX),
					 // Inputs
					 .clk_4f		(clk_4f),
					 .clk_32f		(clk_32f),
					 .data_in		(data_in),
					 .reset			(reset));

    SerialParalelo_verde_estruct SerialParalelo_verdeE(/*AUTOINST*/
						       // Outputs
						       .active_estruct_to_PS(active_estruct_to_PS),
						       .data2send_to_LDMX_estruct(data2send_to_LDMX_estruct[7:0]),
						       .valid_out_to_LDMX_estruct(valid_out_to_LDMX_estruct),
						       // Inputs
						       .clk_32f		(clk_32f),
						       .clk_4f		(clk_4f),
						       .data_in		(data_in),
						       .reset		(reset));


	ParaleloSerial_verde ParaleloSerial_v_cond(/*AUTOINST*/
						   // Outputs
						   .data_out		(data_out),
						   // Inputs
						   .clk_4f		(clk_4f),
						   .clk_32f		(clk_32f),
						   .active_to_PS	(active_to_PS),
						   .reset		(reset));

	ParaleloSerial_verde_estruct ParaleloSerial_v_est(/*AUTOINST*/
							  // Outputs
							  .data_out_estruct	(data_out_estruct),
							  // Inputs
							  .active_to_PS		(active_to_PS),
							  .clk_32f		(clk_32f),
							  .clk_4f		(clk_4f),
							  .reset		(reset));

endmodule
// Local Variable:
   // eval:(verilog-read-defines)
   // eval:(verilog-read-includes)
   // End:
