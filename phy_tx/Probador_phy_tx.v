module Probador_phy_tx(
    output reg [7:0] In0,
    output reg [7:0] In1,
    output reg [7:0] In2,
    output reg [7:0] In3,
    output reg clk,
    output reg clk2,
    output reg clk4,
    output reg valid0, valid1, valid2, valid3,
<<<<<<< HEAD:Probador_phy_tx.v
    input [7:0] data_out,
=======
    input [7:0] data_out_estruct,
    input [7:0] data_out_conductual,
>>>>>>> 52ea325d6c1af3636a4c6e72eb69156ba71f3a17:phy_tx/Probador_phy_tx.v

    ///// Reciclación

    input [7:0] data_Probador0,
    input [7:0] data_Probador1,
    input [7:0] data_Probador2,
    input [7:0] data_Probador3,
<<<<<<< HEAD:Probador_phy_tx.v
    input valid_out,
=======
    input valid_out_estruct,
    input valid_out_conductual,
>>>>>>> 52ea325d6c1af3636a4c6e72eb69156ba71f3a17:phy_tx/Probador_phy_tx.v
    output reg validIn 
);

initial begin
        // Nombre de archivo del "dump"
		$dumpfile("phytxFINAL.vcd");

        // Directiva para "dumpear" variables	
		$dumpvars;	

        //Mux 2x1 8bits
        @(posedge clk);
        validIn <= 1'b1;
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

        validIn <= 1'b0;
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
	initial	clk 	<= 0;
    initial	clk2 	<= 1;	
    initial	clk4 	<= 1;

    //Toggle cada 2*10 nano segundos		
	always	#8 clk 	<= ~clk;

    always  #4 clk2 <= ~clk2;

    always  #2 clk4 <= ~clk4;
    		
endmodule