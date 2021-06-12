module probadorDemux( // Módulo probador: generador de señales y monitor de datos
output reg clk4, clk2,clk,
output reg validIn,
output reg [7:0] In0,
input [7:0] data_out0,
input [7:0] data_out1,
input outValid0,
input outValid1
);


	initial begin
		$dumpfile("PruebasDemux.vcd");	
		$dumpvars;
		
		//$display ("\t\t\tclk,\tS,\tVal,\tin0,\tin1,\toutCon, \toutEstr,\tcont");
		
		//$monitor($time,"\t%b\t%b\t%b\t%b\t%b\t%b\t\t%b", clk, v);
		//{In0} =  8'h00;	// A los 2 bits, asigna un tipo bit con valor 0.
        {validIn} = 1'b1; 

		@(posedge clk4);	// Espera/sincroniza con el flanco positivo del reloj
		
		{In0} <= 8'hFF;

		@(posedge clk4);	// Espera/sincroniza con el flanco positivo del reloj
		
		{In0} <= 8'hDD;

		@(posedge clk4);	// Espera/sincroniza con el flanco positivo del reloj
		
		{In0} <= 8'hEE;

		@(posedge clk4);	// Espera/sincroniza con el flanco positivo del reloj
		
		{In0} <= 8'hCC;
		@(posedge clk4);	// Espera/sincroniza con el flanco positivo del reloj
		
		{In0} <= 8'hBB;

		@(posedge clk4);	// Espera/sincroniza con el flanco positivo del reloj
		
		{In0} <= 8'h99;

		@(posedge clk4);	// Espera/sincroniza con el flanco positivo del reloj
		
		{In0} <= 8'hAA;

		@(posedge clk4);	// Espera/sincroniza con el flanco positivo del reloj
		
		{In0} <= 8'h88;

		@(posedge clk4);	// Espera/sincroniza con el flanco positivo del reloj
		
		{In0} <= 8'h88;

		@(posedge clk4);	// Espera/sincroniza con el flanco positivo del reloj
		
		{In0} <= 8'h77;
          
		
		@(posedge clk4);	
		{ validIn, In0} <= 'b0;
		$finish;		
	end
	// Reloj
	initial	clk4 	<= 0;
	initial	clk2 	<= 1;	
	initial	clk 	<= 1;	
	always	#20 clk4 	<= ~clk4;		// Hace "toggle" cada 20*10ns
	always	#40 clk2 	<= ~clk2;
	always	#10 clk 	<= ~clk;
endmodule