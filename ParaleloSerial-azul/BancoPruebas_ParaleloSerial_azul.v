`include "Probador_ParaleloSerial_azul.v"
`include "ParaleloSerial_azul.v"
`include "ParaleloSerial_azul_estruct.v"
`include "cmos_cells.v"

module BancoPruebasParaleloSerial_azul;

/*AUTOWIRE*/
// Beginning of automatic wires (for undeclared instantiated-module outputs)
wire			clk32_f;		// From probador of Probador_ParaleloSerial_azul.v
wire			clk4_f;			// From probador of Probador_ParaleloSerial_azul.v
wire [7:0]		data_in;		// From probador of Probador_ParaleloSerial_azul.v
wire			data_out;		// From conductual of ParaleloSerial_azul.v
wire			data_out_estruct;	// From estructural of ParaleloSerial_azul_estruct.v
wire			reset;			// From probador of Probador_ParaleloSerial_azul.v
wire			valid_in;		// From probador of Probador_ParaleloSerial_azul.v
// End of automatics
    


ParaleloSerial_azul conductual(/*AUTOINST*/
			       // Outputs
			       .data_out	(data_out),
			       // Inputs
			       .data_in		(data_in[7:0]),
			       .clk4_f		(clk4_f),
			       .clk32_f		(clk32_f),
			       .valid_in	(valid_in),
			       .reset		(reset));

Probador_ParaleloSerial_azul probador(/*AUTOINST*/
				      // Outputs
				      .data_in		(data_in[7:0]),
				      .reset		(reset),
				      .clk4_f		(clk4_f),
				      .clk32_f		(clk32_f),
				      .valid_in		(valid_in),
				      // Inputs
				      .data_out		(data_out),
				      .data_out_estruct	(data_out_estruct));



ParaleloSerial_azul_estruct estructural(/*AUTOINST*/
					// Outputs
					.data_out_estruct(data_out_estruct),
					// Inputs
					.clk32_f	(clk32_f),
					.clk4_f		(clk4_f),
					.data_in	(data_in[7:0]),
					.reset		(reset),
					.valid_in	(valid_in));

endmodule
// Local Variabes:
    // eval:(verilog-read-defines)
    // eval:(verilog-read-includes)
    // End:
