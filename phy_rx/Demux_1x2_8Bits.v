module Demux_1x2_8Bits( 
        input [7:0] In, 
        input clk4, clk2, clk, validIn, 
        output reg outValid0_conductual, outValid1_conductual,  
        output reg [7:0] data_out0_conductual,data_out1_conductual

);

        reg [7:0] ValorAnterior_out0, ValorFuturo0;
        reg [7:0] ValorAnterior_out1;
        reg  validTemp_In;
        reg  validTemp_In1;
        reg selector = 1'b0;
        reg selector2 = 1'b1;

        always @(posedge clk4)begin 
                selector <= clk2; 
                selector2 <= selector2 +1;
                if(selector == 1) begin
                        ValorFuturo0 <= In;
                        validTemp_In <= validIn;
                end
                 if(selector == 0) begin
                        data_out1_conductual <= In;
                end
                

        end
        always @(*)begin 
                if(selector == 0) begin
                        ValorAnterior_out1 = data_out1_conductual;
                        validTemp_In1 = validIn;
                end
                else begin
                        data_out0_conductual = ValorFuturo0;
                end

        end

        always @(negedge clk4)begin  
                outValid0_conductual <= validTemp_In;
        end

        always @(posedge clk)begin 
                outValid1_conductual <= validTemp_In1;
        end


endmodule