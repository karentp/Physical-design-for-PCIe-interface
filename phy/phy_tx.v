`include "Mux2x1_8Bits.v"
`include "Recirculacion.v"

module phy_tx(
    input [7:0] In0,
    input [7:0] In1,
    input [7:0] In2,
    input [7:0] In3,
    input clk,
    input clk_2f,
    input clk_4f,
    input valid0, valid1, valid2, valid3,
    input recirculacion, 
    input reset,
    output [7:0] data_PSA_conductual,
    output valid_PSA_conductual,

    ///// AL PROBADOR (recirculación)
    output [7:0] data_Probador0,
    output [7:0] data_Probador1,
    output [7:0] data_Probador2,
    output [7:0] data_Probador3,
    output valid0_probador, valid1_probador, valid2_probador, valid3_probador

);

wire [7:0] out_temp1, out_temp2;
wire valid_out_1, valid_out_2;

wire [7:0] In0_good, In1_good, In2_good, In3_good;
wire valid0_good, valid1_good, valid2_good, valid3_good;


//////////////////////////////////////
// Recirculación
//////////////////////////////////////


Recirculacion Recirculacion_testbench (
    .In0(In0),
    .In1(In1),
    .In2(In2),
    .In3(In3),
    .valid0(valid0), 
    .valid1(valid1), 
    .valid2(valid2), 
    .valid3(valid3),
    .recirculacion(recirculacion),
    .data_mux0(In0_good),
    .data_Probador0(data_Probador0),
    .data_mux1(In1_good),
    .data_Probador1(data_Probador1),
    .data_mux2(In2_good),
    .data_Probador2(data_Probador2), 
    .data_mux3(In3_good),
    .data_Probador3(data_Probador3),
    
    .valid0_mux(valid0_good), 
    .valid1_mux(valid1_good), 
    .valid2_mux(valid2_good), 
    .valid3_mux(valid3_good),
    .valid0_probador(valid0_probador), 
    .valid1_probador(valid1_probador), 
    .valid2_probador(valid2_probador), 
    .valid3_probador(valid3_probador)
);



//////////////////////////////////////
//Multiplexores
//////////////////////////////////////


///// L1

Mux2x1_8Bits MUX2x1_1 (
    .In0(In1_good),
    .In1(In0_good),
    .clk(clk_2f),
    .reset(reset),
    .valid0(valid1_good),
    .valid1(valid0_good),
    .outValid(valid_out_1),
    .data_out(out_temp1)
); 

Mux2x1_8Bits MUX2x1_2 (
    .In0(In3_good),
    .In1(In2_good),
    .clk(clk_2f),
    .reset(reset),
    .valid0(valid3_good),
    .valid1(valid2_good),
    .outValid(valid_out_2),
    .data_out(out_temp2)
); 



///// L2


Mux2x1_8Bits MUX2x1_3 (
    .In0(out_temp2),
    .In1(out_temp1),
    .clk(clk_4f),
    .reset(reset),
    .valid0(valid_out_2),
    .valid1(valid_out_1),
    .data_out(data_PSA_conductual),
    .outValid(valid_PSA_conductual)
); 


endmodule