module probadorDemux( // Módulo probador: generador de señales y monitor de datos
output reg clk,
output reg validIn,
output reg [7:0] data_in,
input [7:0] data_out0,
input [7:0] data_out1,
input outValid0,
input outValid1
);

	initial begin
		$dumpfile("PruebademuxJOSERolo.vcd");	
		$dumpvars;
		
		//$display ("\t\t\tclk,\tS,\tVal,\tin0,\tin1,\toutCon, \toutEstr,\tcont");
		
		//$monitor($time,"\t%b\t%b\t%b\t%b\t%b\t%b\t\t%b", clk, v);
		{data_in} =  8'b00000000;	// A los 2 bits, asigna un tipo bit con valor 0.
        {validIn} = 1'b1; 
		repeat (8) begin		
        		@(posedge clk);	// Espera/sincroniza con el flanco positivo del reloj
                
                {data_in} <= {data_in} +1;
                /*
				if(data_out_est==data_out_cond)
					checker<=1;
				else
					checker<=0;
                */
		end
		@(posedge clk);	
		{ validIn, data_in} <= 'b0;
		$finish;		
	end
	// Reloj
	initial	clk 	<= 0;	
	always	#20 clk 	<= ~clk;		// Hace "toggle" cada 20*10ns
endmodule