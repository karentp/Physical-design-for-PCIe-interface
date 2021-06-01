module SerialParalelo(
    input clk_4f, clk_32f, data_in,
    output reg [7:0] data2send, data_out,
    output reg active, valid_out);
    reg [3:0] BC_counter=0;
    reg temp0,temp1,temp2,temp3,temp4,temp5,temp6,temp7;
    reg [2:0] selector=3'b011;
    reg [2:0] selectorprev=3'b011;
    reg [2:0] cont_aux=0;
    reg valid_aux=0;
    reg active_aux=0;
    

   
 always@(*)begin  
    if(selector != selectorprev)begin
    case (selector)
    0: temp0 = data_in;

    1: temp1= data_in; 

    2: temp2 = data_in;

    3: temp3 = data_in;

    4: temp4 = data_in;

    5: temp5 = data_in;

    6: temp6 = data_in;

    7: temp7 = data_in;

    endcase
    end
 end

always@(posedge clk_32f)begin
    selector<=selector+1;
end
always@(negedge clk_32f)begin
    selectorprev<=selector;
end

always@(posedge clk_4f)begin
    data2send[0]<=temp7;
    data2send[1]<=temp6;
    data2send[2]<=temp5;
    data2send[3]<=temp4;
    data2send[4]<=temp3;
    data2send[5]<=temp2;
    data2send[6]<=temp1;
    data2send[7]<=temp0;
    end

always@(posedge clk_4f)begin

    if(data2send==8'hBC)begin
        cont_aux = cont_aux + 1;
    end
    else
        cont_aux = cont_aux;
end  

always@(*)begin
    BC_counter = cont_aux;
end

always@(*)begin
    active=0;
    if(BC_counter==4)begin
        active = 1;
        valid_aux=1;
    end
end

always@(posedge clk_4f)begin
    valid_out <= valid_aux;
end

always@(*)begin
    if(active == 1)begin
        data_out <= data2send;
    end
end


endmodule