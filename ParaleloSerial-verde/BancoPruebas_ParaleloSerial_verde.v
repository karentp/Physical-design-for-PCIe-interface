`include "Probador_ParaleloSerial_verde.v"
`include "ParaleloSerial_verde.v"
`include "ParaleloSerial_verde_estruct.v"
`include "cmos_cells.v"

module BancoPruebasParaleloSerial_verde;

/*AUTOWIRE*/
// Beginning of automatic wires (for undeclared instantiated-module outputs)
wire			clk32_f;		// From probador of Probador_ParaleloSerial_verde.v
wire			clk4_f;			// From probador of Probador_ParaleloSerial_verde.v
wire			data_out;		// From conductual of ParaleloSerial_verde.v
wire			data_out_estruct;	// From estructural of ParaleloSerial_verde_estruct.v
wire			reset;			// From probador of Probador_ParaleloSerial_verde.v
wire			valid_in;		// From probador of Probador_ParaleloSerial_verde.v
// End of automatics
    


ParaleloSerial_verde conductual(/*AUTOINST*/
				// Outputs
				.data_out	(data_out),
				// Inputs
				.clk4_f		(clk4_f),
				.clk32_f	(clk32_f),
				.valid_in	(valid_in),
				.reset		(reset));

Probador_ParaleloSerial_verde probador(/*AUTOINST*/
				       // Outputs
				       .reset		(reset),
				       .clk4_f		(clk4_f),
				       .clk32_f		(clk32_f),
				       .valid_in	(valid_in),
				       // Inputs
				       .data_out	(data_out),
				       .data_out_estruct(data_out_estruct));



ParaleloSerial_verde_estruct estructural(/*AUTOINST*/
					 // Outputs
					 .data_out_estruct	(data_out_estruct),
					 // Inputs
					 .clk32_f		(clk32_f),
					 .clk4_f		(clk4_f),
					 .reset			(reset),
					 .valid_in		(valid_in));

endmodule
// Local Variabes:
    // eval:(verilog-read-defines)
    // eval:(verilog-read-includes)
    // End:
