// Multiplexor 2X1 de 8 bits 

module Mux2x1_8Bits(
    input [7:0] In0,In1,
    input clk, valid0, valid1,
    input reset,
    output reg outValid,
    output reg [7:0] data_out
    );

    reg [7:0] ValorAnterior;
    reg  validTemp;
    reg selector;

    always @(*)begin
    if(reset == 1)begin
            validTemp = 0;
        end
        else begin
        validTemp = 0;
        ValorAnterior = data_out;

        if(valid0 == 1 & selector == 0) begin
            ValorAnterior = In0;
            validTemp = valid0;
        end

        else if(valid1 == 1 & selector == 1) begin
            ValorAnterior = In1; 
            validTemp = valid1;  
        end
        else begin
            validTemp = 0;
            ValorAnterior = ValorAnterior;
        end
        end
        
    end  

    always @(posedge clk)begin
        if(reset == 1)begin
            selector <= 0;
        end
        else begin
            selector <= selector + 1;
            data_out <= ValorAnterior;
            outValid <= validTemp;
        end
    end

endmodule