module probadorDemux1x4_8Bits(
    output reg clk, clk_2f, clk_4f, clk_32f, reset,
    output reg data_in,
    input outValid0_conductual,
    input outValid1_conductual,
    input outValid2_conductual,
    input outValid3_conductual,
    input [7:0]  data_out0_conductual,
    input [7:0]  data_out1_conductual,
    input [7:0]  data_out2_conductual,
    input [7:0]  data_out3_conductual,
    input data_out,


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
		$dumpfile("phy_rx.vcd");	
		$dumpvars;
		{data_in} = 0;
		reset = 0;
		reset = 1;
		@(posedge clk_32f)
		@(posedge clk)
		@(posedge clk_32f)
		reset = 0;
		
		// @(posedge clk)
		@(posedge clk_32f)
		@(posedge clk_32f)
		@(posedge clk_32f)
		@(posedge clk_32f)
		// @(posedge clk_32f)
		// @(posedge clk_4f);
		// {validIn} = 1'b1;
		
		@(posedge clk_4f)
		@(posedge clk_4f)
		@(posedge clk_4f)
		
		{data_in} = 0;

        @(posedge clk_32f)
        {data_in} = 0;

        @(posedge clk_32f)
        {data_in} = 0;

        @(posedge clk_32f)
        {data_in} = 0;

        @(posedge clk_32f)
        {data_in} = 0;

        @(posedge clk_32f)
        {data_in} = 0;    

        @(posedge clk_32f)
        {data_in} = 0;

         @(posedge clk_32f)
        {data_in} = 0;


//SEGUBDO BC*************************************
        
        @(posedge clk_4f)
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


//TERCER BC*************************************
        @(posedge clk_4f)
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

//CUARTO BC*************************************
        @(posedge clk_4f)
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



//CUARTO BC*************************************
        @(posedge clk_4f)
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




//PRIMER FF*********************************

        @(posedge clk_4f)
        {data_in} = 1;

        @(posedge clk_32f)
        {data_in} = 1;

        @(posedge clk_32f)
        {data_in} = 1;

        @(posedge clk_32f)
        {data_in} = 1;

        @(posedge clk_32f)
        {data_in} = 1;

        @(posedge clk_32f)
        {data_in} = 1;

        @(posedge clk_32f)
        {data_in} = 1;    

        @(posedge clk_32f)
        {data_in} = 1;




//PRIMER EE
        @(posedge clk_4f)
        {data_in} = 1;

        @(posedge clk_32f)
        {data_in} = 1;

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
        {data_in} = 0;

        // @(posedge clk_32f)
         @(posedge clk_4f)
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



 @(posedge clk_4f)
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

 @(posedge clk_4f)
        {data_in} = 1;

        @(posedge clk_32f)
        {data_in} = 0;

        @(posedge clk_32f)
        {data_in} = 1;

        @(posedge clk_32f)
        {data_in} = 0;

        @(posedge clk_32f)
        {data_in} = 1;

        @(posedge clk_32f)
        {data_in} = 0;

        @(posedge clk_32f)
        {data_in} = 1;    

        @(posedge clk_32f)
        {data_in} = 0;


        @(posedge clk_4f)
        @(posedge clk_4f)
        @(posedge clk_4f)
        @(posedge clk_4f)
		@(posedge clk)
		@(posedge clk)
		$finish;		
	end
	// Reloj
	initial	clk_4f 	<= 0;
	initial	clk_2f 	<= 0;	
	initial	clk 	<= 0;
	initial clk_32f <= 1;

	always	#64 clk 	<= ~clk;
		// Hace "toggle" cada 20*10ns
	always	#32 clk_2f 	<= ~clk_2f;
	always	#16 clk_4f 	<= ~clk_4f;	
	always #2 clk_32f <= ~clk_32f;		// Hace "toggle" cada 20*10ns
endmodule