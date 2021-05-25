module Demux_1x2_8Bits( input [7:0] In0, input clk, validIn, output reg outValid0, outValid1,  output reg [7:0] data_out0,data_out1);

reg [7:0] ValorAnterior_out0;
reg [7:0] ValorAnterior_out1;
reg  validTemp_In0;
reg  validTemp_In1;
reg selector;

initial begin
        selector = 0;
end

always @(*)begin
        if(validIn == 1 && selector == 0) begin
            ValorAnterior_out0 =In0;
            validTemp_In0= validIn;

        end

        else if(validIn == 1 && selector == 1) begin
            ValorAnterior_out1 =In0;
            validTemp_In1 = validIn;
        end

end

always @(posedge clk)begin
        selector <= selector +1;       
        data_out0 <= ValorAnterior_out0;
        data_out1 <= ValorAnterior_out1;
        outValid0 <= validTemp_In0;
        outValid1 <= validTemp_In1;
end

endmodule