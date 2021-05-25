//++++++++++MODULO PROBADOR PARA MUX CON MEMORIA: GENERADOR DE SEÑALES Y MONITOR DE DATOS +++++++++++++++


`timescale 	1ns	/ 100ps
// escala	unidad temporal (valor de "#1") / precisi�n

// includes de archivos de verilog

`include "synth_mux2x1.v"
`include "Mux2x1_8Bits.v"
//`include "mux_memoria2x1_conductual.v"
`include "probadorMux2x18bits.v"

 // Testbench

module BancoPruebas;

	/*AUTOWIRE*/
	// Beginning of automatic wires (for undeclared instantiated-module outputs)
	wire [7:0]	In0;			// From prob of probadorMux2x18bits.v
	wire [7:0]	In1;			// From prob of probadorMux2x18bits.v
	wire		clk;			// From prob of probadorMux2x18bits.v
	//wire		clk2;			// From prob of probadorMux2x18bits.v
	wire [7:0]	data_outC;		// From mux2x1cond of Mux2x1_8Bits.v
	wire [7:0]	data_outE;		// From mux2x1estruct of Mux2x1_8Bits.v
	wire		outValid;		// From mux2x1cond of Mux2x1_8Bits.v
	wire		valid0;			// From prob of probadorMux2x18bits.v
	wire		valid1;			// From prob of probadorMux2x18bits.v
	// End of automatics
  

	
	// Descripcion conductual del MUX con memoria 2x1 de 2 bits
	Mux2x1_8Bits	mux2x1cond(/*AUTOINST*/
				   // Outputs
				   .outValid		(outValid),
				   .data_out		(data_outC[7:0]),
				   // Inputs
				   .In0			(In0[7:0]),
				   .In1			(In1[7:0]),
				   .clk			(clk),
				   .valid0		(valid0),
				   .valid1		(valid1));


	// Probador: generador de señales y monitor, depende del MUX que se este probando
	probadorMux2x18bits 	prob(/*AUTOINST*/
				     // Outputs
				     .In0		(In0[7:0]),
				     .In1		(In1[7:0]),
				     .clk		(clk),
				     .valid0		(valid0),
				     .valid1		(valid1),
				     .clk2		(clk2),
				     // Inputs
				     .outValid		(outValid));
				    // .data_out		(data_out[7:0]));

	Mux2x1_8Bits_synth	mux2x1estruct(/*AUTOINST*/
				   // Outputs
				   .outValid		(outValid),
				   .data_out		(data_outE[7:0]),
				   // Inputs
				   .In0			(In0[7:0]),
				   .In1			(In1[7:0]),
				   .clk			(clk),
				   .valid0		(valid0),
				   .valid1		(valid1));
				   //.clk2		(clk2));

endmodule
    // Local Variables:
    // eval:(verilog-read-defines)
    // eval:(verilog-read-includes)
    // End:
