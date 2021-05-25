`timescale 	1ns				/ 100ps
`include "Demux_1x2_8Bits.v"
`include "probadorDemux.v"


module BancoPruebaDemux; // Testbench
	// Por lo general, las señales en el banco de pruebas son wires.
	// No almacenan un valor, son manejadas por otras instancias de módulos.
	wire clk, validIn, outvalid0, outvalid1;
    wire [7:0] In0, dataout0,dataout1;


    Demux_1x2_8Bits Demux1( .In0(In0), .clk(clk), .validIn(validIn), .outValid0(outvalid0), .outValid1(outvalid1), .data_out0(dataout0),.data_out1(dataout1));
  
	probadorDemux prob( .data_in(In0), .clk(clk), .validIn(validIn), .outValid0(outvalid0), .outValid1(outvalid1), .data_out0(dataout0),.data_out1(dataout1));
 
/*
	Mux4x1_4Bits Mux4x1Conductual( .valid(valid), .selector(selector), .data_in0(data_in0), .data_in1(data_in1), .data_in2(data_in2), .data_in3(data_in3), .data_out(data_outCond));
    Mux4x1_4Bits_synth Mux4x1Estructural( .valid(valid), .selector(selector), .data_in0(data_in0), .data_in1(data_in1), .data_in2(data_in2), .data_in3(data_in3), .data_out(data_outEstr));
	probador prob(.clk(clk), .valid(valid), .selector(selector), .data_in0(data_in0), .data_in1(data_in1),.data_in2(data_in2), .data_in3(data_in3), .data_outConductual(data_outCond), .data_outExtructural(data_outEstr));
  */  

endmodule

// Local Variable:
   // eval:(verilog-read-defines)
   // eval:(verilog-read-includes)
   // End: