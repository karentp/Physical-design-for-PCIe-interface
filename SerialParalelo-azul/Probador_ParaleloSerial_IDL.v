module Probador_ParaleloSerial_IDL(
    output reg active,
    output reg clk_32f,
    output reg clk_4f,
    output reg reset,
    input IDL,
    input IDL_estruct);

	initial begin
		$dumpfile("SerialParalelo_IDL.vcd");	
		$dumpvars;
        
        reset = 0;
        reset = 1;
        active<=0;
        
        @(posedge clk_32f)
        @(posedge clk_32f)
        @(posedge clk_32f)
        @(posedge clk_32f)
  
        reset = 0;
        @(posedge clk_4f)
        
        
        

        repeat(2)begin
            @(posedge clk_4f);
            active<=0;
        end

        repeat(2)begin
            @(posedge clk_4f);
            active <= 1;

        end
        repeat(2)begin
            @(posedge clk_4f);
            active <= 0;

        end
        @(posedge clk_4f)
        @(posedge clk_4f)

        $finish;

    end

    initial clk_4f <=0;
    initial clk_32f <= 1;

    always #64 clk_4f <= ~clk_4f;
    always #8 clk_32f <= ~clk_32f;


endmodule


