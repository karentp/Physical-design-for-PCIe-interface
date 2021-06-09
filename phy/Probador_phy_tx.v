module Probador_phy_tx(
    output reg [7:0] In0,
    output reg [7:0] In1,
    output reg [7:0] In2,
    output reg [7:0] In3,
    output reg clk,
    output reg clk_2f,
    output reg clk_4f,
    output reg clk_32f,
    output reg reset,
    output reg valid0, valid1, valid2, valid3,
    output reg data_in,
    input data_out_estruct,
    input data_out,

    ///// Reciclación

    input [7:0] data_Probador0,
    input [7:0] data_Probador1,
    input [7:0] data_Probador2,
    input [7:0] data_Probador3,
    input [7:0] data_Probador0_estruct,
    input [7:0] data_Probador1_estruct,
    input [7:0] data_Probador2_estruct,
    input [7:0] data_Probador3_estruct,

    input valid0_probador, valid1_probador, valid2_probador, valid3_probador
);

initial begin
        // Nombre de archivo del "dump"
		$dumpfile("phy_tx.vcd");

        // Directiva para "dumpear" variables	
		$dumpvars;	
        {data_in} <= 1;
        valid0 <= 1'b1;
        valid1 <= 1'b1;
        valid2 <= 1'b1;
        valid3 <= 1'b1;
        reset = 0;
        reset = 1;
        // @(posedge clk)
       @(posedge clk_32f)
		@(posedge clk)
		@(posedge clk_32f)

        reset = 0;

        //Mux 2x1 8bits
        @(posedge clk);
        In0 <= 8'b11111111; 
        In1 <= 8'b11101110;
        In2 <= 8'b11011101;
        In3 <= 8'b11001100;
        valid0 <= 1'b1;
        valid1 <= 1'b1;
        valid2 <= 1'b1;
        valid3 <= 1'b1;
        // {data_in} <= 0;

        @(posedge clk);
        // @(posedge clk_32f)
        {data_in} = 1;

        @(posedge clk_32f)
        {data_in} = 0;

        @(posedge clk_32f)
        {data_in} = 1;

        @(posedge clk_32f)
        {data_in} = 1;

        @(posedge clk_32f)
        {data_in} = 1;

        @(posedge clk_32f)
        {data_in} = 1;

        @(posedge clk_32f)
        {data_in} = 0;    

        @(posedge clk_32f)
        {data_in} = 0;

@(posedge clk_32f)
        {data_in} = 1;

        @(posedge clk_32f)
        {data_in} = 0;

        @(posedge clk_32f)
        {data_in} = 1;

        @(posedge clk_32f)
        {data_in} = 1;

        @(posedge clk_32f)
        {data_in} = 1;

        @(posedge clk_32f)
        {data_in} = 1;

        @(posedge clk_32f)
        {data_in} = 0;    

        @(posedge clk_32f)
        {data_in} = 0;

        @(posedge clk_32f)
        {data_in} = 1;

        @(posedge clk_32f)
        {data_in} = 0;

        @(posedge clk_32f)
        {data_in} = 1;

        @(posedge clk_32f)
        {data_in} = 1;

        @(posedge clk_32f)
        {data_in} = 1;

        @(posedge clk_32f)
        {data_in} = 1;

        @(posedge clk_32f)
        {data_in} = 0;    

        @(posedge clk_32f)
        {data_in} = 0;


        @(posedge clk_32f)
        {data_in} = 1;

        @(posedge clk_32f)
        {data_in} = 0;

        @(posedge clk_32f)
        {data_in} = 1;

        @(posedge clk_32f)
        {data_in} = 1;

        @(posedge clk_32f)
        {data_in} = 1;

        @(posedge clk_32f)
        {data_in} = 1;

        @(posedge clk_32f)
        {data_in} = 0;    

        @(posedge clk_32f)
        {data_in} = 0;






        @(posedge clk);
        {data_in} = 1;

        @(posedge clk_32f)
        {data_in} = 0;

        @(posedge clk_32f)
        {data_in} = 1;

        @(posedge clk_32f)
        {data_in} = 1;

        @(posedge clk_32f)
        {data_in} = 1;

        @(posedge clk_32f)
        {data_in} = 1;

        @(posedge clk_32f)
        {data_in} = 0;    

        @(posedge clk_32f)
        {data_in} = 0;



       @(posedge clk);	
            
        In0 <= 8'b10111011; 
        In1 <= 8'b10101010;
        In2 <= 8'b10011001;
        In3 <= 8'b10001000; 

        {data_in} = 1;

        @(posedge clk_32f)
        {data_in} = 0;

        @(posedge clk_32f)
        {data_in} = 1;

        @(posedge clk_32f)
        {data_in} = 1;

        @(posedge clk_32f)
        {data_in} = 1;

        @(posedge clk_32f)
        {data_in} = 1;

        @(posedge clk_32f)
        {data_in} = 0;    

        @(posedge clk_32f)
        {data_in} = 0;




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


         //Mux 2x1 8bits
        In0 <= 8'b00000000;
        In1 <= 8'b00000000; 
        In2 <= 8'b00000000; 
        In3 <= 8'b00000000;
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
	always	#64 clk <= ~clk;

    always  #32 clk_2f <= ~clk_2f;

    always  #16 clk_4f <= ~clk_4f;
    
    always  #2 clk_32f <= ~clk_32f;
    		
endmodule