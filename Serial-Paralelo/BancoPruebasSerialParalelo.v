`include "probador_serial.v"
`include "serial_paralelo.v"

module BancoPruebasSerialParalelo;

wire clk_4f, clk_32f;
wire [7:0] data2send;
wire [3:0] BC_counter;
wire active, valid_out, data_in;

probador_serial probador(.clk_4f    (clk_4f), 
                                 .clk_32f   ( clk_32f),
                                 .data_in   (data_in),
                                 .data2send (data2send),
                                 .BC_counter    (BC_counter),
                                 .active    (active),
                                 .valid_out     (valid_out));


serial_paralelo SP(.clk_4f  (clk_4f), 
                   .clk_32f (clk_32f),
                   .data_in (data_in),
                   .data2send   (data2send),
                   .BC_counter  (BC_counter),
                   .active  (active),
                   .valid_out   (valid_out));

endmodule


// Local Variabes:
    // eval:(verilog-read-defines)
    // eval:(verilog-read-includes)
    // End: