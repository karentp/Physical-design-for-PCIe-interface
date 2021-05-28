module Mux2x1_8Bits(
    input [7:0] In0,In1,
    input clk, valid0, valid1,
    output reg outValid,
    output reg [7:0] data_out
    );

    reg [7:0] ValorAnterior;
    reg validTemp;
    reg selector;

    initial begin
        selector = 0;
        validTemp = 0;
        ValorAnterior = 0;
    end

    always @(*)begin
        validTemp = 0;
        if (valid1 == 0) ValorAnterior=ValorAnterior;

        if((valid0 == 1) && (selector == 0)) begin
            ValorAnterior = In0;
            validTemp = valid0;
        end

        if((valid1 == 1) && (selector == 1)) begin
            ValorAnterior = In1; 
            validTemp = valid1;  
        end
    end  

    always @(posedge clk)begin
        data_out <= ValorAnterior;
        selector <= selector + 1;
        outValid <= validTemp;
        
    end

endmodule

