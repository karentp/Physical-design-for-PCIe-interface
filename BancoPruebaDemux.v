`timescale 	1ns				/ 100ps
`include "Demux_1x2_8Bits.v"
`include "probadorDemux.v"


module BancoPruebaDemux; // Testbench
	
  /*AUTOWIRE*/




    Demux_1x2_8Bits Demux1(/*AUTOINST*/);
	probadorDemux prob(/*AUTOINST*/);

endmodule

// Local Variable:
   // eval:(verilog-read-defines)
   // eval:(verilog-read-includes)
   // End:
