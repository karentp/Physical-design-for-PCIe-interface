
module Demux_1x4_8Bits(
    input [7:0] In, 
    input clk0, clk4, clk2, clk,  validIn,
    output outValid0_conductual, outValid1_conductual,outValid2_conductual,outValid3_conductual,
    output [7:0] data_out0_conductual,data_out1_conductual, data_out2_conductual,data_out3_conductual
    
    );

    wire [7:0] salida0Demux1, salida1Demux1;
    wire valid0Temp, valid1Temp;
    

    Demux_1x2_8Bits Demux1(
                .In(In), 
                .clk4(clk4),
                .clk2(clk2), 
                .clk(clk),  
                .validIn(validIn), 
                .outValid0_conductual(valid0Temp), 
                .outValid1_conductual(valid1Temp), 
                .data_out0_conductual(salida0Demux1), 
                .data_out1_conductual(salida1Demux1));


    Demux_1x2_8Bits Demux2(
                .In(salida0Demux1),  
                .clk4(clk2),
                .clk2(~clk0), 
                .clk(clk4), 
                .validIn(valid0Temp), 
                .outValid0_conductual(outValid0_conductual), 
                .outValid1_conductual(outValid1_conductual), 
                .data_out0_conductual(data_out0_conductual), 
                .data_out1_conductual(data_out1_conductual));


    Demux_1x2_8Bits Demux3(
                .In(salida1Demux1),  
                .clk4(clk2),
                .clk2(~clk0), 
                .clk(clk4), 
                .validIn(valid1Temp), 
                .outValid0_conductual(outValid2_conductual), 
                .outValid1_conductual(outValid3_conductual), 
                .data_out0_conductual(data_out2_conductual), 
                .data_out1_conductual(data_out3_conductual));


endmodule
