`timescale 	1ns				/ 100ps
`include "Demux_1x4_8Bits.v"
`include "probadorDemux1x4_8Bits.v"


module BancoPruebaDemux1x4_8Bits; // Testbench
	// Por lo general, las señales en el banco de pruebas son wires.
	// No almacenan un valor, son manejadas por otras instancias de módulos.
	wire clk, validIn, outvalid0, outvalid1, outvalid2, outvalid3;
    wire [7:0] In0, dataout0,dataout1, dataout2, dataout3;


    Demux_1x4_8Bits Demux_1x4( .In(In0), .clk(clk), .validIn(validIn), .validOut0(outvalid0), .validOut1(outvalid1), .validOut2(outvalid2), .validOut3(outvalid3),.data_out0(dataout0),.data_out1(dataout1),.data_out2(dataout2),.data_out3(dataout3));
  
	probadorDemux1x4_8Bits prob( .In(In0), .clk(clk), .validIn(validIn), .outValid0(outvalid0), .outValid1(outvalid1), .data_out0(dataout0),.data_out1(dataout1));
 
/*
	Mux4x1_4Bits Mux4x1Conductual( .valid(valid), .selector(selector), .data_in0(data_in0), .data_in1(data_in1), .data_in2(data_in2), .data_in3(data_in3), .data_out(data_outCond));
    Mux4x1_4Bits_synth Mux4x1Estructural( .valid(valid), .selector(selector), .data_in0(data_in0), .data_in1(data_in1), .data_in2(data_in2), .data_in3(data_in3), .data_out(data_outEstr));
	probador prob(.clk(clk), .valid(valid), .selector(selector), .data_in0(data_in0), .data_in1(data_in1),.data_in2(data_in2), .data_in3(data_in3), .data_outConductual(data_outCond), .data_outExtructural(data_outEstr));
  */  

endmodule
