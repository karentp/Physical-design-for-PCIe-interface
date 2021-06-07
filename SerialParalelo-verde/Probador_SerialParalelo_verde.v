module Probador_SerialParalelo_verde(
    input [7:0] data2send,
    input [7:0] data2send_estruct,
    input active, valid_out,
    input active_estruct, valid_out_estruct,

    output reg clk_4f, clk_32f, data_in, reset);

	initial begin
	$dumpfile("SerialParalelo_verde.vcd");	
	$dumpvars;
        reset=0;
        {data_in} = 0;
        @(posedge clk_32f)
        reset = 1;
        @(posedge clk_4f)
        @(posedge clk_4f)
        @(posedge clk_32f)
        reset = 0;
        // @(posedge clk_32f)
        
//PRIMER 00*************************************
        

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
        @(posedge clk_4f)
        @(posedge clk_4f)
        @(posedge clk_4f)

        $finish;

    end

    initial clk_4f <= 1;
    initial clk_32f <= 1;

    always #16 clk_4f <= ~clk_4f;
    always #2 clk_32f <= ~clk_32f;


endmodule


