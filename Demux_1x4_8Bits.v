`include "Demux_1x2_8Bits.v"

module Demux_1x4_8Bits(
    input [7:0] In, 
    input clk0, clk4, clk2, clk,  validIn,
    output validOut0, validOut1,validOut2,validOut3,
    output  [7:0] data_out0,data_out1, data_out2,data_out3
    
    );

    wire [7:0] salida0Demux1, salida1Demux1;
    wire valid0Temp, valid1Temp;
    

    Demux_1x2_8Bits Demux1(.In0(In), .clk4(clk4 ) ,.clk2(clk2), .clk(clk),  . validIn(validIn), .outValid0(valid0Temp), .outValid1(valid1Temp), .data_out0(salida0Demux1), .data_out1(salida1Demux1));
    Demux_1x2_8Bits Demux2(.In0(salida0Demux1),  .clk4(clk2) ,.clk2(~clk0), .clk(~clk4), . validIn(valid0Temp), .outValid0(validOut0), .outValid1(validOut1), .data_out0(data_out0), .data_out1(data_out1));
    Demux_1x2_8Bits Demux3(.In0(salida1Demux1),  .clk4(clk2) ,.clk2(~clk0), .clk(~clk4), . validIn(valid1Temp), .outValid0(validOut2), .outValid1(validOut3), .data_out0(data_out2), .data_out1(data_out3));
endmodule
