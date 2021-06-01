`include "ParaleloSerial_IDL.v"
`include "Probador_ParaleloSerial_IDL.v"
`include "ParaleloSerial_IDL_estruct.v"
`include "cmos_cells.v"

module BancoPruebas_ParaleloSerial_IDL;

/*AUTOWIRE*/
// Beginning of automatic wires (for undeclared instantiated-module outputs)
wire			IDL_estruct;		// From estructural of ParaleloSerial_IDL_estruct.v
// End of automatics
wire active, IDL, clk_4f, clk_32f;


ParaleloSerial_IDL conductual(/*AUTOINST*/
			      // Outputs
			      .IDL		(IDL),
			      // Inputs
			      .active		(active),
			      .clk_32f		(clk_32f),
			      .clk_4f		(clk_4f));

Probador_ParaleloSerial_IDL probador(/*AUTOINST*/
				     // Outputs
				     .active		(active),
				     .clk_32f		(clk_32f),
				     .clk_4f		(clk_4f),
				     // Inputs
				     .IDL		(IDL),
				     .IDL_estruct	(IDL_estruct));

ParaleloSerial_IDL_estruct estructural (/*AUTOINST*/
					// Outputs
					.IDL_estruct	(IDL_estruct),
					// Inputs
					.active		(active),
					.clk_32f	(clk_32f),
					.clk_4f		(clk_4f));


endmodule
// Local Variable:
   // eval:(verilog-read-defines)
   // eval:(verilog-read-includes)
   // End:
