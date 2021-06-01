module ParaleloSerial_IDL (
    input active,
    input clk_32f,
    input clk_4f,
    output reg IDL
);

reg [2:0] selector = 3'b111;
reg valid;

always@(selector)begin
if (valid == 1)begin
    case(selector) 
    0: IDL = 1;
                   
    1: IDL = 1;
    
    2: IDL = 1;
    
    3: IDL = 1;
    
    4: IDL = 1;
    
    5: IDL = 1;
    
    6: IDL = 0;
    
    7: IDL = 0;

    endcase
    end
end
always@(selector)begin
if (valid == 0)begin
    case(selector) 
    0: IDL = 1;
                   
    1: IDL = 0;
    
    2: IDL = 1;
    
    3: IDL = 1;
    
    4: IDL = 1;
    
    5: IDL = 1;
    
    6: IDL = 0;
    
    7: IDL = 0;

    endcase
    end
end


always@(posedge clk_32f)begin
    selector <= selector + 1;
end

always@(posedge clk_4f)begin
    valid <= active;
end


endmodule