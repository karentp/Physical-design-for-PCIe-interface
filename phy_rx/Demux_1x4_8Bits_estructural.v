/* Generated by Yosys 0.9+4052 (git sha1 44520808, gcc 9.3.0-17ubuntu1~20.04 -fPIC -Os) */

(* src = "Demux_1x2_8Bits_estructural.v:1.1-49.10" *)
module Demux_1x2_8Bits_estructural(In, clk4, clk2, clk, validIn, outValid0_estructural, outValid1_estructural, data_out0_estructural, data_out1_estructural);
  (* src = "Demux_1x2_8Bits_estructural.v:2.21-2.23" *)
  input [7:0] In;
  (* src = "Demux_1x2_8Bits_estructural.v:9.39-9.51" *)
  reg [7:0] ValorFuturo0;
  (* src = "Demux_1x2_8Bits_estructural.v:3.27-3.30" *)
  input clk;
  (* src = "Demux_1x2_8Bits_estructural.v:3.21-3.25" *)
  input clk2;
  (* src = "Demux_1x2_8Bits_estructural.v:3.15-3.19" *)
  input clk4;
  (* src = "Demux_1x2_8Bits_estructural.v:5.26-5.46" *)
  output [7:0] data_out0_estructural;
  reg [7:0] data_out0_estructural;
  (* src = "Demux_1x2_8Bits_estructural.v:5.47-5.67" *)
  output [7:0] data_out1_estructural;
  reg [7:0] data_out1_estructural;
  (* src = "Demux_1x2_8Bits_estructural.v:4.20-4.40" *)
  output outValid0_estructural;
  reg outValid0_estructural;
  (* src = "Demux_1x2_8Bits_estructural.v:4.42-4.62" *)
  output outValid1_estructural;
  reg outValid1_estructural;
  (* src = "Demux_1x2_8Bits_estructural.v:13.13-13.21" *)
  reg selector = 1'h0;
  (* src = "Demux_1x2_8Bits_estructural.v:3.32-3.39" *)
  input validIn;
  (* src = "Demux_1x2_8Bits_estructural.v:11.14-11.26" *)
  reg validTemp_In;
  (* src = "Demux_1x2_8Bits_estructural.v:12.14-12.27" *)
  reg validTemp_In1;
  (* src = "Demux_1x2_8Bits_estructural.v:16.9-28.12" *)
  always @(posedge clk4)
    if (selector) validTemp_In <= validIn;
  (* src = "Demux_1x2_8Bits_estructural.v:16.9-28.12" *)
  always @(posedge clk4)
    if (selector) ValorFuturo0 <= In;
  (* src = "Demux_1x2_8Bits_estructural.v:16.9-28.12" *)
  always @(posedge clk4)
    if (!selector) data_out1_estructural <= In;
  (* src = "Demux_1x2_8Bits_estructural.v:29.9-38.12" *)
  always @*
    if (selector) data_out0_estructural = ValorFuturo0;
  (* src = "Demux_1x2_8Bits_estructural.v:29.9-38.12" *)
  always @*
    if (!selector) validTemp_In1 = validIn;
  (* src = "Demux_1x2_8Bits_estructural.v:44.9-46.12" *)
  always @(posedge clk)
    outValid1_estructural <= validTemp_In1;
  (* src = "Demux_1x2_8Bits_estructural.v:40.9-42.12" *)
  always @(negedge clk4)
    outValid0_estructural <= validTemp_In;
  (* src = "Demux_1x2_8Bits_estructural.v:16.9-28.12" *)
  always @(posedge clk4)
    selector <= clk2;
endmodule

(* top =  1  *)
(* src = "Demux_1x4_8Bits_estructural.v:2.1-50.10" *)
module Demux_1x4_8Bits_estructural(In, clk0, clk4, clk2, clk, validIn, outValid0_estructural, outValid1_estructural, outValid2_estructural, outValid3_estructural, data_out0_estructural, data_out1_estructural, data_out2_estructural, data_out3_estructural);
  (* src = "Demux_1x4_8Bits_estructural.v:29.23-29.28" *)
  wire _0_;
  (* src = "Demux_1x4_8Bits_estructural.v:3.17-3.19" *)
  input [7:0] In;
  (* src = "Demux_1x4_8Bits_estructural.v:4.29-4.32" *)
  input clk;
  (* src = "Demux_1x4_8Bits_estructural.v:4.11-4.15" *)
  input clk0;
  (* src = "Demux_1x4_8Bits_estructural.v:4.23-4.27" *)
  input clk2;
  (* src = "Demux_1x4_8Bits_estructural.v:4.17-4.21" *)
  input clk4;
  (* src = "Demux_1x4_8Bits_estructural.v:6.18-6.38" *)
  output [7:0] data_out0_estructural;
  (* src = "Demux_1x4_8Bits_estructural.v:6.39-6.59" *)
  output [7:0] data_out1_estructural;
  (* src = "Demux_1x4_8Bits_estructural.v:6.61-6.81" *)
  output [7:0] data_out2_estructural;
  (* src = "Demux_1x4_8Bits_estructural.v:6.82-6.102" *)
  output [7:0] data_out3_estructural;
  (* src = "Demux_1x4_8Bits_estructural.v:5.12-5.32" *)
  output outValid0_estructural;
  (* src = "Demux_1x4_8Bits_estructural.v:5.34-5.54" *)
  output outValid1_estructural;
  (* src = "Demux_1x4_8Bits_estructural.v:5.55-5.75" *)
  output outValid2_estructural;
  (* src = "Demux_1x4_8Bits_estructural.v:5.76-5.96" *)
  output outValid3_estructural;
  (* src = "Demux_1x4_8Bits_estructural.v:10.16-10.29" *)
  wire [7:0] salida0Demux1;
  (* src = "Demux_1x4_8Bits_estructural.v:10.31-10.44" *)
  wire [7:0] salida1Demux1;
  (* src = "Demux_1x4_8Bits_estructural.v:11.10-11.20" *)
  wire valid0Temp;
  (* src = "Demux_1x4_8Bits_estructural.v:11.22-11.32" *)
  wire valid1Temp;
  (* src = "Demux_1x4_8Bits_estructural.v:4.35-4.42" *)
  input validIn;
  assign _0_ = ~ (* src = "Demux_1x4_8Bits_estructural.v:41.23-41.28" *) clk0;
  (* module_not_derived = 32'd1 *)
  (* src = "Demux_1x4_8Bits_estructural.v:14.21-23.54" *)
  Demux_1x2_8Bits_estructural Demux1 (
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
  (* src = "Demux_1x4_8Bits_estructural.v:26.21-35.61" *)
  Demux_1x2_8Bits_estructural Demux2 (
    .In(salida0Demux1),
    .clk(clk4),
    .clk2(_0_),
    .clk4(clk2),
    .data_out0_estructural(data_out0_estructural),
    .data_out1_estructural(data_out1_estructural),
    .outValid0_estructural(outValid0_estructural),
    .outValid1_estructural(outValid1_estructural),
    .validIn(valid0Temp)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "Demux_1x4_8Bits_estructural.v:38.21-47.61" *)
  Demux_1x2_8Bits_estructural Demux3 (
    .In(salida1Demux1),
    .clk(clk4),
    .clk2(_0_),
    .clk4(clk2),
    .data_out0_estructural(data_out2_estructural),
    .data_out1_estructural(data_out3_estructural),
    .outValid0_estructural(outValid2_estructural),
    .outValid1_estructural(outValid3_estructural),
    .validIn(valid1Temp)
  );
endmodule
