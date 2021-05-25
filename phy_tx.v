`include "Mux2x1_8Bits.v"

module phy_tx(
    input [7:0] In0,
    input [7:0] In1,
    input [7:0] In2,
    input [7:0] In3,
    input clk,
    input clk2,
    input clk4,
    input valid0, valid1, valid2, valid3,
    output [7:0] data_out,
    output valid_out
);

wire [7:0] out_temp1, out_temp2;
wire valid_out_1, valid_out_2;

Mux2x1_8Bits MUX2x1_1 (
    .In0(In0),
    .In1(In1),
    .clk(clk2),
    .valid0(valid0),
    .valid1(valid1),
    .outValid(valid_out_1),
    .data_out(out_temp1)
); 

Mux2x1_8Bits MUX2x1_2 (
    .In0(In2),
    .In1(In3),
    .clk(clk2),
    .valid0(valid2),
    .valid1(valid3),
    .outValid(valid_out_2),
    .data_out(out_temp2)
); 


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