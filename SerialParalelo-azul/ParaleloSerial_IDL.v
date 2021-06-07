module ParaleloSerial_IDL (
    input active,
    input clk_32f,
    input clk_4f,
    input reset,
    output reg IDL
);

reg [2:0] selector;


always@(*)begin
if(reset == 1)begin
    IDL = 0;
end
else begin
if (active == 1)begin
    case(selector) 
    0: IDL = 0;
                   
    1: IDL = 1;
    
    2: IDL = 1;
    
    3: IDL = 1;
    
    4: IDL = 1;
    
    5: IDL = 1;
    
    6: IDL = 0;
    
    7: IDL = 0;

    endcase
    end
if (active == 0)begin
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
end


always@(posedge clk_32f)begin
    if(reset == 1)begin
        selector = 3'b111;
    end
    else begin
    selector <= selector + 1;
    end
end

endmodule