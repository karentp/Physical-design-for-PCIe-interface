module ParaleloSerial( 
    input [7:0] data_in,
    input clk4_f, clk32_f, valid_in, 
    output reg data_out
    );

    reg [7:0] data2send;
    reg [2:0] selector=0;

    
    always @(posedge clk4_f)begin
        if(valid_in == 0) begin
            data2send <= 8'hBC;
            selector <= 0;
        end
        else begin
            data2send <= data_in;
        end
    end

    always@(posedge clk32_f)begin
       
        {selector} <= {selector} + 1;

    end

    always@(*)begin
    if(selector == 0) begin 
    data_out = data2send[7];
    end
                   
    if(selector == 1) begin 
    data_out = data2send[6];
    end
    
    if(selector == 2) begin 
    data_out = data2send[5];
    end
    
    if(selector == 3) begin 
    data_out = data2send[4];
    end
    
    if(selector == 4) begin 
    data_out = data2send[3];
    end
    
    if(selector == 5) begin 
    data_out = data2send[2];
    end
    
    if(selector == 6) begin 
    data_out = data2send[1];
    end
    
    if(selector == 7) begin 
    data_out = data2send[0];
    end

    end


endmodule