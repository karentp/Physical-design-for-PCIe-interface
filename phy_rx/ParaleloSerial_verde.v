module ParaleloSerial_verde( 
    input clk_4f, clk_32f, active_to_PS, 
    input reset,
    output reg data_out
    );

    reg [2:0] selector;
    reg active;

    always @(posedge clk_32f) begin 

        if (reset == 1)begin
            selector <= 3'b010;
            data_out <= 0;
        end

        else begin

            if (active_to_PS == 0)begin

                case(selector)
                0: begin
                data_out <= 1;
                {selector} <= {selector} + 1;
                end
                            
                1: begin 
                data_out <= 0;
                {selector} <= {selector} + 1;
                end

                2: begin 
                data_out <= 1;
                {selector} <= {selector} + 1;
                end

                3: begin
                data_out <= 1;
                {selector} <= {selector} + 1;
                end

                4: begin
                data_out <= 1;
                {selector} <= {selector} + 1;
                end

                5: begin
                data_out <= 1;
                {selector} <= {selector} + 1;
                end

                6: begin
                data_out <= 0;
                {selector} <= {selector} + 1;
                end

                7: begin
                data_out <= 0;
                {selector} <= {selector} + 1;
                end
            endcase

            end

        if (active_to_PS == 1)begin

            case(selector)
                0: begin
                data_out <= 1;
                {selector} <= {selector} + 1;
                end
                            
                1: begin 
                data_out <= 1;
                {selector} <= {selector} + 1;
                end

                2: begin 
                data_out <= 1;
                {selector} <= {selector} + 1;
                end

                3: begin
                data_out <= 1;
                {selector} <= {selector} + 1;
                end

                4: begin
                data_out <= 1;
                {selector} <= {selector} + 1;
                end

                5: begin
                data_out <= 1;
                {selector} <= {selector} + 1;
                end

                6: begin
                data_out <= 0;
                {selector} <= {selector} + 1;
                end

                7: begin
                data_out <= 0;
                {selector} <= {selector} + 1;
                end

            endcase

            end

        end
    end

endmodule