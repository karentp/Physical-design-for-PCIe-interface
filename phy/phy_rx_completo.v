
`include "Demux_1x4_8Bits.v"
`include "probadorDemux1x4_8Bits.v"
`include "Demux_1x4_8Bits_estructural.v"
`include "cmos_cells.v"
`include "SerialParalelo_verde.v"
`include "SerialParalelo_verde_estruct.v"
`include "ParaleloSerial_verde.v"
`include "ParaleloSerial_verde_estruct.v"



module phy_rx_completo(
	input		data_in,
	input		data_in_estruct,


	input		clk,			// From probador of probadorDemux1x4_8Bits.v
	input		clk_2f,			// From probador of probadorDemux1x4_8Bits.v
	input		clk_32f,		// From probador of probadorDemux1x4_8Bits.v
	input		clk_4f,
	input		reset,

	output  [7:0]	data_out0_conductual,	// From conductual of Demux_1x4_8Bits.v
	output  [7:0]	data_out0_estructural,	// From estructural of Demux_1x4_8Bits_estructural.v
	output  [7:0]	data_out1_conductual,	// From conductual of Demux_1x4_8Bits.v
	output  [7:0]	data_out1_estructural,	// From estructural of Demux_1x4_8Bits_estructural.v
	output  [7:0]	data_out2_conductual,	// From conductual of Demux_1x4_8Bits.v
	output  [7:0]	data_out2_estructural,	// From estructural of Demux_1x4_8Bits_estructural.v
	output  [7:0]	data_out3_conductual,	// From conductual of Demux_1x4_8Bits.v
	output  [7:0]	data_out3_estructural,

	output 		outValid0_conductual,	// From conductual of Demux_1x4_8Bits.v
	output 		outValid0_estructural,	// From estructural of Demux_1x4_8Bits_estructural.v
	output 		outValid1_conductual,	// From conductual of Demux_1x4_8Bits.v
	output 		outValid1_estructural,	// From estructural of Demux_1x4_8Bits_estructural.v
	output 		outValid2_conductual,	// From conductual of Demux_1x4_8Bits.v
	output 		outValid2_estructural,	// From estructural of Demux_1x4_8Bits_estructural.v
	output 		outValid3_conductual,	// From conductual of Demux_1x4_8Bits.v
	output 		outValid3_estructural,

	output 		data_out,
	output 		data_out_estruct

);
	wire		active_estruct_to_PS;	// From SerialParalelo_verdeE of SerialParalelo_verde_estruct.v
	wire		active_to_PS;		// From SerialParaleloV of SerialParalelo_verde.v

	wire [7:0]	data2send_to_LDMX;	// From SerialParaleloV of SerialParalelo_verde.v
	wire [7:0]	data2send_to_LDMX_estruct;// From SerialParalelo_verdeE of SerialParalelo_verde_estruct.v
	
	wire		valid_out_to_LDMX;	// From SerialParaleloV of SerialParalelo_verde.v
	wire		valid_out_to_LDMX_estruct;// From SerialParalelo_verdeE of SerialParalelo_verde_estruct.v
	


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
						       .data_in		(data_in_estruct),
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
