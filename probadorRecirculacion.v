module probadorRecirculacion( // Módulo probador: generador de señales y monitor de datos
output reg clk,
output reg validIn,
output reg [7:0] In0,
output reg [7:0] In1,
output reg [7:0] In2,
output reg [7:0] In3,
input [7:0] data_Mux0,
input [7:0] data_Probador0,
input [7:0] data_Mux1,
input [7:0] data_Probador1,
input [7:0] data_Mux2,
input [7:0] data_Probador2,
input [7:0] data_Mux3,
input [7:0] data_Probador3
);

	initial begin
		$dumpfile("PruebaRecirculacionFelipeJOSERolo.vcd");	
		$dumpvars;
		
		//$display ("\t\t\tclk,\tS,\tVal,\tin0,\tin1,\toutCon, \toutEstr,\tcont");
		
		//$monitor($time,"\t%b\t%b\t%b\t%b\t%b\t%b\t\t%b", clk, v);
		{In0} =  8'b00000000;
        {In1} =  8'b00000000;
        {In2} =  8'b00000000;
        {In3} =  8'b00000000;	
        {validIn} = 1'b0; 
		repeat (8) begin		
        		@(posedge clk);	// Espera/sincroniza con el flanco positivo del reloj
                {validIn} <= {validIn} +1;
                {In0} <= {In0} +1;
                {In1} <= {In1} +1;
                {In2} <= {In2} +1;
                {In3} <= {In3} +1;
                /*
				if(data_out_est==data_out_cond)
					checker<=1;
				else
					checker<=0;
                */
		end
		@(posedge clk);	
		{ validIn, In0, In1, In2, In3} <= 'b0;
		$finish;		
	end
	// Reloj
	initial	clk 	<= 0;	
	always	#20 clk 	<= ~clk;		
endmodule