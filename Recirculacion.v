module Recirculacion(input [7:0] In0, In1, In2, In3, input validIn,  output reg [7:0] data_mux0,data_Probador0, data_mux1,data_Probador1, data_mux2,data_Probador2, data_mux3,data_Probador3);
//son 4 demuxes

//DEMUX 1
always @(*)begin
        if(validIn == 1 ) begin //de momento si selector es 1 continuamos sino mandamos al probador
            data_mux0 =In0;
        end

        else begin
            data_Probador0 =In0;
        end

end

//DEMUX 2
always @(*)begin
        if(validIn == 1 ) begin //de momento si selector es 1 continuamos sino mandamos al probador
            data_mux1 =In1;
        end

        else begin
            data_Probador1 =In1;
        end

end

//DEMUX 3
always @(*)begin
        if(validIn == 1 ) begin //de momento si selector es 1 continuamos sino mandamos al probador
            data_mux2 =In2;
        end

        else begin
            data_Probador2 =In2;
        end

end

//DEMUX 4
always @(*)begin
        if(validIn == 1 ) begin //de momento si selector es 1 continuamos sino mandamos al probador
            data_mux3 =In3;
        end

        else begin
            data_Probador3 =In3;
        end

end

endmodule
