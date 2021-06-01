`include "Probador_SerialParalelo.v"
`include "SerialParalelo.v"
`include "cmos_cells.v"
`include "SerialParalelo_estruct.v"

module BancoPruebasSerialParalelo;

/*AUTOWIRE*/
// Beginning of automatic wires (for undeclared instantiated-module outputs)
wire			active;			// From conductual of SerialParalelo.v
wire			active_estruct;		// From estructural of SerialParalelo_estruct.v
wire			clk_32f;		// From probador of Probador_SerialParalelo.v
wire			clk_4f;			// From probador of Probador_SerialParalelo.v
wire [7:0]		data2send;		// From conductual of SerialParalelo.v
wire [7:0]		data2send_estruct;	// From estructural of SerialParalelo_estruct.v
wire			data_in;		// From probador of Probador_SerialParalelo.v
wire [7:0]		data_out;		// From conductual of SerialParalelo.v
wire [7:0]		data_out_estruct;	// From estructural of SerialParalelo_estruct.v
wire			valid_out;		// From conductual of SerialParalelo.v
wire			valid_out_estruct;	// From estructural of SerialParalelo_estruct.v
// End of automatics

Probador_SerialParalelo probador(/*AUTOINST*/
				 // Outputs
				 .clk_4f		(clk_4f),
				 .clk_32f		(clk_32f),
				 .data_in		(data_in),
				 // Inputs
				 .data2send		(data2send[7:0]),
				 .data_out		(data_out[7:0]),
				 .data2send_estruct	(data2send_estruct[7:0]),
				 .data_out_estruct	(data_out_estruct[7:0]),
				 .active		(active),
				 .valid_out		(valid_out),
				 .active_estruct	(active_estruct),
				 .valid_out_estruct	(valid_out_estruct));


SerialParalelo conductual(/*AUTOINST*/
			  // Outputs
			  .data2send		(data2send[7:0]),
			  .data_out		(data_out[7:0]),
			  .active		(active),
			  .valid_out		(valid_out),
			  // Inputs
			  .clk_4f		(clk_4f),
			  .clk_32f		(clk_32f),
			  .data_in		(data_in));


SerialParalelo_estruct estructural (/*AUTOINST*/
				    // Outputs
				    .active_estruct	(active_estruct),
				    .data2send_estruct	(data2send_estruct[7:0]),
				    .data_out_estruct	(data_out_estruct[7:0]),
				    .valid_out_estruct	(valid_out_estruct),
				    // Inputs
				    .clk_32f		(clk_32f),
				    .clk_4f		(clk_4f),
				    .data_in		(data_in));






endmodule
// Local Variabes:
    // eval:(verilog-read-defines)
    // eval:(verilog-read-includes)
    // End:
