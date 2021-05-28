/* Generated by Yosys 0.9 (git sha1 1979e0b1, i686-w64-mingw32.static-g++ 5.5.0 -Os) */

(* src = "Demux_1x2_8Bits_inst.v:1" *)
module Demux_1x2_8Bits_inst(In, clk4, clk2, clk, validIn, outValid0_estructural, outValid1_estructural, data_out0_estructural, data_out1_estructural);
  (* src = "Demux_1x2_8Bits_inst.v:16" *)
  wire [7:0] _00_;
  (* src = "Demux_1x2_8Bits_inst.v:16" *)
  wire [7:0] _01_;
  (* src = "Demux_1x2_8Bits_inst.v:16" *)
  wire _02_;
  wire _03_;
  (* src = "Demux_1x2_8Bits_inst.v:2" *)
  input [7:0] In;
  (* src = "Demux_1x2_8Bits_inst.v:9" *)
  reg [7:0] ValorFuturo0;
  (* src = "Demux_1x2_8Bits_inst.v:3" *)
  input clk;
  (* src = "Demux_1x2_8Bits_inst.v:3" *)
  input clk2;
  (* src = "Demux_1x2_8Bits_inst.v:3" *)
  input clk4;
  (* src = "Demux_1x2_8Bits_inst.v:5" *)
  output [7:0] data_out0_estructural;
  reg [7:0] data_out0_estructural;
  (* src = "Demux_1x2_8Bits_inst.v:5" *)
  output [7:0] data_out1_estructural;
  reg [7:0] data_out1_estructural;
  (* src = "Demux_1x2_8Bits_inst.v:4" *)
  output outValid0_estructural;
  reg outValid0_estructural;
  (* src = "Demux_1x2_8Bits_inst.v:4" *)
  output outValid1_estructural;
  reg outValid1_estructural;
  (* init = 1'h0 *)
  (* src = "Demux_1x2_8Bits_inst.v:13" *)
  reg selector = 1'h0;
  (* src = "Demux_1x2_8Bits_inst.v:14" *)
  wire selector2;
  (* src = "Demux_1x2_8Bits_inst.v:3" *)
  input validIn;
  (* src = "Demux_1x2_8Bits_inst.v:11" *)
  reg validTemp_In;
  (* src = "Demux_1x2_8Bits_inst.v:12" *)
  reg validTemp_In1;
  always @*
    if (selector)
      data_out0_estructural = ValorFuturo0;
  always @*
    if (_03_)
      validTemp_In1 = validIn;
  assign _03_ = ~ (* src = "Demux_1x2_8Bits_inst.v:32" *) selector;
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
  assign _02_ = selector ? (* src = "Demux_1x2_8Bits_inst.v:19" *) validIn : validTemp_In;
  assign _00_ = selector ? (* src = "Demux_1x2_8Bits_inst.v:19" *) In : ValorFuturo0;
  assign _01_ = selector ? (* src = "Demux_1x2_8Bits_inst.v:23" *) data_out1_estructural : In;
  assign selector2 = 1'h1;
endmodule

(* top =  1  *)
(* src = " Demux_1x4_8Bits_estructural.v:3" *)
module  Demux_1x4_8Bits_estructural(In, clk0, clk4, clk2, clk, validIn, validOut0, validOut1, validOut2, validOut3, data_out0_estructural, data_out1_estructural, data_out2_estructural, data_out3_estructural);
  (* src = " Demux_1x4_8Bits_estructural.v:18" *)
  wire _0_;
  (* src = " Demux_1x4_8Bits_estructural.v:4" *)
  input [7:0] In;
  (* src = " Demux_1x4_8Bits_estructural.v:5" *)
  input clk;
  (* src = " Demux_1x4_8Bits_estructural.v:5" *)
  input clk0;
  (* src = " Demux_1x4_8Bits_estructural.v:5" *)
  input clk2;
  (* src = " Demux_1x4_8Bits_estructural.v:5" *)
  input clk4;
  (* src = " Demux_1x4_8Bits_estructural.v:7" *)
  output [7:0] data_out0_estructural;
  (* src = " Demux_1x4_8Bits_estructural.v:7" *)
  output [7:0] data_out1_estructural;
  (* src = " Demux_1x4_8Bits_estructural.v:7" *)
  output [7:0] data_out2_estructural;
  (* src = " Demux_1x4_8Bits_estructural.v:7" *)
  output [7:0] data_out3_estructural;
  (* src = " Demux_1x4_8Bits_estructural.v:11" *)
  wire [7:0] salida0Demux1;
  (* src = " Demux_1x4_8Bits_estructural.v:11" *)
  wire [7:0] salida1Demux1;
  (* src = " Demux_1x4_8Bits_estructural.v:12" *)
  wire valid0Temp;
  (* src = " Demux_1x4_8Bits_estructural.v:12" *)
  wire valid1Temp;
  (* src = " Demux_1x4_8Bits_estructural.v:5" *)
  input validIn;
  (* src = " Demux_1x4_8Bits_estructural.v:6" *)
  output validOut0;
  (* src = " Demux_1x4_8Bits_estructural.v:6" *)
  output validOut1;
  (* src = " Demux_1x4_8Bits_estructural.v:6" *)
  output validOut2;
  (* src = " Demux_1x4_8Bits_estructural.v:6" *)
  output validOut3;
  assign _0_ = ~ (* src = " Demux_1x4_8Bits_estructural.v:19" *) clk0;
  (* module_not_derived = 32'd1 *)
  (* src = " Demux_1x4_8Bits_estructural.v:15" *)
  Demux_1x2_8Bits_inst Demux1 (
    .In(In),
    .clk(clk),
    .clk2(clk2),
    .clk4(clk4),
    .data_out0_estructural(salida0Demux1),
    .data_out1_estructural(salida1Demux1),
    .outValid0_estructural(valid0Temp),
    .outValid1_estructural(valid1Temp),
    .validIn(validIn)
  );
  (* module_not_derived = 32'd1 *)
  (* src = " Demux_1x4_8Bits_estructural.v:18" *)
  Demux_1x2_8Bits_inst Demux2 (
    .In(salida0Demux1),
    .clk(clk4),
    .clk2(_0_),
    .clk4(clk2),
    .data_out0_estructural(data_out0),
    .data_out1_estructural(data_out1),
    .outValid0_estructural(validOut0),
    .outValid1_estructural(validOut1),
    .validIn(valid0Temp)
  );
  (* module_not_derived = 32'd1 *)
  (* src = " Demux_1x4_8Bits_estructural.v:19" *)
  Demux_1x2_8Bits_inst Demux3 (
    .In(salida1Demux1),
    .clk(clk4),
    .clk2(_0_),
    .clk4(clk2),
    .data_out0_estructural(data_out2_estructural),
    .data_out1_estructural(data_out3_estructural),
    .outValid0_estructural(validOut2),
    .outValid1_estructural(validOut3),
    .validIn(valid1Temp)
  );
endmodule
