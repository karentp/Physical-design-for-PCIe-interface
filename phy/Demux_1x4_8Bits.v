`include "Demux_1x2_8Bits.v"

module Demux_1x4_8Bits(
    
    input [7:0] data2send_to_LDMX, 
    input clk_4f, clk_2f, clk,  valid_out_to_LDMX, reset,
    output outValid0_conductual, outValid1_conductual,outValid2_conductual,outValid3_conductual,
    output [7:0] data_out0_conductual,data_out1_conductual, data_out2_conductual,data_out3_conductual
    
    );

    wire [7:0] salida0Demux1, salida1Demux1;
    wire valid0Temp, valid1Temp;
    
/////////L1

    Demux_1x2_8Bits Demux1(
                .In(data2send_to_LDMX), 
                .clk_2f(clk_2f),
                .reset(reset),
                .validIn(valid_out_to_LDMX), 
                .outValid0_conductual(valid0Temp), 
                .outValid1_conductual(valid1Temp), 
                .data_out0_conductual(salida0Demux1), 
                .data_out1_conductual(salida1Demux1));


///////// L2


    Demux_1x2_8Bits Demux2(
                .In(salida0Demux1),  
                .clk_2f(~clk), 
                .reset(reset), 
                .validIn(valid0Temp), 
                .outValid0_conductual(outValid0_conductual), 
                .outValid1_conductual(outValid2_conductual), 
                .data_out0_conductual(data_out0_conductual), 
                .data_out1_conductual(data_out2_conductual));


    Demux_1x2_8Bits Demux3(
                .In(salida1Demux1), 
                .reset(reset),
                .clk_2f(~clk), 
                .validIn(valid1Temp), 
                .outValid0_conductual(outValid1_conductual), 
                .outValid1_conductual(outValid3_conductual), 
                .data_out0_conductual(data_out1_conductual), 
                .data_out1_conductual(data_out3_conductual));


endmodule
