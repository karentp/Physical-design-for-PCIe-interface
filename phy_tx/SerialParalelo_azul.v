module SerialParalelo_azul (
    input clk_4f, clk_32f, data_in, reset,
    output reg recirculacion);
    

    reg temp0,temp1,temp2,temp3,temp4,temp5,temp6,temp7;
    reg [2:0] selector;
    reg [2:0] BC_counter;
    reg [7:0] auxiliar;
    reg [7:0] data2send;
    
   
 always@(negedge clk_32f)begin  
    if(reset == 1)begin
        temp0 <= 0;
        temp1 <= 0;
        temp2 <= 0;
        temp3 <= 0;
        temp4 <= 0;
        temp5 <= 0;
        temp6 <= 0;
        temp7 <= 0;
    end

    else begin
        case (selector)
        0: begin 
            temp0 <= data_in;
            end

        1: begin 
            temp1 <= data_in;
            end

        2: begin 
            temp2 <= data_in;
            end

        3: begin 
            temp3 <= data_in;
            end

        4: begin 
            temp4 <= data_in;
            end

        5: begin 
            temp5 <= data_in;
            end

        6: begin 
            temp6 <= data_in;
            end

        7: begin 
            temp7 <= data_in;
            end

        endcase
    end
 end



always@(posedge clk_32f)begin
    if(reset == 1)begin
        selector <= 3'b001;
    end
    else begin
        selector<=selector+1;
    end
end




always@(posedge clk_4f)begin

    if(reset == 1)begin
        BC_counter <= 0;
        recirculacion <= 0;
        data2send <= 0;
    end

    else begin
    if(data2send == 8'hBC)begin
        BC_counter <=  BC_counter + 1;
    end

    if (BC_counter == 3'b011 && data2send == 8'hBC)begin
        recirculacion <= 1;
    end
    
    data2send[0]<=temp7;
    data2send[1]<=temp6;
    data2send[2]<=temp5;
    data2send[3]<=temp4;
    data2send[4]<=temp3;
    data2send[5]<=temp2;
    data2send[6]<=temp1;
    data2send[7]<=temp0;

    end
end


endmodule