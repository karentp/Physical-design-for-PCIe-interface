module ParaleloSerial_verde( 
    input clk4_f, clk32_f, valid_in, 
    input reset,
    output reg data_out
    );

    reg [2:0] selector;
    reg active;

    always @(posedge clk32_f) begin 

        if (reset == 1)begin
            selector <= 3'b110;
            data_out <= 0;
        end

        else begin

            if (valid_in == 0)begin

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

        if (valid_in == 1)begin

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

    // always @(negedge clk4_f) begin 
    //     if (reset == 1)begin
    //         active <= 0;
    //     end
    //     else begin
    //         if(valid_in == 0)begin
    //         active <= 0;
    //         end
    //         if(valid_in == 1)begin
    //         active <= 1;
    //         end
    //     end
    // end

endmodule