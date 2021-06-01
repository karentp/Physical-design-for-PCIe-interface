<<<<<<< HEAD:Mux2x1_8Bits.v
=======
// Multiplexor 2X1 de 8 bits 

>>>>>>> 52ea325d6c1af3636a4c6e72eb69156ba71f3a17:phy_tx/Mux2x1_8Bits.v
module Mux2x1_8Bits(
    input [7:0] In0,In1,
    input clk, valid0, valid1,
    output reg outValid,
    output reg [7:0] data_out
    );

    reg [7:0] ValorAnterior;
    reg  validTemp;
    reg selector=0;

<<<<<<< HEAD:Mux2x1_8Bits.v
   /* initial begin
        selector = 0;
        validTemp = 0;
        ValorAnterior = 0;
    end*/

    always @(*)begin
        //selector = 0;
=======
    always @(*)begin
>>>>>>> 52ea325d6c1af3636a4c6e72eb69156ba71f3a17:phy_tx/Mux2x1_8Bits.v
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

    always @(posedge clk)begin
<<<<<<< HEAD:Mux2x1_8Bits.v
        //selector <= 0;
=======
>>>>>>> 52ea325d6c1af3636a4c6e72eb69156ba71f3a17:phy_tx/Mux2x1_8Bits.v
        selector <= selector + 1;
        data_out <= ValorAnterior;
        outValid <= validTemp;
        
    end

endmodule