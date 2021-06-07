`include "phy_tx_estruct.v"
`include "phy_tx.v"
`include "Probador_phy_tx.v"
`include "ParaleloSerial_azul.v"
`include "ParaleloSerial_azul_estruct.v"
`include "cmos_cells.v"


module BancoPruebas_phy_tx;

/*AUTOWIRE*/
// Beginning of automatic wires (for undeclared instantiated-module outputs)
wire [7:0]		In0;			// From Probador_phy_tx_testbench of Probador_phy_tx.v
wire [7:0]		In1;			// From Probador_phy_tx_testbench of Probador_phy_tx.v
wire [7:0]		In2;			// From Probador_phy_tx_testbench of Probador_phy_tx.v
wire [7:0]		In3;			// From Probador_phy_tx_testbench of Probador_phy_tx.v
wire			clk;			// From Probador_phy_tx_testbench of Probador_phy_tx.v
wire			clk_2f;			// From Probador_phy_tx_testbench of Probador_phy_tx.v
wire			clk_32f;		// From Probador_phy_tx_testbench of Probador_phy_tx.v
wire			clk_4f;			// From Probador_phy_tx_testbench of Probador_phy_tx.v
wire [7:0]		data_PSA_conductual;	// From conductual of phy_tx.v
wire [7:0]		data_PSA_estruct;	// From estructural of phy_tx_estruct.v
wire [7:0]		data_Probador0;		// From conductual of phy_tx.v, ...
wire [7:0]		data_Probador1;		// From conductual of phy_tx.v, ...
wire [7:0]		data_Probador2;		// From conductual of phy_tx.v, ...
wire [7:0]		data_Probador3;		// From conductual of phy_tx.v, ...
wire			data_out;		// From paraleloconductual of ParaleloSerial_azul.v
wire			data_out_estruct;	// From paraleloestructural of ParaleloSerial_azul_estruct.v
wire			reset;			// From Probador_phy_tx_testbench of Probador_phy_tx.v
wire			valid0;			// From Probador_phy_tx_testbench of Probador_phy_tx.v
wire			valid1;			// From Probador_phy_tx_testbench of Probador_phy_tx.v
wire			valid2;			// From Probador_phy_tx_testbench of Probador_phy_tx.v
wire			valid3;			// From Probador_phy_tx_testbench of Probador_phy_tx.v
wire			validIn;		// From Probador_phy_tx_testbench of Probador_phy_tx.v
wire			valid_PSA_conductual;	// From conductual of phy_tx.v
wire			valid_PSA_estruct;	// From estructural of phy_tx_estruct.v
// End of automatics

phy_tx conductual(/*AUTOINST*/
		  // Outputs
		  .data_PSA_conductual	(data_PSA_conductual[7:0]),
		  .valid_PSA_conductual	(valid_PSA_conductual),
		  .data_Probador0	(data_Probador0[7:0]),
		  .data_Probador1	(data_Probador1[7:0]),
		  .data_Probador2	(data_Probador2[7:0]),
		  .data_Probador3	(data_Probador3[7:0]),
		  // Inputs
		  .In0			(In0[7:0]),
		  .In1			(In1[7:0]),
		  .In2			(In2[7:0]),
		  .In3			(In3[7:0]),
		  .clk			(clk),
		  .clk_2f		(clk_2f),
		  .clk_4f		(clk_4f),
		  .valid0		(valid0),
		  .valid1		(valid1),
		  .valid2		(valid2),
		  .valid3		(valid3),
		  .validIn		(validIn),
		  .reset		(reset));

Probador_phy_tx Probador_phy_tx_testbench(/*AUTOINST*/
					  // Outputs
					  .In0			(In0[7:0]),
					  .In1			(In1[7:0]),
					  .In2			(In2[7:0]),
					  .In3			(In3[7:0]),
					  .clk			(clk),
					  .clk_2f		(clk_2f),
					  .clk_4f		(clk_4f),
					  .clk_32f		(clk_32f),
					  .reset		(reset),
					  .valid0		(valid0),
					  .valid1		(valid1),
					  .valid2		(valid2),
					  .valid3		(valid3),
					  .validIn		(validIn),
					  // Inputs
					  .data_out_estruct	(data_out_estruct),
					  .data_out		(data_out),
					  .data_Probador0	(data_Probador0[7:0]),
					  .data_Probador1	(data_Probador1[7:0]),
					  .data_Probador2	(data_Probador2[7:0]),
					  .data_Probador3	(data_Probador3[7:0]));


//EStructural					  
phy_tx_estruct estructural(
 					  /*AUTOINST*/
			   // Outputs
			   .data_PSA_estruct	(data_PSA_estruct[7:0]),
			   .data_Probador0	(data_Probador0[7:0]),
			   .data_Probador1	(data_Probador1[7:0]),
			   .data_Probador2	(data_Probador2[7:0]),
			   .data_Probador3	(data_Probador3[7:0]),
			   .valid_PSA_estruct	(valid_PSA_estruct),
			   // Inputs
			   .In0			(In0[7:0]),
			   .In1			(In1[7:0]),
			   .In2			(In2[7:0]),
			   .In3			(In3[7:0]),
			   .clk			(clk),
			   .clk_2f		(clk_2f),
			   .clk_4f		(clk_4f),
			   .reset		(reset),
			   .valid0		(valid0),
			   .valid1		(valid1),
			   .valid2		(valid2),
			   .valid3		(valid3),
			   .validIn		(validIn));
 
ParaleloSerial_azul paraleloconductual(/*AUTOINST*/
				       // Outputs
				       .data_out	(data_out),
				       // Inputs
				       .data_PSA_conductual(data_PSA_conductual[7:0]),
				       .clk_4f		(clk_4f),
				       .clk_32f		(clk_32f),
				       .valid_PSA_conductual(valid_PSA_conductual),
				       .reset		(reset));


ParaleloSerial_azul_estruct paraleloestructural(/*AUTOINST*/
						// Outputs
						.data_out_estruct(data_out_estruct),
						// Inputs
						.clk_32f	(clk_32f),
						.clk_4f		(clk_4f),
						.data_PSA_estruct(data_PSA_estruct[7:0]),
						.reset		(reset),
						.valid_PSA_estruct(valid_PSA_estruct));

endmodule

// Local Variable:
   // eval:(verilog-read-defines)
   // eval:(verilog-read-includes)
   // End:
