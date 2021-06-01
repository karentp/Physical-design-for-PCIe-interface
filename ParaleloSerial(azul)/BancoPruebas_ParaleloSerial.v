`include "Probador_ParaleloSerial.v"
`include "ParaleloSerial.v"
`include "ParaleloSerial_estruct.v"
`include "cmos_cells.v"

module BancoPruebasParaleloSerial;

/*AUTOWIRE*/
// Beginning of automatic wires (for undeclared instantiated-module outputs)
wire			clk32_f;		// From probador of Probador_ParaleloSerial.v
wire			clk4_f;			// From probador of Probador_ParaleloSerial.v
wire [7:0]		data_in;		// From probador of Probador_ParaleloSerial.v
wire			data_out;		// From conductual of ParaleloSerial.v
wire			data_out_estruct;	// From estructural of ParaleloSerial_estruct.v
wire			valid_in;		// From probador of Probador_ParaleloSerial.v
// End of automatics
    


ParaleloSerial conductual(/*AUTOINST*/
			  // Outputs
			  .data_out		(data_out),
			  // Inputs
			  .data_in		(data_in[7:0]),
			  .clk4_f		(clk4_f),
			  .clk32_f		(clk32_f),
			  .valid_in		(valid_in));

Probador_ParaleloSerial probador(/*AUTOINST*/
				 // Outputs
				 .data_in		(data_in[7:0]),
				 .clk4_f		(clk4_f),
				 .clk32_f		(clk32_f),
				 .valid_in		(valid_in),
				 // Inputs
				 .data_out		(data_out),
				 .data_out_estruct	(data_out_estruct));



ParaleloSerial_estruct estructural(/*AUTOINST*/
				   // Outputs
				   .data_out_estruct	(data_out_estruct),
				   // Inputs
				   .clk32_f		(clk32_f),
				   .clk4_f		(clk4_f),
				   .data_in		(data_in[7:0]),
				   .valid_in		(valid_in));

endmodule
// Local Variabes:
    // eval:(verilog-read-defines)
    // eval:(verilog-read-includes)
    // End:
