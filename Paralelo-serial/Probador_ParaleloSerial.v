module Probador_ParaleloSerial(
    input [7:0] data2send,
    input data_out,

    output reg [7:0] data_in,
    output reg clk4_f, clk32_f, valid_in);

	initial begin
		$dumpfile("ParaleloSerial.vcd");	
		$dumpvars;

    {valid_in} = 0;
    {data_in} = 0;

    @(posedge clk4_f);
    data_in <=  8'hFF;
    valid_in <= 1;

    @(posedge clk4_f);
    data_in <= 8'hEE;
    valid_in <= 0;

    @(posedge clk4_f);
    data_in <= 8'h00;
    @(posedge clk4_f);


    $finish;

    end

    initial clk4_f <= 0;
    initial clk32_f <= 1;

    always #16 clk4_f <= ~clk4_f;
    always #2 clk32_f <= ~clk32_f;

endmodule

