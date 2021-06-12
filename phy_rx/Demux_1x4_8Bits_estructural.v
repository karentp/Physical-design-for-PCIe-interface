/* Generated by Yosys 0.9+4052 (git sha1 44520808, gcc 9.3.0-17ubuntu1~20.04 -fPIC -Os) */

(* src = "Demux_1x2_8Bits_estructural.v:1.1-39.10" *)
module Demux_1x2_8Bits_estructural(In, clk_2f, validIn, reset, outValid0_estructural, outValid1_estructural, data_out0_estructural, data_out1_estructural);
  (* src = "Demux_1x2_8Bits_estructural.v:27.9-36.12" *)
  wire [7:0] _000_;
  (* src = "Demux_1x2_8Bits_estructural.v:12.9-25.12" *)
  wire _001_;
  wire _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  (* src = "Demux_1x2_8Bits_estructural.v:2.21-2.23" *)
  input [7:0] In;
  (* src = "Demux_1x2_8Bits_estructural.v:9.19-9.37" *)
  wire [7:0] ValorAnterior_out1;
  (* src = "Demux_1x2_8Bits_estructural.v:3.15-3.21" *)
  input clk_2f;
  (* src = "Demux_1x2_8Bits_estructural.v:5.26-5.46" *)
  output [7:0] data_out0_estructural;
  (* src = "Demux_1x2_8Bits_estructural.v:5.47-5.67" *)
  output [7:0] data_out1_estructural;
  (* src = "Demux_1x2_8Bits_estructural.v:4.20-4.40" *)
  output outValid0_estructural;
  (* src = "Demux_1x2_8Bits_estructural.v:4.42-4.62" *)
  output outValid1_estructural;
  (* src = "Demux_1x2_8Bits_estructural.v:3.32-3.37" *)
  input reset;
  (* src = "Demux_1x2_8Bits_estructural.v:3.23-3.30" *)
  input validIn;
  (* src = "Demux_1x2_8Bits_estructural.v:10.14-10.27" *)
  wire validTemp_In1;
  NOT _038_ (
    .A(ValorAnterior_out1[7]),
    .Y(_020_)
  );
  NOT _039_ (
    .A(ValorAnterior_out1[6]),
    .Y(_021_)
  );
  NOT _040_ (
    .A(ValorAnterior_out1[5]),
    .Y(_022_)
  );
  NOT _041_ (
    .A(ValorAnterior_out1[4]),
    .Y(_023_)
  );
  NOT _042_ (
    .A(ValorAnterior_out1[3]),
    .Y(_024_)
  );
  NOT _043_ (
    .A(ValorAnterior_out1[2]),
    .Y(_025_)
  );
  NOT _044_ (
    .A(ValorAnterior_out1[1]),
    .Y(_026_)
  );
  NOT _045_ (
    .A(ValorAnterior_out1[0]),
    .Y(_027_)
  );
  NOT _046_ (
    .A(clk_2f),
    .Y(_010_)
  );
  NOT _047_ (
    .A(validIn),
    .Y(_028_)
  );
  NOT _048_ (
    .A(In[0]),
    .Y(_029_)
  );
  NOT _049_ (
    .A(In[1]),
    .Y(_030_)
  );
  NOT _050_ (
    .A(In[2]),
    .Y(_031_)
  );
  NOT _051_ (
    .A(In[3]),
    .Y(_032_)
  );
  NOT _052_ (
    .A(In[4]),
    .Y(_033_)
  );
  NOT _053_ (
    .A(In[5]),
    .Y(_034_)
  );
  NOT _054_ (
    .A(In[6]),
    .Y(_035_)
  );
  NOT _055_ (
    .A(In[7]),
    .Y(_036_)
  );
  NOT _056_ (
    .A(validTemp_In1),
    .Y(_037_)
  );
  NOR _057_ (
    .A(_020_),
    .B(reset),
    .Y(_018_)
  );
  NOR _058_ (
    .A(reset),
    .B(_021_),
    .Y(_017_)
  );
  NOR _059_ (
    .A(reset),
    .B(_022_),
    .Y(_016_)
  );
  NOR _060_ (
    .A(reset),
    .B(_023_),
    .Y(_015_)
  );
  NOR _061_ (
    .A(reset),
    .B(_024_),
    .Y(_014_)
  );
  NOR _062_ (
    .A(reset),
    .B(_025_),
    .Y(_013_)
  );
  NOR _063_ (
    .A(reset),
    .B(_026_),
    .Y(_012_)
  );
  NOR _064_ (
    .A(reset),
    .B(_027_),
    .Y(_011_)
  );
  NOR _065_ (
    .A(reset),
    .B(_028_),
    .Y(_001_)
  );
  NOR _066_ (
    .A(reset),
    .B(_029_),
    .Y(_000_[0])
  );
  NOR _067_ (
    .A(reset),
    .B(_030_),
    .Y(_000_[1])
  );
  NOR _068_ (
    .A(reset),
    .B(_031_),
    .Y(_000_[2])
  );
  NOR _069_ (
    .A(reset),
    .B(_032_),
    .Y(_000_[3])
  );
  NOR _070_ (
    .A(reset),
    .B(_033_),
    .Y(_000_[4])
  );
  NOR _071_ (
    .A(reset),
    .B(_034_),
    .Y(_000_[5])
  );
  NOR _072_ (
    .A(reset),
    .B(_035_),
    .Y(_000_[6])
  );
  NOR _073_ (
    .A(reset),
    .B(_036_),
    .Y(_000_[7])
  );
  NOR _074_ (
    .A(reset),
    .B(_037_),
    .Y(_019_)
  );
  NOT _075_ (
    .A(clk_2f),
    .Y(_009_)
  );
  NOT _076_ (
    .A(clk_2f),
    .Y(_008_)
  );
  NOT _077_ (
    .A(clk_2f),
    .Y(_007_)
  );
  NOT _078_ (
    .A(clk_2f),
    .Y(_006_)
  );
  NOT _079_ (
    .A(clk_2f),
    .Y(_005_)
  );
  NOT _080_ (
    .A(clk_2f),
    .Y(_004_)
  );
  NOT _081_ (
    .A(clk_2f),
    .Y(_003_)
  );
  NOT _082_ (
    .A(clk_2f),
    .Y(_002_)
  );
  (* src = "Demux_1x2_8Bits_estructural.v:27.9-36.12" *)
  DFF _083_ (
    .C(_002_),
    .D(_000_[0]),
    .Q(ValorAnterior_out1[0])
  );
  (* src = "Demux_1x2_8Bits_estructural.v:27.9-36.12" *)
  DFF _084_ (
    .C(_003_),
    .D(_000_[1]),
    .Q(ValorAnterior_out1[1])
  );
  (* src = "Demux_1x2_8Bits_estructural.v:27.9-36.12" *)
  DFF _085_ (
    .C(_004_),
    .D(_000_[2]),
    .Q(ValorAnterior_out1[2])
  );
  (* src = "Demux_1x2_8Bits_estructural.v:27.9-36.12" *)
  DFF _086_ (
    .C(_005_),
    .D(_000_[3]),
    .Q(ValorAnterior_out1[3])
  );
  (* src = "Demux_1x2_8Bits_estructural.v:27.9-36.12" *)
  DFF _087_ (
    .C(_006_),
    .D(_000_[4]),
    .Q(ValorAnterior_out1[4])
  );
  (* src = "Demux_1x2_8Bits_estructural.v:27.9-36.12" *)
  DFF _088_ (
    .C(_007_),
    .D(_000_[5]),
    .Q(ValorAnterior_out1[5])
  );
  (* src = "Demux_1x2_8Bits_estructural.v:27.9-36.12" *)
  DFF _089_ (
    .C(_008_),
    .D(_000_[6]),
    .Q(ValorAnterior_out1[6])
  );
  (* src = "Demux_1x2_8Bits_estructural.v:27.9-36.12" *)
  DFF _090_ (
    .C(_009_),
    .D(_000_[7]),
    .Q(ValorAnterior_out1[7])
  );
  (* src = "Demux_1x2_8Bits_estructural.v:27.9-36.12" *)
  DFF _091_ (
    .C(_010_),
    .D(_001_),
    .Q(validTemp_In1)
  );
  (* src = "Demux_1x2_8Bits_estructural.v:12.9-25.12" *)
  DFF _092_ (
    .C(clk_2f),
    .D(_001_),
    .Q(outValid1_estructural)
  );
  (* src = "Demux_1x2_8Bits_estructural.v:12.9-25.12" *)
  DFF _093_ (
    .C(clk_2f),
    .D(_000_[0]),
    .Q(data_out1_estructural[0])
  );
  (* src = "Demux_1x2_8Bits_estructural.v:12.9-25.12" *)
  DFF _094_ (
    .C(clk_2f),
    .D(_000_[1]),
    .Q(data_out1_estructural[1])
  );
  (* src = "Demux_1x2_8Bits_estructural.v:12.9-25.12" *)
  DFF _095_ (
    .C(clk_2f),
    .D(_000_[2]),
    .Q(data_out1_estructural[2])
  );
  (* src = "Demux_1x2_8Bits_estructural.v:12.9-25.12" *)
  DFF _096_ (
    .C(clk_2f),
    .D(_000_[3]),
    .Q(data_out1_estructural[3])
  );
  (* src = "Demux_1x2_8Bits_estructural.v:12.9-25.12" *)
  DFF _097_ (
    .C(clk_2f),
    .D(_000_[4]),
    .Q(data_out1_estructural[4])
  );
  (* src = "Demux_1x2_8Bits_estructural.v:12.9-25.12" *)
  DFF _098_ (
    .C(clk_2f),
    .D(_000_[5]),
    .Q(data_out1_estructural[5])
  );
  (* src = "Demux_1x2_8Bits_estructural.v:12.9-25.12" *)
  DFF _099_ (
    .C(clk_2f),
    .D(_000_[6]),
    .Q(data_out1_estructural[6])
  );
  (* src = "Demux_1x2_8Bits_estructural.v:12.9-25.12" *)
  DFF _100_ (
    .C(clk_2f),
    .D(_000_[7]),
    .Q(data_out1_estructural[7])
  );
  (* src = "Demux_1x2_8Bits_estructural.v:12.9-25.12" *)
  DFF _101_ (
    .C(clk_2f),
    .D(_011_),
    .Q(data_out0_estructural[0])
  );
  (* src = "Demux_1x2_8Bits_estructural.v:12.9-25.12" *)
  DFF _102_ (
    .C(clk_2f),
    .D(_012_),
    .Q(data_out0_estructural[1])
  );
  (* src = "Demux_1x2_8Bits_estructural.v:12.9-25.12" *)
  DFF _103_ (
    .C(clk_2f),
    .D(_013_),
    .Q(data_out0_estructural[2])
  );
  (* src = "Demux_1x2_8Bits_estructural.v:12.9-25.12" *)
  DFF _104_ (
    .C(clk_2f),
    .D(_014_),
    .Q(data_out0_estructural[3])
  );
  (* src = "Demux_1x2_8Bits_estructural.v:12.9-25.12" *)
  DFF _105_ (
    .C(clk_2f),
    .D(_015_),
    .Q(data_out0_estructural[4])
  );
  (* src = "Demux_1x2_8Bits_estructural.v:12.9-25.12" *)
  DFF _106_ (
    .C(clk_2f),
    .D(_016_),
    .Q(data_out0_estructural[5])
  );
  (* src = "Demux_1x2_8Bits_estructural.v:12.9-25.12" *)
  DFF _107_ (
    .C(clk_2f),
    .D(_017_),
    .Q(data_out0_estructural[6])
  );
  (* src = "Demux_1x2_8Bits_estructural.v:12.9-25.12" *)
  DFF _108_ (
    .C(clk_2f),
    .D(_018_),
    .Q(data_out0_estructural[7])
  );
  (* src = "Demux_1x2_8Bits_estructural.v:12.9-25.12" *)
  DFF _109_ (
    .C(clk_2f),
    .D(_019_),
    .Q(outValid0_estructural)
  );
