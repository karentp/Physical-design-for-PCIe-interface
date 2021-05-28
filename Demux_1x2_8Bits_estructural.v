/* Generated by Yosys 0.9 (git sha1 1979e0b1, i686-w64-mingw32.static-g++ 5.5.0 -Os) */

(* top =  1  *)
(* src = " Demux_1x2_8Bits_estructural.v:1" *)
module  Demux_1x2_8Bits_estructural(In, clk4, clk2, clk, validIn, outValid0_estructural, outValid1_estructural, data_out0_estructural, data_out1_estructural);
  (* src = " Demux_1x2_8Bits_estructural.v:16" *)
  wire [7:0] _00_;
  (* src = " Demux_1x2_8Bits_estructural.v:16" *)
  wire [7:0] _01_;
  (* src = " Demux_1x2_8Bits_estructural.v:16" *)
  wire _02_;
  wire _03_;
  (* src = " Demux_1x2_8Bits_estructural.v:2" *)
  input [7:0] In;
  (* src = " Demux_1x2_8Bits_estructural.v:9" *)
  reg [7:0] ValorFuturo0;
  (* src = " Demux_1x2_8Bits_estructural.v:3" *)
  input clk;
  (* src = " Demux_1x2_8Bits_estructural.v:3" *)
  input clk2;
  (* src = " Demux_1x2_8Bits_estructural.v:3" *)
  input clk4;
  (* src = " Demux_1x2_8Bits_estructural.v:5" *)
  output [7:0] data_out0_estructural;
  reg [7:0] data_out0_estructural;
  (* src = " Demux_1x2_8Bits_estructural.v:5" *)
  output [7:0] data_out1_estructural;
  reg [7:0] data_out1_estructural;
  (* src = " Demux_1x2_8Bits_estructural.v:4" *)
  output outValid0_estructural;
  reg outValid0_estructural;
  (* src = " Demux_1x2_8Bits_estructural.v:4" *)
  output outValid1_estructural;
  reg outValid1_estructural;
  (* init = 1'h0 *)
  (* src = " Demux_1x2_8Bits_estructural.v:13" *)
  reg selector = 1'h0;
  (* src = " Demux_1x2_8Bits_estructural.v:14" *)
  wire selector2;
  (* src = " Demux_1x2_8Bits_estructural.v:3" *)
  input validIn;
  (* src = " Demux_1x2_8Bits_estructural.v:11" *)
  reg validTemp_In;
  (* src = " Demux_1x2_8Bits_estructural.v:12" *)
  reg validTemp_In1;
  always @*
    if (selector)
      data_out0_estructural = ValorFuturo0;
  always @*
    if (_03_)
      validTemp_In1 = validIn;
  assign _03_ = ~ (* src = " Demux_1x2_8Bits_estructural.v:32" *) selector;
  always @(posedge clk)
      outValid1_estructural <= validTemp_In1;
  always @(negedge clk4)
      outValid0_estructural <= validTemp_In;
  always @(posedge clk4)
      data_out1_estructural <= _01_;
  always @(posedge clk4)
      ValorFuturo0 <= _00_;
  always @(posedge clk4)
      validTemp_In <= _02_;
  always @(posedge clk4)
      selector <= clk2;
  assign _02_ = selector ? (* src = " Demux_1x2_8Bits_estructural.v:19" *) validIn : validTemp_In;
  assign _00_ = selector ? (* src = " Demux_1x2_8Bits_estructural.v:19" *) In : ValorFuturo0;
  assign _01_ = selector ? (* src = " Demux_1x2_8Bits_estructural.v:23" *) data_out1_estructural : In;
  assign selector2 = 1'h1;
endmodule
