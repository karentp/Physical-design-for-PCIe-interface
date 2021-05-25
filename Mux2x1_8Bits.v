module Mux2x1_8Bits(
    input [7:0] In0,In1,
    input clk, valid0, valid1,
    output reg outValid,
    output reg [7:0] data_out
    );

    reg [7:0] ValorAnterior;
    reg  validTemp=1'b0;
    reg selector=1'b0;

    /*initial begin
        selector = 0;
        validTemp = 0;
        ValorAnterior=8'b0;
    end*/

    always @(*)begin
        selector = 0;
        validTemp = 0;
        ValorAnterior=8'b0;
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
        end
    end  

    always @(posedge clk)begin
        selector <= selector + 1;
        data_out <= ValorAnterior;
        outValid <= validTemp;
        
    end

endmodule

