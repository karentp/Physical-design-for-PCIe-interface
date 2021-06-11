//++++++++++MODULO PROBADOR PARA MUX CON MEMORIA: GENERADOR DE SEÑALES Y MONITOR DE DATOS +++++++++++++++


`timescale 	1ns	/ 100ps
// escala	unidad temporal (valor de "#1") / precisi�n

// includes de archivos de verilog

`include "Mux2x1_8Bits.v"
//`include "mux_memoria2x1_conductual.v"
`include "probador.v"

 // Testbench

module BancoPruebas;
	
    wire clk, valid0, valid1, outValid;

	//Entradas_8bits
	wire [7:0] In0, In1; 
	// Descripcion conductual del MUX con memoria 2x1 de 2 bits
	Mux2x1_8Bits	mux2x1cond(/*AUTOINST*/);


	// Probador: generador de señales y monitor, depende del MUX que se este probando
	probadorMux2x18bits 	prob(/*AUTOINST*/);


endmodule
