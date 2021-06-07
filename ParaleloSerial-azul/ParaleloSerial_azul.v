module ParaleloSerial_azul( 
    input [7:0] data_in,
    input clk4_f, clk32_f, valid_in, 
    input reset,
    output reg data_out
    );

    reg [7:0] data2send;
    reg [2:0] selector;
    reg lastbit, idontknow;

    always @(posedge clk32_f) begin 
        if (reset == 1)begin
         selector <= 3'b100;
         data_out <= 0;
         lastbit <= 0;
         idontknow <= 0;
         data2send <=0;
        end

        else begin
            case(selector)
            0: begin
            data_out <= data2send[7];
            {selector} <= {selector} + 1;
            lastbit <= data2send[0];
            idontknow <= data2send[1];
            end
                        
            1: begin 
            data_out <= data2send[6];
            {selector} <= {selector} + 1;
            end

            2: begin 
            data_out <= data2send[5];
            {selector} <= {selector} + 1;
            end

            3: begin
            data_out <= data2send[4];
            {selector} <= {selector} + 1;
            end

            4: begin
            data_out <= data2send[3];
            {selector} <= {selector} + 1;
            end

            5: begin
            data_out <= data2send[2];
            {selector} <= {selector} + 1;
            end

            6: begin
            data_out <= idontknow;
            {selector} <= {selector} + 1;
            if(valid_in == 1)begin
                data2send <= data_in;
            end
            if(valid_in == 0)begin
                data2send <= 8'hBC;
            end
            end

            7: begin
            data_out <= lastbit;
            {selector} <= {selector} + 1;
            end
            endcase
        end
    end

endmodule