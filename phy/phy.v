`include "phy_tx_completo.v"
`include "phy_rx_completo.v"


module phy(
    input clk, clk_2f, clk_4f, clk_32f,
    input [7:0] In0, In1, In2, In3,
    input valid0, valid1, valid2, valid3, reset,
    
    output  [7:0] data_Probador0, data_Probador1, data_Probador2, data_Probador3,
    output  [7:0] data_Probador0_estruct, data_Probador1_estruct, data_Probador2_estruct, data_Probador3_estruct,
    output  [7:0] data_out0_conductual, data_out1_conductual, data_out2_conductual, data_out3_conductual,
    output  outValid0_conductual, outValid1_conductual, outValid2_conductual, outValid3_conductual,
    output  [7:0] data_out0_estructural, data_out1_estructural, data_out2_estructural, data_out3_estructural,
    output  outValid0_estructural, outValid1_estructural, outValid2_estructural, outValid3_estructural

);

wire azul2verde, verde2azul, azul2verde_estruct, verde2azul_estruct;


phy_tx_completo transmision(
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
	
    ////////////////////////////////
	.data_in(verde2azul),
    .data_in_estruct(verde2azul_estruct),
    ///////////////////////////////

	.data_Probador0(data_Probador0),		// From conductual of phy_tx.v, ...
	.data_Probador1(data_Probador1),		// From conductual of phy_tx.v, ...
	.data_Probador2(data_Probador2),		// From conductual of phy_tx.v, ...
	.data_Probador3(data_Probador3),
    .data_Probador0_estruct(data_Probador0_estruct),		// From conductual of phy_tx.v, ...
	.data_Probador1_estruct(data_Probador1_estruct),		// From conductual of phy_tx.v, ...
	.data_Probador2_estruct(data_Probador2_estruct),		// From conductual of phy_tx.v, ...
	.data_Probador3_estruct(data_Probador3_estruct),

    /////////////////////////
	.data_out(azul2verde),		// From paraleloconductual of ParaleloSerial_azul.v
	.data_out_estruct(azul2verde_estruct)
    ////////////////////////
);

phy_rx_completo recepcion (

    .data_in(azul2verde),
    .data_in_estruct(azul2verde_estruct),


	.clk(clk),			// From Probador_phy_tx_testbench of Probador_phy_tx.v
	.clk_2f(clk_2f),			// From Probador_phy_tx_testbench of Probador_phy_tx.v
	.clk_32f(clk_32f),		// From Probador_phy_tx_testbench of Probador_phy_tx.v
	.clk_4f(clk_4f),		// From Probador_phy_tx_testbench of Probador_phy_tx.v
	.reset(reset),	

	.data_out0_conductual(data_out0_conductual),	// From conductual of Demux_1x4_8Bits.v
	.data_out0_estructural(data_out0_estructural),	// From estructural of Demux_1x4_8Bits_estructural.v
	.data_out1_conductual(data_out1_conductual),	// From conductual of Demux_1x4_8Bits.v
	.data_out1_estructural(data_out1_estructural),	// From estructural of Demux_1x4_8Bits_estructural.v
	.data_out2_conductual(data_out2_conductual),	// From conductual of Demux_1x4_8Bits.v
	.data_out2_estructural(data_out2_estructural),	// From estructural of Demux_1x4_8Bits_estructural.v
	.data_out3_conductual(data_out3_conductual),	// From conductual of Demux_1x4_8Bits.v
	.data_out3_estructural(data_out3_estructural),

	.outValid0_conductual(outValid0_conductual),	// From conductual of Demux_1x4_8Bits.v
	.outValid0_estructural(outValid0_estructural),	// From estructural of Demux_1x4_8Bits_estructural.v
	.outValid1_conductual(outValid1_conductual),	// From conductual of Demux_1x4_8Bits.v
	.outValid1_estructural(outValid1_estructural),	// From estructural of Demux_1x4_8Bits_estructural.v
	.outValid2_conductual(outValid2_conductual),	// From conductual of Demux_1x4_8Bits.v
	.outValid2_estructural(outValid2_estructural),	// From estructural of Demux_1x4_8Bits_estructural.v
	.outValid3_conductual(outValid3_conductual),	// From conductual of Demux_1x4_8Bits.v
	.outValid3_estructural(outValid3_estructural),

	.data_out(verde2azul),
	.data_out_estruct(verde2azul_estruct)

);

endmodule