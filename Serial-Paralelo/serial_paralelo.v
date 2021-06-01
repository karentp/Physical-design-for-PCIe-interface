module serial_paralelo(
    input clk_4f, clk_32f, data_in,
    output reg [7:0] data2send,
    output reg [3:0] BC_counter,
    output reg active, valid_out);

    reg temp0, temp1, temp2, temp3, temp4, temp5, temp6, temp7;
    reg in_temp;
    reg [2:0] selector=3;
    reg [7:0] data_out;
   
 always@(selector)begin  
   case(selector) 
    0: temp7 = data_in;
                   
    1: temp6 = data_in;
    
    2: temp5 = data_in;
    
    3: temp4 = data_in;
    
    4: temp3 = data_in;
    
    5: temp2 = data_in;
    
    6: temp1 = data_in;
    
    7: temp0 = data_in;

    endcase
 end

always@(posedge clk_32f)begin
    selector<=selector+1;

end

always@(posedge clk_4f)begin

    data2send[0] <= temp0;
    data2send[1] <= temp1;
    data2send[2] <= temp2;
    data2send[3] <= temp3;
    data2send[4] <= temp4;
    data2send[5] <= temp5;
    data2send[6] <= temp6;
    data2send[7] <= temp7;

end


endmodule