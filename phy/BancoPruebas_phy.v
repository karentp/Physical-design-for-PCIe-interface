`timescale 	1ns				/ 100ps
`include "phy.v"
`include "Probador_phy.v"

module BancoPruebas_phy;

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
wire [7:0]		data_Probador3;	
wire [7:0]		data_Probador0_estruct;		// From conductual of phy_tx.v, ...
wire [7:0]		data_Probador1_estruct;		// From conductual of phy_tx.v, ...
wire [7:0]		data_Probador2_estruct;		// From conductual of phy_tx.v, ...
wire [7:0]		data_Probador3_estruct;	
wire 			valid0_probador, valid1_probador, valid2_probador, valid3_probador;
wire 			valid0_probador_estruct, valid1_probador_estruct, valid2_probador_estruct, valid3_probador_estruct;		
wire [7:0]		data_out0_conductual;
wire [7:0]		data_out1_conductual;
wire [7:0]		data_out2_conductual;
wire [7:0]		data_out3_conductual;
wire [7:0]		data_out0_estructural;
wire [7:0]		data_out1_estructural;
wire [7:0]		data_out2_estructural;
wire [7:0]		data_out3_estructural;
wire 			outValid0_conductual;
wire 			outValid1_conductual;
wire 			outValid2_conductual;
wire 			outValid3_conductual;
wire 			outValid0_estructural;
wire 			outValid1_estructural;
wire 			outValid2_estructural;
wire 			outValid3_estructural;
wire			data_in;		// From Probador_phy_tx_testbench of Probador_phy_tx.v
wire			data_out;		// From paraleloconductual of ParaleloSerial_azul.v
wire			data_out_estruct;		// From SerialParalelo_estruct of SerialParalelo_azul_estruct.v
wire			reset;			// From Probador_phy_tx_testbench of Probador_phy_tx.v
wire			valid0;			// From Probador_phy_tx_testbench of Probador_phy_tx.v
wire			valid1;			// From Probador_phy_tx_testbench of Probador_phy_tx.v
wire			valid2;			// From Probador_phy_tx_testbench of Probador_phy_tx.v
wire			valid3;			// Fr/ From estructural of phy_tx_estruct.v
// End of automatics


phy completo(
	.In0(In0),			// From Probador_phy_tx_testbench of Probador_phy_tx.v
	.In1(In1),			// From Probador_phy_tx_testbench of Probador_phy_tx.v
	.In2(In2),
	.In3(In3),
	.valid0(valid0),			// From Probador_phy_tx_testbench of Probador_phy_tx.v
	.valid1(valid1),			// From Probador_phy_tx_testbench of Probador_phy_tx.v
	.valid2(valid2),			// From Probador_phy_tx_testbench of Probador_phy_tx.v
	.valid3(valid3),
	.clk(clk),			// From Probador_phy_tx_testbench of Probador_phy_tx.v
	.clk_2f(clk_2f),			// From Probador_phy_tx_testbench of Probador_phy_tx.v
	.clk_32f(clk_32f),		// From Probador_phy_tx_testbench of Probador_phy_tx.v
	.clk_4f(clk_4f),		// From Probador_phy_tx_testbench of Probador_phy_tx.v
	.reset(reset),

	.data_Probador0(data_Probador0),		// From conductual of phy_tx.v, ...
	.data_Probador1(data_Probador1),		// From conductual of phy_tx.v, ...
	.data_Probador2(data_Probador2),		// From conductual of phy_tx.v, ...
	.data_Probador3(data_Probador3),

	.data_Probador0_estruct(data_Probador0_estruct),		// From conductual of phy_tx.v, ...
	.data_Probador1_estruct(data_Probador1_estruct),		// From conductual of phy_tx.v, ...
	.data_Probador2_estruct(data_Probador2_estruct),		// From conductual of phy_tx.v, ...
	.data_Probador3_estruct(data_Probador3_estruct),

	.valid0_probador(valid0_probador),
	.valid1_probador(valid1_probador),
	.valid2_probador(valid2_probador),
	.valid3_probador(valid3_probador),

	.valid0_probador_estruct(valid0_probador_estruct),
	.valid1_probador_estruct(valid1_probador_estruct),
	.valid2_probador_estruct(valid2_probador_estruct),
	.valid3_probador_estruct(valid3_probador_estruct),


	.data_out0_conductual(data_out0_conductual),
	.data_out1_conductual(data_out1_conductual), 
	.data_out2_conductual(data_out2_conductual), 
	.data_out3_conductual(data_out3_conductual),
    .outValid0_conductual(outValid0_conductual), 
	.outValid1_conductual(outValid1_conductual), 
	.outValid2_conductual(outValid2_conductual), 
	.outValid3_conductual(outValid3_conductual),


    .data_out0_estructural(data_out0_estructural), 
	.data_out1_estructural(data_out1_estructural), 
	.data_out2_estructural(data_out2_estructural), 
	.data_out3_estructural(data_out3_estructural),
    .outValid0_estructural(outValid0_estructural), 
	.outValid1_estructural(outValid1_estructural), 
	.outValid2_estructural(outValid2_estructural), 
	.outValid3_estructural(outValid3_estructural)

);





Probador_phy probador(
	.In0(In0),			// From Probador_phy_tx_testbench of Probador_phy_tx.v
	.In1(In1),			// From Probador_phy_tx_testbench of Probador_phy_tx.v
	.In2(In2),
	.In3(In3),
	.valid0(valid0),			// From Probador_phy_tx_testbench of Probador_phy_tx.v
	.valid1(valid1),			// From Probador_phy_tx_testbench of Probador_phy_tx.v
	.valid2(valid2),			// From Probador_phy_tx_testbench of Probador_phy_tx.v
	.valid3(valid3),
	.clk(clk),			// From Probador_phy_tx_testbench of Probador_phy_tx.v
	.clk_2f(clk_2f),			// From Probador_phy_tx_testbench of Probador_phy_tx.v
	.clk_32f(clk_32f),		// From Probador_phy_tx_testbench of Probador_phy_tx.v
	.clk_4f(clk_4f),		// From Probador_phy_tx_testbench of Probador_phy_tx.v
	.reset(reset),

	.data_Probador0(data_Probador0),		// From conductual of phy_tx.v, ...
	.data_Probador1(data_Probador1),		// From conductual of phy_tx.v, ...
	.data_Probador2(data_Probador2),		// From conductual of phy_tx.v, ...
	.data_Probador3(data_Probador3),

	.data_Probador0_estruct(data_Probador0_estruct),		// From conductual of phy_tx.v, ...
	.data_Probador1_estruct(data_Probador1_estruct),		// From conductual of phy_tx.v, ...
	.data_Probador2_estruct(data_Probador2_estruct),		// From conductual of phy_tx.v, ...
	.data_Probador3_estruct(data_Probador3_estruct),

	.valid0_probador(valid0_probador),
	.valid1_probador(valid1_probador),
	.valid2_probador(valid2_probador),
	.valid3_probador(valid3_probador),

	.valid0_probador_estruct(valid0_probador_estruct),
	.valid1_probador_estruct(valid1_probador_estruct),
	.valid2_probador_estruct(valid2_probador_estruct),
	.valid3_probador_estruct(valid3_probador_estruct),

	.data_out0_conductual(data_out0_conductual),
	.data_out1_conductual(data_out1_conductual), 
	.data_out2_conductual(data_out2_conductual), 
	.data_out3_conductual(data_out3_conductual),
    .outValid0_conductual(outValid0_conductual), 
	.outValid1_conductual(outValid1_conductual), 
	.outValid2_conductual(outValid2_conductual), 
	.outValid3_conductual(outValid3_conductual),

	
    .data_out0_estructural(data_out0_estructural), 
	.data_out1_estructural(data_out1_estructural), 
	.data_out2_estructural(data_out2_estructural), 
	.data_out3_estructural(data_out3_estructural),
    .outValid0_estructural(outValid0_estructural), 
	.outValid1_estructural(outValid1_estructural), 
	.outValid2_estructural(outValid2_estructural), 
	.outValid3_estructural(outValid3_estructural)

);




endmodule
