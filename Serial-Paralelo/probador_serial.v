module probador_serial(
    input [7:0] data2send, data_out,
    input [3:0] BC_counter,
    input active, valid_out,

    output reg clk_4f, clk_32f, data_in);

	initial begin
		$dumpfile("SerialParalelo.vcd");	
		$dumpvars;

        @(posedge clk_4f)
//PRIMER 00*************************************
        

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


//TERCER BC*************************************
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

//CUARTO BC*************************************
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

//PRIMER FF*********************************

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

        @(posedge clk_32f)
        {data_in} = 1;




//PRIMER EE
        @(posedge clk_32f)
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

        @(posedge clk_32f)

        $finish;

    end

    initial clk_4f <=0;
    initial clk_32f <= 0;

    always #64 clk_4f <= ~clk_4f;
    always #8 clk_32f <= ~clk_32f;


endmodule


