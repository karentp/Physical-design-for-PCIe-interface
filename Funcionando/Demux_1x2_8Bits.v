module Demux_1x2_8Bits( 
        input [7:0] In, 
        input clk4, clk2, clk, validIn, 
        output reg outValid0, outValid1,  
        output reg [7:0] data_out0,data_out1

);

        reg [7:0] ValorAnterior_out0;
        reg [7:0] ValorAnterior_out1;
        reg  validTemp_In;
        reg  validTemp_In1;
        reg selector = 1'b0;
        reg selector2 = 1'b1;

        always @(posedge clk4)begin 
                selector <= clk2; 
                selector2 <= selector2 +1;
                if(selector == 1) begin
                        ValorAnterior_out0 <= In;
                        validTemp_In <= validIn;
                end
                else if(selector == 0)begin
                        ValorAnterior_out1 <= In;
                        validTemp_In1 <= validIn;
                end
                
        

        end
        always @(*)begin 
                if(selector == 0) begin
                        ValorAnterior_out1 = In;
                        validTemp_In1 = validIn;
                end

        end

        always @(negedge clk4)begin  
                data_out0 <= ValorAnterior_out0;
                //data_out1 <= ValorAnterior_out1;
                outValid0 <= validTemp_In;
               //outValid1 <= validTemp_In1;
        end

        always @(posedge clk)begin  
                data_out1 <= ValorAnterior_out1;
                outValid1 <= validTemp_In1;
        end


endmodule