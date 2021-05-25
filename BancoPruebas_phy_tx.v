`include "phy_tx.v"
`include "Probador_phy_tx.v"

module BancoPruebas_phy_tx;

/*AUTOWIRE*/
// Beginning of automatic wires (for undeclared instantiated-module outputs)
wire [7:0]		In0;			// From Probador_phy_tx_testbench of Probador_phy_tx.v
wire [7:0]		In1;			// From Probador_phy_tx_testbench of Probador_phy_tx.v
wire [7:0]		In2;			// From Probador_phy_tx_testbench of Probador_phy_tx.v
wire [7:0]		In3;			// From Probador_phy_tx_testbench of Probador_phy_tx.v
wire			clk;			// From Probador_phy_tx_testbench of Probador_phy_tx.v
wire			clk2;			// From Probador_phy_tx_testbench of Probador_phy_tx.v
wire			clk4;			// From Probador_phy_tx_testbench of Probador_phy_tx.v
wire [7:0]		data_Probador0;		// From phy_tx_testbench of phy_tx.v
wire [7:0]		data_Probador1;		// From phy_tx_testbench of phy_tx.v
wire [7:0]		data_Probador2;		// From phy_tx_testbench of phy_tx.v
wire [7:0]		data_Probador3;		// From phy_tx_testbench of phy_tx.v
wire [7:0]		data_out;		// From phy_tx_testbench of phy_tx.v
wire			valid0;			// From Probador_phy_tx_testbench of Probador_phy_tx.v
wire			valid1;			// From Probador_phy_tx_testbench of Probador_phy_tx.v
wire			valid2;			// From Probador_phy_tx_testbench of Probador_phy_tx.v
wire			valid3;			// From Probador_phy_tx_testbench of Probador_phy_tx.v
wire			validIn;		// From Probador_phy_tx_testbench of Probador_phy_tx.v
wire			valid_out;		// From phy_tx_testbench of phy_tx.v
// End of automatics

phy_tx phy_tx_testbench(/*AUTOINST*/
			// Outputs
			.data_out	(data_out[7:0]),
			.valid_out	(valid_out),
			.data_Probador0	(data_Probador0[7:0]),
			.data_Probador1	(data_Probador1[7:0]),
			.data_Probador2	(data_Probador2[7:0]),
			.data_Probador3	(data_Probador3[7:0]),
			// Inputs
			.In0		(In0[7:0]),
			.In1		(In1[7:0]),
			.In2		(In2[7:0]),
			.In3		(In3[7:0]),
			.clk		(clk),
			.clk2		(clk2),
			.clk4		(clk4),
			.valid0		(valid0),
			.valid1		(valid1),
			.valid2		(valid2),
			.valid3		(valid3),
			.validIn	(validIn));

Probador_phy_tx Probador_phy_tx_testbench(/*AUTOINST*/
					  // Outputs
					  .In0			(In0[7:0]),
					  .In1			(In1[7:0]),
					  .In2			(In2[7:0]),
					  .In3			(In3[7:0]),
					  .clk			(clk),
					  .clk2			(clk2),
					  .clk4			(clk4),
					  .valid0		(valid0),
					  .valid1		(valid1),
					  .valid2		(valid2),
					  .valid3		(valid3),
					  .validIn		(validIn),
					  // Inputs
					  .data_out		(data_out[7:0]),
					  .data_Probador0	(data_Probador0[7:0]),
					  .data_Probador1	(data_Probador1[7:0]),
					  .data_Probador2	(data_Probador2[7:0]),
					  .data_Probador3	(data_Probador3[7:0]),
					  .valid_out		(valid_out));


endmodule

// Local Variable:
   // eval:(verilog-read-defines)
   // eval:(verilog-read-includes)
   // End:
