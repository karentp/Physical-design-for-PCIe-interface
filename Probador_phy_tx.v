module Probador_phy_tx(
    output reg [7:0] In0,
    output reg [7:0] In1,
    output reg [7:0] In2,
    output reg [7:0] In3,
    output reg clk,
    output reg clk2,
    output reg clk4,
    output reg valid0, valid1, valid2, valid3,
    input [7:0] data_out
);

initial begin
        // Nombre de archivo del "dump"
		$dumpfile("phy_tx.vcd");

        // Directiva para "dumpear" variables	
		$dumpvars;	

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
         //Mux 2x1 8bits
        In0 <= 8'b00000000;
        In1 <= 8'b00000000; 
        In2 <= 8'b00000000; 
        In3 <= 8'b00000000;
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