`include "Probador_SerialParalelo_verde.v"
`include "SerialParalelo_verde.v"
`include "cmos_cells.v"
`include "SerialParalelo_verde_estruct.v"

module BancoPruebasSerialParalelo_verde;

/*AUTOWIRE*/
// Beginning of automatic wires (for undeclared instantiated-module outputs)
wire			active;			// From conductual of SerialParalelo_verde.v
wire			active_estruct;		// From estructural of SerialParalelo_verde_estruct.v
wire			clk_32f;		// From probador of Probador_SerialParalelo_verde.v
wire			clk_4f;			// From probador of Probador_SerialParalelo_verde.v
wire [7:0]		data2send;		// From conductual of SerialParalelo_verde.v
wire [7:0]		data2send_estruct;	// From estructural of SerialParalelo_verde_estruct.v
wire			data_in;		// From probador of Probador_SerialParalelo_verde.v
wire			reset;			// From probador of Probador_SerialParalelo_verde.v
wire			valid_out;		// From conductual of SerialParalelo_verde.v
wire			valid_out_estruct;	// From estructural of SerialParalelo_verde_estruct.v
// End of automatics

Probador_SerialParalelo_verde probador(/*AUTOINST*/
				       // Outputs
				       .clk_4f		(clk_4f),
				       .clk_32f		(clk_32f),
				       .data_in		(data_in),
				       .reset		(reset),
				       // Inputs
				       .data2send	(data2send[7:0]),
				       .data2send_estruct(data2send_estruct[7:0]),
				       .active		(active),
				       .valid_out	(valid_out),
				       .active_estruct	(active_estruct),
				       .valid_out_estruct(valid_out_estruct));


SerialParalelo_verde conductual(/*AUTOINST*/
				// Outputs
				.data2send	(data2send[7:0]),
				.active		(active),
				.valid_out	(valid_out),
				// Inputs
				.clk_4f		(clk_4f),
				.clk_32f	(clk_32f),
				.data_in	(data_in),
				.reset		(reset));


SerialParalelo_verde_estruct estructural (/*AUTOINST*/
					  // Outputs
					  .active_estruct	(active_estruct),
					  .data2send_estruct	(data2send_estruct[7:0]),
					  .valid_out_estruct	(valid_out_estruct),
					  // Inputs
					  .clk_32f		(clk_32f),
					  .clk_4f		(clk_4f),
					  .data_in		(data_in),
					  .reset		(reset));






endmodule
// Local Variabes:
    // eval:(verilog-read-defines)
    // eval:(verilog-read-includes)
    // End:
