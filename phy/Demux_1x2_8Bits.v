module Demux_1x2_8Bits( 
        input [7:0] In, 
        input clk_2f, validIn, reset, 
        output reg outValid0_conductual, outValid1_conductual,  
        output reg [7:0] data_out0_conductual,data_out1_conductual

);

        reg [7:0] ValorAnterior_out1;
        reg  validTemp_In1;

        always @(posedge clk_2f)begin 
                if (reset == 1)begin
                        data_out0_conductual <= 0;
                        outValid0_conductual <= 0;
                        data_out1_conductual <= 0;
                        outValid1_conductual <= 0;
                end
                else begin
                        data_out1_conductual <= In;
                        outValid1_conductual <= validIn;
                        data_out0_conductual <= ValorAnterior_out1;
                        outValid0_conductual <= validTemp_In1;
                end     
        end
        
        always @(negedge clk_2f)begin 
                if (reset == 1)begin
                        ValorAnterior_out1 <= 0;
                        validTemp_In1 <= 0;
                end
                else begin     
                ValorAnterior_out1 <= In;
                validTemp_In1 <= validIn;
        end
        end


endmodule