endmodule

(* top =  1  *)
(* src = "Demux_1x4_8Bits_estructural.v:3.1-53.10" *)
module Demux_1x4_8Bits_estructural(data2send_to_LDMX_estruct, clk_4f, clk_2f, clk, valid_out_to_LDMX_estruct, reset, outValid0_estructural, outValid1_estructural, outValid2_estructural, outValid3_estructural, data_out0_estructural, data_out1_estructural, data_out2_estructural, data_out3_estructural);
  (* src = "Demux_1x4_8Bits_estructural.v:6.27-6.30" *)
  input clk;
  (* src = "Demux_1x4_8Bits_estructural.v:6.19-6.25" *)
  input clk_2f;
  (* src = "Demux_1x4_8Bits_estructural.v:6.11-6.17" *)
  input clk_4f;
  (* src = "Demux_1x4_8Bits_estructural.v:5.17-5.34" *)
  input [7:0] data2send_to_LDMX_estruct;
  (* src = "Demux_1x4_8Bits_estructural.v:8.18-8.38" *)
  output [7:0] data_out0_estructural;
  (* src = "Demux_1x4_8Bits_estructural.v:8.39-8.59" *)
  output [7:0] data_out1_estructural;
  (* src = "Demux_1x4_8Bits_estructural.v:8.61-8.81" *)
  output [7:0] data_out2_estructural;
  (* src = "Demux_1x4_8Bits_estructural.v:8.82-8.102" *)
  output [7:0] data_out3_estructural;
  (* src = "Demux_1x4_8Bits_estructural.v:7.12-7.32" *)
  output outValid0_estructural;
  (* src = "Demux_1x4_8Bits_estructural.v:7.34-7.54" *)
  output outValid1_estructural;
  (* src = "Demux_1x4_8Bits_estructural.v:7.55-7.75" *)
  output outValid2_estructural;
  (* src = "Demux_1x4_8Bits_estructural.v:7.76-7.96" *)
  output outValid3_estructural;
  (* src = "Demux_1x4_8Bits_estructural.v:6.52-6.57" *)
  input reset;
  (* src = "Demux_1x4_8Bits_estructural.v:12.16-12.29" *)
  wire [7:0] salida0Demux1;
  (* src = "Demux_1x4_8Bits_estructural.v:12.31-12.44" *)
  wire [7:0] salida1Demux1;
  (* src = "Demux_1x4_8Bits_estructural.v:13.10-13.20" *)
  wire valid0Temp;
  (* src = "Demux_1x4_8Bits_estructural.v:13.22-13.32" *)
  wire valid1Temp;
  (* src = "Demux_1x4_8Bits_estructural.v:6.33-6.50" *)
  input valid_out_to_LDMX_estruct;
  (* module_not_derived = 32'd1 *)
  (* src = "Demux_1x4_8Bits_estructural.v:17.21-25.54" *)
  Demux_1x2_8Bits_estructural Demux1 (
    .In(data2send_to_LDMX_estruct),
    .clk_2f(clk_2f),
    .data_out0_estructural(salida0Demux1),
    .data_out1_estructural(salida1Demux1),
    .outValid0_estructural(valid0Temp),
    .outValid1_estructural(valid1Temp),
    .reset(reset),
    .validIn(valid_out_to_LDMX_estruct)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "Demux_1x4_8Bits_estructural.v:31.21-39.61" *)
  Demux_1x2_8Bits_estructural Demux2 (
    .In(salida0Demux1),
    .clk_2f(clk),
    .data_out0_estructural(data_out0_estructural),
    .data_out1_estructural(data_out1_estructural),
    .outValid0_estructural(outValid0_estructural),
    .outValid1_estructural(outValid1_estructural),
    .reset(reset),
    .validIn(valid0Temp)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "Demux_1x4_8Bits_estructural.v:42.21-50.61" *)
  Demux_1x2_8Bits_estructural Demux3 (
    .In(salida1Demux1),
    .clk_2f(clk),
    .data_out0_estructural(data_out2_estructural),
    .data_out1_estructural(data_out3_estructural),
    .outValid0_estructural(outValid2_estructural),
    .outValid1_estructural(outValid3_estructural),
    .reset(reset),
    .validIn(valid1Temp)
  );
endmodule
