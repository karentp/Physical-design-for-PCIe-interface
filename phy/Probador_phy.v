module Probador_phy(
    output reg clk, clk_2f, clk_4f, clk_32f, reset,
    output reg [7:0] In0, In1, In2, In3,
    output reg valid0, valid1, valid2, valid3,
    
    input [7:0] data_Probador0, data_Probador1, data_Probador2, data_Probador3,
    input [7:0] data_Probador0_estruct, data_Probador1_estruct, data_Probador2_estruct, data_Probador3_estruct,
    input [7:0] data_out0_conductual, data_out1_conductual, data_out2_conductual, data_out3_conductual,
    input outValid0_conductual, outValid1_conductual, outValid2_conductual, outValid3_conductual,
    input [7:0] data_out0_estructural, data_out1_estructural, data_out2_estructural, data_out3_estructural,
    input outValid0_estructural, outValid1_estructural, outValid2_estructural, outValid3_estructural,
    input valid0_probador, valid1_probador, valid2_probador, valid3_probador,
    input valid0_probador_estruct, valid1_probador_estruct, valid2_probador_estruct, valid3_probador_estruct
);

initial begin
        // Nombre de archivo del "dump"
		$dumpfile("phy.vcd");

        // Directiva para "dumpear" variables	
		$dumpvars;	
        valid0 <= 1'b1;
        valid1 <= 1'b1;
        valid2 <= 1'b1;
        valid3 <= 1'b1;
        In0 <= 8'b11111111; 
        In1 <= 8'b11101110;
        In2 <= 8'b11011101;
        In3 <= 8'b11001100;
        reset = 0;
        reset = 1;
        // @(posedge clk)
        @(posedge clk_32f)
		@(posedge clk)
		@(posedge clk_32f)

        reset = 0;

        //Mux 2x1 8bits
        @(posedge clk);
        @(posedge clk_2f);
        @(posedge clk_2f);

        In0 <= 8'b11111111; 
        In1 <= 8'b11101110;
        In2 <= 8'b11011101;
        In3 <= 8'b11001100;
        valid0 <= 1'b1;
        valid1 <= 1'b1;
        valid2 <= 1'b1;
        valid3 <= 1'b1;


       @(posedge clk);	
            
        In0 <= 8'b10111011; 
        In1 <= 8'b10101010;
        In2 <= 8'b10011001;
        In3 <= 8'b10001000; 

        


		@(posedge clk);

        valid0 <= 1'b0;
        valid1 <= 1'b0;
        valid3 <= 1'b0;
        In0 <= 8'b1010101; 
        In1 <= 8'b1010101;
        In2 <= 8'b1110111;
        In3 <= 8'b1010101; 






        @(posedge clk);
        valid2 <= 1'b0;
        @(posedge clk);


        ///// Prueba Circulación

        
        In0 <= 8'b11111111; 
        In1 <= 8'b11101110;
        In2 <= 8'b11011101;
        In3 <= 8'b11001100;
        valid0 <= 1'b1;
        valid1 <= 1'b1;
        valid2 <= 1'b1;
        valid3 <= 1'b1;
        @(posedge clk);
        In0 <= 8'b10111011; 
        In1 <= 8'b10101010;
        In2 <= 8'b10011001;
        In3 <= 8'b10001000; 
		@(posedge clk);

        In0 <= 8'b11111111; 
        In1 <= 8'b11101110;
        In2 <= 8'b11011101;
        In3 <= 8'b11001100;


        @(posedge clk);



        In0 <= 8'b1010101; 
        In1 <= 8'b1010101;
        In2 <= 8'b1110111;
        In3 <= 8'b1010101; 

        @(posedge clk);
        @(posedge clk);
        

         //Mux 2x1 8bits
        In0 <= 8'b00000000;
        In1 <= 8'b00000000; 
        In2 <= 8'b00000000; 
        In3 <= 8'b00000000;
        @(posedge clk);
        @(posedge clk);
        In0 <= 8'b00000000;
        In1 <= 8'b00000000; 
        In2 <= 8'b00000000; 
        In3 <= 8'b00000000;
       
        @(posedge clk);
        @(posedge clk);
        In0 <= 8'b00000000;
        In1 <= 8'b00000000; 
        In2 <= 8'b00000000; 
        In3 <= 8'b00000000;
        
        @(posedge clk);
        @(posedge clk);
        // Termina de almacenar señales
		$finish;

	end

	// Reloj

    //Valor inicial del reloj para que no sea indeterminado
	initial	clk 	<= 1;
    initial	clk_2f 	<= 1;
    initial	clk_4f 	<= 1;
    initial clk_32f <= 1;

    //Toggle cada 2*10 nano segundos		
	always	#16 clk <= ~clk;

    always  #8 clk_2f <= ~clk_2f;

    always  #4 clk_4f <= ~clk_4f;
    
    always  #0.5 clk_32f <= ~clk_32f;
    		
endmodule