`timescale 	1ns				/ 100ps
`include "Recirculacion.v"
`include "probadorRecirculacion.v"


module BancoPruebaRecirculacion; // Testbench
	// Por lo general, las señales en el banco de pruebas son wires.
	// No almacenan un valor, son manejadas por otras instancias de módulos.
	wire clk, validIn;
    wire [7:0] In0,In1,In2,In3, data_Mux0, data_Probador0,data_Mux1, data_Probador1,data_Mux2, data_Probador2,data_Mux3, data_Probador3;


    Recirculacion ParteRecirculacion( .In0(In0), .In1(In1), .In2(In2), .In3(In3), .validIn(validIn), .data_mux0(data_Mux0), .data_Probador0(data_Probador0), .data_mux1(data_Mux1), .data_Probador1(data_Probador1), .data_mux2(data_Mux2), .data_Probador2(data_Probador2), .data_mux3(data_Mux3), .data_Probador3(data_Probador3));
  
	probadorRecirculacion prob( .In0(In0), .In1(In1), .In2(In2), .In3(In3), .validIn(validIn), .data_Mux0(data_Mux0), .data_Probador0(data_Probador0), .data_Mux1(data_Mux1), .data_Probador1(data_Probador1), .data_Mux2(data_Mux2), .data_Probador2(data_Probador2), .data_Mux3(data_Mux3), .data_Probador3(data_Probador3));
 
/*
	Mux4x1_4Bits Mux4x1Conductual( .valid(valid), .selector(selector), .data_in0(data_in0), .data_in1(data_in1), .data_in2(data_in2), .data_in3(data_in3), .data_out(data_outCond));
    Mux4x1_4Bits_synth Mux4x1Estructural( .valid(valid), .selector(selector), .data_in0(data_in0), .data_in1(data_in1), .data_in2(data_in2), .data_in3(data_in3), .data_out(data_outEstr));
	probador prob(.clk(clk), .valid(valid), .selector(selector), .data_in0(data_in0), .data_in1(data_in1),.data_in2(data_in2), .data_in3(data_in3), .data_outConductual(data_outCond), .data_outExtructural(data_outEstr));
  */  

endmodule