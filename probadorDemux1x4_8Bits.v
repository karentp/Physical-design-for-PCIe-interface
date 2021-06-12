module probadorDemux1x4_8Bits(
    output reg clk, clk2, clk4, clk0,
    output reg validIn,
    output reg [7:0] In,
    input outValid0,
    input outValid1,
    input outValid2,
    input outValid3,
    input [7:0]  data_out0,
    input [7:0]  data_out1,
    input [7:0]  data_out2,
    input [7:0]  data_out3 
);

	initial begin
		$dumpfile("Pruebademux1x4_8Bits.vcd");	
		$dumpvars;
		
		//$display ("\t\t\tclk,\tS,\tVal,\tIn,\tin1,\toutCon, \toutEstr,\tcont");
		
		//$monitor($time,"\t%b\t%b\t%b\t%b\t%b\t%b\t\t%b", clk, v);
		{validIn} = 1'b1; 

		@(posedge clk4);	// Espera/sincroniza con el flanco positivo del reloj
		
		{In} <= 8'hFF;

		@(posedge clk4);	// Espera/sincroniza con el flanco positivo del reloj
		
		{In} <= 8'hDD;

		@(posedge clk4);	// Espera/sincroniza con el flanco positivo del reloj
		
		{In} <= 8'hEE;

		@(posedge clk4);	// Espera/sincroniza con el flanco positivo del reloj
		
		{In} <= 8'hCC;
		@(posedge clk4);	// Espera/sincroniza con el flanco positivo del reloj
		
		{In} <= 8'hBB;

		@(posedge clk4);	// Espera/sincroniza con el flanco positivo del reloj
		
		{In} <= 8'h99;

		@(posedge clk4);	// Espera/sincroniza con el flanco positivo del reloj
		
		{In} <= 8'hAA;

		@(posedge clk4);	// Espera/sincroniza con el flanco positivo del reloj
		
		{In} <= 8'h88;

		@(posedge clk4);	// Espera/sincroniza con el flanco positivo del reloj
		
		{In} <= 8'h88;

		@(posedge clk4);	// Espera/sincroniza con el flanco positivo del reloj
		
		{In} <= 8'h77;
          
		
		@(posedge clk4);	
		{ validIn, In} <= 'b0;
		$finish;		
	end
	// Reloj
	initial	clk4 	<= 0;
	initial	clk2 	<= 1;	
	initial	clk 	<= 1;
	initial clk0 	<= 1;
	always	#20 clk4 	<= ~clk4;		// Hace "toggle" cada 20*10ns
	always	#40 clk2 	<= ~clk2;
	always	#10 clk 	<= ~clk;
	always	#80 clk0 	<= ~clk0;		// Hace "toggle" cada 20*10ns
endmodule