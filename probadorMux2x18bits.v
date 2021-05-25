//++++++++++MODULO PROBADOR PARA MUX CON MEMORIA: GENERADOR DE SEÑALES Y MONITOR DE DATOS +++++++++++++++

module probadorMux2x18bits( 


    //Entradas y salidas mux 2x1 de 8 bits

    output reg [7:0] In0,In1,
    output reg clk, valid0, valid1, clk2,
    input outValid,
    input [7:0] data_out
    
    );


	// Bloque de procedimiento, no sintetizable, se recorre una unica vez
    reg dummy1 =1'b0;

	initial begin
        // Nombre de archivo del "dump"
		$dumpfile("mux_memoria_8bits.vcd");

        // Directiva para "dumpear" variables	
		$dumpvars;		
	
		// Mensaje que se imprime en consola una vez
		//$display ("\t\ttiempo\t\tclk,\tselector,\treset_L\tvalid_input\tdata_in0,\tdata_in1,\tdata_out conductual\tdata_out estructural\tvalid_output");

		// Mensaje que se imprime en consola cada vez que un elemento de la lista cambia
		//$monitor($time,"\t\t%b\t%b\t\t%b\t%b\t\t%b\t\t%b\t\t%b\t\t%b\t\t%b", clk, selector, reset_L, valid_input,data_in0, data_in1, data_out2x1_conductual, data_out2x1_estructural,valid_output);

        // Asignamos valores 



        //Mux 2x1 8bits
        @(posedge clk);
        {In0} = 7'b0000000; 
        {In1} = 7'b0000011;
        {valid0} = 1'b1;
        {valid1} = 1'b1;
        	
        // Repite 8 veces
		repeat (4) begin

            // Espera/sincroniza con el flanco positivo del reloj	
            @(posedge clk);	
            

            // Suma 1 a cada entrada
            //Generales

            //Mux 2x1 2 bits
            {In0} <= {In0} + 1;
            {In1} <= {In1} + 1; 
        end

		repeat (4) begin

            // Espera/sincroniza con el flanco positivo del reloj	
            @(posedge clk);	

            // Suma 1 a cada entrada
            //Generales

            //Mux 2x1 2 bits
            {In0} <= {In0} + 1;
            {In1} <= {In1} + 1; 
            
        end
    

		@(posedge clk);

        // Asigna un tipo bit con valor 0

         //Mux 2x1 8bits
        {In0} = 7'b0000000; 
        {In1} = 7'b0000000;
        // Termina de almacenar señales
		$finish;

	end

	// Reloj

    //Valor inicial del reloj para que no sea indeterminado
	initial	clk 	<= 0;
    initial	clk2 	<= 1;	

    //Toggle cada 2*10 nano segundos		
	always	#4 clk 	<= ~clk;

    always  #2 clk2 <= ~clk2;
    		
endmodule
