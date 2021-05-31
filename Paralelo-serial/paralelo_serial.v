module paralelo_serial( 
    input [7:0] data_in,
    input clk4_f, clk32_f, valid_in,
    
    output reg [7:0] data2send,
    output reg data_out);

    reg [2:0] selector=0;
    reg out_temporal;

    
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
    case(selector) 
    0: data_out = data2send[7];
                   
    1: data_out = data2send[6];
    
    2: data_out = data2send[5];
    
    3: data_out = data2send[4];
    
    4: data_out = data2send[3];
    
    5: data_out = data2send[2];
    
    6: data_out = data2send[1];
    
    7: data_out = data2send[0];

    default: data_out = 0;

    endcase
    end


endmodule