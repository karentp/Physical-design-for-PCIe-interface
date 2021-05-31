`include "Mux2x1_8Bits.v"
`include "Recirculacion.v"

module phy_tx(
    input [7:0] In0,
    input [7:0] In1,
    input [7:0] In2,
    input [7:0] In3,
    input clk,
    input clk2,
    input clk4,
    input valid0, valid1, valid2, valid3,
    input validIn, 
    output [7:0] data_out,
    output valid_out,

    ///// AL PROBADOR
    output [7:0] data_Probador0,
    output [7:0] data_Probador1,
    output [7:0] data_Probador2,
    output [7:0] data_Probador3


);

wire [7:0] out_temp1, out_temp2;
wire valid_out_1, valid_out_2;

wire [7:0] In0_good, In1_good, In2_good, In3_good;
////////////// Recirculación

Recirculacion Recirculacion_testbench (
    .In0(In0),
    .In1(In1),
    .In2(In2),
    .In3(In3),
    .validIn(validIn),
    .data_mux0(In0_good),
    .data_Probador0(data_Probador0),
    .data_mux1(In1_good),
    .data_Probador1(data_Probador1),
    .data_mux2(In2_good),
    .data_Probador2(data_Probador2), 
    .data_mux3(In3_good),
    .data_Probador3(data_Probador3)
);





////////////// Multiplexores

///// L1

Mux2x1_8Bits MUX2x1_1 (
    .In0(In0_good),
    .In1(In1_good),
    .clk(clk2),
    .valid0(valid0),
    .valid1(valid1),
    .outValid(valid_out_1),
    .data_out(out_temp1)
); 

Mux2x1_8Bits MUX2x1_2 (
    .In0(In2_good),
    .In1(In3_good),
    .clk(clk2),
    .valid0(valid2),
    .valid1(valid3),
    .outValid(valid_out_2),
    .data_out(out_temp2)
); 



///// L2


Mux2x1_8Bits MUX2x1_3 (
    .In0(out_temp2),
    .In1(out_temp1),
    .clk(clk4),
    .valid0(valid_out_2),
    .valid1(valid_out_1),
    .data_out(data_out),
    .outValid(valid_out)
); 


endmodule