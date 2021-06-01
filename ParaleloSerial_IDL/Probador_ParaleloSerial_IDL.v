module Probador_ParaleloSerial_IDL(
    output reg active,
    output reg clk_32f,
    output reg clk_4f,
    input IDL,
    input IDL_estruct);

	initial begin
		$dumpfile("SerialParalelo_IDL.vcd");	
		$dumpvars;
        
        active<=0;

        repeat(8)begin
            @(posedge clk_32f);

        end

        repeat(8)begin
            @(posedge clk_32f);
            active <= 1;

        end
        repeat(8)begin
            @(posedge clk_32f);
            active <= 0;

        end
        repeat(8)begin
            @(posedge clk_32f);
            active <= 1;

        end
        repeat(8)begin
            @(posedge clk_32f);
            active <= 0;

        end


        $finish;

    end

    initial clk_4f <=0;
    initial clk_32f <= 1;

    always #64 clk_4f <= ~clk_4f;
    always #8 clk_32f <= ~clk_32f;


endmodule


