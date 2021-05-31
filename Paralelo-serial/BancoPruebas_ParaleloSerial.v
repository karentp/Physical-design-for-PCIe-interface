`include "Probador_ParaleloSerial.v"
`include "paralelo_serial.v"

module BancoPruebasParaleloSerial;

/*AUTOWIRE*/
// Beginning of automatic wires (for undeclared instantiated-module outputs)
wire			clk32_f;		// From probador of Probador_ParaleloSerial.v
wire			clk4_f;			// From probador of Probador_ParaleloSerial.v
wire [7:0]		data2send;		// From paraleloS of paralelo_serial.v
wire [7:0]		data_in;		// From probador of Probador_ParaleloSerial.v
wire			data_out;		// From paraleloS of paralelo_serial.v
wire			valid_in;		// From probador of Probador_ParaleloSerial.v
// End of automatics
    


paralelo_serial paraleloS(/*AUTOINST*/
			  // Outputs
			  .data2send		(data2send[7:0]),
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
				 .data2send		(data2send[7:0]),
				 .data_out		(data_out));

endmodule


// Local Variabes:
    // eval:(verilog-read-defines)
    // eval:(verilog-read-includes)
    // End:
