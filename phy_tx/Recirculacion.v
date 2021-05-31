module Recirculacion(
    input [7:0] In0, In1, In2, In3,
    input validIn, 
    output reg [7:0] data_mux0,
    output reg [7:0] data_Probador0,
    output reg [7:0] data_mux1,
    output reg [7:0] data_Probador1,
    output reg [7:0] data_mux2,
    output reg [7:0] data_Probador2, 
    output reg [7:0] data_mux3,
    output reg [7:0] data_Probador3
    );
//son 4 demuxes

//DEMUX 1
always @(*)begin
        data_mux0 = 0;
        data_Probador0 =0;
        if(validIn == 1 ) begin //de momento si selector es 1 continuamos sino mandamos al probador
            data_mux0 =In0;
        end

        else if(validIn == 0 )begin
            data_Probador0 =In0;
            data_mux0 = 8'b0;
        end

end

//DEMUX 2
always @(*)begin
        data_mux1 = 0;
        data_Probador1 =0;
        if(validIn == 1 ) begin //de momento si selector es 1 continuamos sino mandamos al probador
            data_mux1 =In1;
        end

        else if(validIn == 0 )begin
            data_Probador1 =In1;
            data_mux1 = 8'b0;
        end

end

//DEMUX 3
always @(*)begin
        data_mux2 = 0;
        data_Probador2 =0;
        if(validIn == 1 ) begin //de momento si selector es 1 continuamos sino mandamos al probador
            data_mux2 =In2;
        end

        else if(validIn == 0 )begin
            data_Probador2 =In2;
            data_mux2 = 8'b0;
        end

end

//DEMUX 4
always @(*)begin
        data_mux3 = 0;
        data_Probador3 =0;
        if(validIn == 1 ) begin //de momento si selector es 1 continuamos sino mandamos al probador
            data_mux3 =In3;
        end

        else if(validIn == 0 )begin
            data_Probador3 =In3;
            data_mux3 = 8'b0;
        end

end

endmodule
