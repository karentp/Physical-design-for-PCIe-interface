module Probador_ParaleloSerial_verde(
    input data_out,
    input data_out_estruct,
    output reg reset,
    output reg clk4_f, clk32_f, valid_in);

	initial begin
		$dumpfile("ParaleloSerial_verde.vcd");	
		$dumpvars;
    {valid_in} = 0;
    reset = 0;
    reset = 1;
    @(posedge clk4_f)

    @(posedge clk32_f)
    @(posedge clk32_f)
    @(posedge clk32_f)
    @(posedge clk32_f)
    @(posedge clk32_f)

    reset = 0;
   
    @(posedge clk4_f);
    {valid_in} = 1;
   

    @(posedge clk4_f);

    @(posedge clk4_f);
    {valid_in} = 0;

    @(posedge clk4_f);

    @(posedge clk4_f);
    {valid_in} = 1;
    @(posedge clk4_f);
    {valid_in} = 0;
    @(posedge clk4_f);
    @(posedge clk4_f);


    $finish;

    end

    initial clk4_f <= 1;
    initial clk32_f <= 1;

    always #16 clk4_f <= ~clk4_f;
    always #2 clk32_f <= ~clk32_f;

endmodule

