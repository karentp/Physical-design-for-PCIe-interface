module probadorDemux1x4_8Bits(
    output reg clk, clk2, clk4, reset,
    output reg validIn,
    output reg [7:0] In,
    input outValid0_conductual,
    input outValid1_conductual,
    input outValid2_conductual,
    input outValid3_conductual,
    input [7:0]  data_out0_conductual,
    input [7:0]  data_out1_conductual,
    input [7:0]  data_out2_conductual,
    input [7:0]  data_out3_conductual,


	//estructural

    input outValid0_estructural,
    input outValid1_estructural,
    input outValid2_estructural,
    input outValid3_estructural,
    input [7:0]  data_out0_estructural,
    input [7:0]  data_out1_estructural,
    input [7:0]  data_out2_estructural,
    input [7:0]  data_out3_estructural
);

	initial begin
		$dumpfile("Demux1x4_8Bits.vcd");	
		$dumpvars;
		{In} <= 8'h00;
		validIn = 1'b0; 
		reset = 0;
		reset = 1;
		@(posedge clk4)
		@(posedge clk4)
		reset = 0;
		
		@(posedge clk)
	@(posedge clk4);
		{validIn} = 1'b1;
		
		@(posedge clk)
		@(posedge clk)
		
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
		@(posedge clk4);
		@(posedge clk4);
		$finish;		
	end
	// Reloj
	initial	clk4 	<= 1;
	initial	clk2 	<= 1;	
	initial	clk 	<= 1;
	always	#10 clk4 	<= ~clk4;		// Hace "toggle" cada 20*10ns
	always	#20 clk2 	<= ~clk2;
	always	#40 clk 	<= ~clk;		// Hace "toggle" cada 20*10ns
endmodule