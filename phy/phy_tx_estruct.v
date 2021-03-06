/* Generated by Yosys 0.9+4052 (git sha1 44520808, gcc 9.3.0-17ubuntu1~20.04 -fPIC -Os) */

(* src = "Mux2x1_8Bits_estruct.v:3.1-52.10" *)
module Mux2x1_8Bits_estruct(In0, In1, clk, valid0, valid1, reset, outValid, data_out);
  wire _000_;
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
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  wire _054_;
  wire _055_;
  wire _056_;
  wire _057_;
  wire _058_;
  wire _059_;
  wire _060_;
  wire _061_;
  wire _062_;
  wire _063_;
  wire _064_;
  wire _065_;
  wire _066_;
  wire _067_;
  wire _068_;
  wire _069_;
  wire _070_;
  wire _071_;
  wire _072_;
  wire _073_;
  wire _074_;
  wire _075_;
  wire _076_;
  wire _077_;
  wire _078_;
  wire _079_;
  wire _080_;
  wire _081_;
  wire _082_;
  wire _083_;
  wire _084_;
  wire _085_;
  (* src = "Mux2x1_8Bits_estruct.v:4.17-4.20" *)
  input [7:0] In0;
  (* src = "Mux2x1_8Bits_estruct.v:4.21-4.24" *)
  input [7:0] In1;
  (* src = "Mux2x1_8Bits_estruct.v:11.15-11.28" *)
  wire [7:0] ValorAnterior;
  (* src = "Mux2x1_8Bits_estruct.v:5.11-5.14" *)
  input clk;
  (* src = "Mux2x1_8Bits_estruct.v:8.22-8.30" *)
  output [7:0] data_out;
  (* src = "Mux2x1_8Bits_estruct.v:7.16-7.24" *)
  output outValid;
  (* src = "Mux2x1_8Bits_estruct.v:6.11-6.16" *)
  input reset;
  (* src = "Mux2x1_8Bits_estruct.v:13.9-13.17" *)
  wire selector;
  (* src = "Mux2x1_8Bits_estruct.v:5.16-5.22" *)
  input valid0;
  (* src = "Mux2x1_8Bits_estruct.v:5.24-5.30" *)
  input valid1;
  (* src = "Mux2x1_8Bits_estruct.v:12.10-12.19" *)
  wire validTemp;
  NOT _086_ (
    .A(ValorAnterior[7]),
    .Y(_052_)
  );
  NOT _087_ (
    .A(clk),
    .Y(_006_)
  );
  NOT _088_ (
    .A(ValorAnterior[6]),
    .Y(_053_)
  );
  NOT _089_ (
    .A(ValorAnterior[5]),
    .Y(_054_)
  );
  NOT _090_ (
    .A(ValorAnterior[4]),
    .Y(_055_)
  );
  NOT _091_ (
    .A(ValorAnterior[3]),
    .Y(_056_)
  );
  NOT _092_ (
    .A(ValorAnterior[2]),
    .Y(_057_)
  );
  NOT _093_ (
    .A(ValorAnterior[1]),
    .Y(_058_)
  );
  NOT _094_ (
    .A(ValorAnterior[0]),
    .Y(_059_)
  );
  NOT _095_ (
    .A(validTemp),
    .Y(_060_)
  );
  NOT _096_ (
    .A(selector),
    .Y(_061_)
  );
  NOT _097_ (
    .A(valid1),
    .Y(_062_)
  );
  NOT _098_ (
    .A(valid0),
    .Y(_063_)
  );
  NOR _099_ (
    .A(selector),
    .B(_062_),
    .Y(_064_)
  );
  NAND _100_ (
    .A(_061_),
    .B(valid1),
    .Y(_065_)
  );
  NAND _101_ (
    .A(In1[7]),
    .B(_064_),
    .Y(_066_)
  );
  NOR _102_ (
    .A(_061_),
    .B(_063_),
    .Y(_067_)
  );
  NAND _103_ (
    .A(selector),
    .B(valid0),
    .Y(_068_)
  );
  NAND _104_ (
    .A(In0[7]),
    .B(_067_),
    .Y(_069_)
  );
  NAND _105_ (
    .A(_066_),
    .B(_069_),
    .Y(_070_)
  );
  NAND _106_ (
    .A(_065_),
    .B(_068_),
    .Y(_071_)
  );
  NOT _107_ (
    .A(_071_),
    .Y(_072_)
  );
  NOR _108_ (
    .A(reset),
    .B(_052_),
    .Y(_025_)
  );
  NOR _109_ (
    .A(_052_),
    .B(_071_),
    .Y(_073_)
  );
  NOR _110_ (
    .A(_070_),
    .B(_073_),
    .Y(_074_)
  );
  NOR _111_ (
    .A(reset),
    .B(_074_),
    .Y(_015_)
  );
  NAND _112_ (
    .A(In1[6]),
    .B(_064_),
    .Y(_075_)
  );
  NAND _113_ (
    .A(In0[6]),
    .B(_067_),
    .Y(_076_)
  );
  NAND _114_ (
    .A(_075_),
    .B(_076_),
    .Y(_077_)
  );
  NOR _115_ (
    .A(reset),
    .B(_053_),
    .Y(_024_)
  );
  NOR _116_ (
    .A(_053_),
    .B(_071_),
    .Y(_078_)
  );
  NOR _117_ (
    .A(_077_),
    .B(_078_),
    .Y(_079_)
  );
  NOR _118_ (
    .A(reset),
    .B(_079_),
    .Y(_014_)
  );
  NAND _119_ (
    .A(In1[5]),
    .B(_064_),
    .Y(_080_)
  );
  NAND _120_ (
    .A(In0[5]),
    .B(_067_),
    .Y(_081_)
  );
  NAND _121_ (
    .A(_080_),
    .B(_081_),
    .Y(_082_)
  );
  NOR _122_ (
    .A(reset),
    .B(_054_),
    .Y(_023_)
  );
  NOR _123_ (
    .A(_054_),
    .B(_071_),
    .Y(_083_)
  );
  NOR _124_ (
    .A(_082_),
    .B(_083_),
    .Y(_084_)
  );
  NOR _125_ (
    .A(reset),
    .B(_084_),
    .Y(_013_)
  );
  NAND _126_ (
    .A(In0[4]),
    .B(_067_),
    .Y(_085_)
  );
  NAND _127_ (
    .A(In1[4]),
    .B(_064_),
    .Y(_028_)
  );
  NAND _128_ (
    .A(_085_),
    .B(_028_),
    .Y(_029_)
  );
  NOR _129_ (
    .A(_055_),
    .B(_071_),
    .Y(_030_)
  );
  NOR _130_ (
    .A(_029_),
    .B(_030_),
    .Y(_031_)
  );
  NOR _131_ (
    .A(reset),
    .B(_055_),
    .Y(_022_)
  );
  NOR _132_ (
    .A(reset),
    .B(_031_),
    .Y(_012_)
  );
  NAND _133_ (
    .A(In1[3]),
    .B(_064_),
    .Y(_032_)
  );
  NAND _134_ (
    .A(In0[3]),
    .B(_067_),
    .Y(_033_)
  );
  NAND _135_ (
    .A(_032_),
    .B(_033_),
    .Y(_034_)
  );
  NOR _136_ (
    .A(reset),
    .B(_056_),
    .Y(_021_)
  );
  NOR _137_ (
    .A(_056_),
    .B(_071_),
    .Y(_035_)
  );
  NOR _138_ (
    .A(_034_),
    .B(_035_),
    .Y(_036_)
  );
  NOR _139_ (
    .A(reset),
    .B(_036_),
    .Y(_011_)
  );
  NAND _140_ (
    .A(In1[2]),
    .B(_064_),
    .Y(_037_)
  );
  NAND _141_ (
    .A(In0[2]),
    .B(_067_),
    .Y(_038_)
  );
  NAND _142_ (
    .A(_037_),
    .B(_038_),
    .Y(_039_)
  );
  NOR _143_ (
    .A(reset),
    .B(_057_),
    .Y(_020_)
  );
  NOR _144_ (
    .A(_057_),
    .B(_071_),
    .Y(_040_)
  );
  NOR _145_ (
    .A(_039_),
    .B(_040_),
    .Y(_041_)
  );
  NOR _146_ (
    .A(reset),
    .B(_041_),
    .Y(_010_)
  );
  NAND _147_ (
    .A(In1[1]),
    .B(_064_),
    .Y(_042_)
  );
  NAND _148_ (
    .A(In0[1]),
    .B(_067_),
    .Y(_043_)
  );
  NAND _149_ (
    .A(_042_),
    .B(_043_),
    .Y(_044_)
  );
  NOR _150_ (
    .A(reset),
    .B(_058_),
    .Y(_019_)
  );
  NOR _151_ (
    .A(_058_),
    .B(_071_),
    .Y(_045_)
  );
  NOR _152_ (
    .A(_044_),
    .B(_045_),
    .Y(_046_)
  );
  NOR _153_ (
    .A(reset),
    .B(_046_),
    .Y(_009_)
  );
  NAND _154_ (
    .A(In1[0]),
    .B(_064_),
    .Y(_047_)
  );
  NAND _155_ (
    .A(In0[0]),
    .B(_067_),
    .Y(_048_)
  );
  NAND _156_ (
    .A(_047_),
    .B(_048_),
    .Y(_049_)
  );
  NOR _157_ (
    .A(reset),
    .B(_059_),
    .Y(_018_)
  );
  NOR _158_ (
    .A(_059_),
    .B(_071_),
    .Y(_050_)
  );
  NOR _159_ (
    .A(_049_),
    .B(_050_),
    .Y(_051_)
  );
  NOR _160_ (
    .A(reset),
    .B(_051_),
    .Y(_027_)
  );
  NOR _161_ (
    .A(reset),
    .B(selector),
    .Y(_026_)
  );
  NOR _162_ (
    .A(reset),
    .B(_060_),
    .Y(_017_)
  );
  NOR _163_ (
    .A(reset),
    .B(_072_),
    .Y(_016_)
  );
  NOT _164_ (
    .A(clk),
    .Y(_005_)
  );
  NOT _165_ (
    .A(clk),
    .Y(_004_)
  );
  NOT _166_ (
    .A(clk),
    .Y(_003_)
  );
  NOT _167_ (
    .A(clk),
    .Y(_002_)
  );
  NOT _168_ (
    .A(clk),
    .Y(_001_)
  );
  NOT _169_ (
    .A(clk),
    .Y(_000_)
  );
  NOT _170_ (
    .A(clk),
    .Y(_008_)
  );
  NOT _171_ (
    .A(clk),
    .Y(_007_)
  );
  (* src = "Mux2x1_8Bits_estruct.v:15.5-37.8" *)
  DFF _172_ (
    .C(_008_),
    .D(_016_),
    .Q(validTemp)
  );
  (* src = "Mux2x1_8Bits_estruct.v:39.5-50.8" *)
  DFF _173_ (
    .C(clk),
    .D(_017_),
    .Q(outValid)
  );
  (* src = "Mux2x1_8Bits_estruct.v:39.5-50.8" *)
  DFF _174_ (
    .C(clk),
    .D(_018_),
    .Q(data_out[0])
  );
  (* src = "Mux2x1_8Bits_estruct.v:39.5-50.8" *)
  DFF _175_ (
    .C(clk),
    .D(_019_),
    .Q(data_out[1])
  );
  (* src = "Mux2x1_8Bits_estruct.v:39.5-50.8" *)
  DFF _176_ (
    .C(clk),
    .D(_020_),
    .Q(data_out[2])
  );
  (* src = "Mux2x1_8Bits_estruct.v:39.5-50.8" *)
  DFF _177_ (
    .C(clk),
    .D(_021_),
    .Q(data_out[3])
  );
  (* src = "Mux2x1_8Bits_estruct.v:39.5-50.8" *)
  DFF _178_ (
    .C(clk),
    .D(_022_),
    .Q(data_out[4])
  );
  (* src = "Mux2x1_8Bits_estruct.v:39.5-50.8" *)
  DFF _179_ (
    .C(clk),
    .D(_023_),
    .Q(data_out[5])
  );
  (* src = "Mux2x1_8Bits_estruct.v:39.5-50.8" *)
  DFF _180_ (
    .C(clk),
    .D(_024_),
    .Q(data_out[6])
  );
  (* src = "Mux2x1_8Bits_estruct.v:39.5-50.8" *)
  DFF _181_ (
    .C(clk),
    .D(_025_),
    .Q(data_out[7])
  );
  (* src = "Mux2x1_8Bits_estruct.v:39.5-50.8" *)
  DFF _182_ (
    .C(clk),
    .D(_026_),
    .Q(selector)
  );
  (* src = "Mux2x1_8Bits_estruct.v:15.5-37.8" *)
  DFF _183_ (
    .C(_000_),
    .D(_027_),
    .Q(ValorAnterior[0])
  );
  (* src = "Mux2x1_8Bits_estruct.v:15.5-37.8" *)
  DFF _184_ (
    .C(_001_),
    .D(_009_),
    .Q(ValorAnterior[1])
  );
  (* src = "Mux2x1_8Bits_estruct.v:15.5-37.8" *)
  DFF _185_ (
    .C(_002_),
    .D(_010_),
    .Q(ValorAnterior[2])
  );
  (* src = "Mux2x1_8Bits_estruct.v:15.5-37.8" *)
  DFF _186_ (
    .C(_003_),
    .D(_011_),
    .Q(ValorAnterior[3])
  );
  (* src = "Mux2x1_8Bits_estruct.v:15.5-37.8" *)
  DFF _187_ (
    .C(_004_),
    .D(_012_),
    .Q(ValorAnterior[4])
  );
  (* src = "Mux2x1_8Bits_estruct.v:15.5-37.8" *)
  DFF _188_ (
    .C(_005_),
    .D(_013_),
    .Q(ValorAnterior[5])
  );
  (* src = "Mux2x1_8Bits_estruct.v:15.5-37.8" *)
  DFF _189_ (
    .C(_006_),
    .D(_014_),
    .Q(ValorAnterior[6])
  );
  (* src = "Mux2x1_8Bits_estruct.v:15.5-37.8" *)
  DFF _190_ (
    .C(_007_),
    .D(_015_),
    .Q(ValorAnterior[7])
  );
endmodule

(* src = "Recirculacion_estruct.v:1.1-124.10" *)
module Recirculacion_estruct(In0, In1, In2, In3, clk, reset, valid0, valid1, valid2, valid3, recirculacion_estruct, data_mux0, data_Probador0_estruct, data_mux1, data_Probador1_estruct, data_mux2, data_Probador2_estruct, data_mux3, data_Probador3_estruct, valid0_mux, valid1_mux, valid2_mux, valid3_mux, valid0_probador_estruct, valid1_probador_estruct, valid2_probador_estruct, valid3_probador_estruct);
  wire _000_;
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
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  wire _054_;
  wire _055_;
  wire _056_;
  wire _057_;
  wire _058_;
  wire _059_;
  wire _060_;
  wire _061_;
  wire _062_;
  wire _063_;
  wire _064_;
  wire _065_;
  wire _066_;
  wire _067_;
  wire _068_;
  wire _069_;
  wire _070_;
  wire _071_;
  wire _072_;
  wire _073_;
  wire _074_;
  wire _075_;
  wire _076_;
  wire _077_;
  wire _078_;
  wire _079_;
  wire _080_;
  wire _081_;
  wire _082_;
  wire _083_;
  wire _084_;
  wire _085_;
  wire _086_;
  wire _087_;
  wire _088_;
  wire _089_;
  wire _090_;
  wire _091_;
  wire _092_;
  wire _093_;
  wire _094_;
  wire _095_;
  wire _096_;
  wire _097_;
  wire _098_;
  wire _099_;
  wire _100_;
  wire _101_;
  wire _102_;
  wire _103_;
  wire _104_;
  wire _105_;
  wire _106_;
  wire _107_;
  wire _108_;
  wire _109_;
  wire _110_;
  wire _111_;
  wire _112_;
  wire _113_;
  wire _114_;
  wire _115_;
  wire _116_;
  wire _117_;
  wire _118_;
  wire _119_;
  wire _120_;
  wire _121_;
  wire _122_;
  wire _123_;
  wire _124_;
  wire _125_;
  wire _126_;
  wire _127_;
  wire _128_;
  wire _129_;
  wire _130_;
  wire _131_;
  wire _132_;
  wire _133_;
  wire _134_;
  wire _135_;
  wire _136_;
  wire _137_;
  wire _138_;
  wire _139_;
  wire _140_;
  wire _141_;
  wire _142_;
  wire _143_;
  wire _144_;
  wire _145_;
  wire _146_;
  (* src = "Recirculacion_estruct.v:2.17-2.20" *)
  input [7:0] In0;
  (* src = "Recirculacion_estruct.v:2.22-2.25" *)
  input [7:0] In1;
  (* src = "Recirculacion_estruct.v:2.27-2.30" *)
  input [7:0] In2;
  (* src = "Recirculacion_estruct.v:2.32-2.35" *)
  input [7:0] In3;
  (* src = "Recirculacion_estruct.v:3.11-3.14" *)
  input clk;
  (* src = "Recirculacion_estruct.v:7.22-7.36" *)
  output [7:0] data_Probador0_estruct;
  (* src = "Recirculacion_estruct.v:9.22-9.36" *)
  output [7:0] data_Probador1_estruct;
  (* src = "Recirculacion_estruct.v:11.22-11.36" *)
  output [7:0] data_Probador2_estruct;
  (* src = "Recirculacion_estruct.v:13.22-13.36" *)
  output [7:0] data_Probador3_estruct;
  (* src = "Recirculacion_estruct.v:6.22-6.31" *)
  output [7:0] data_mux0;
  (* src = "Recirculacion_estruct.v:8.22-8.31" *)
  output [7:0] data_mux1;
  (* src = "Recirculacion_estruct.v:10.22-10.31" *)
  output [7:0] data_mux2;
  (* src = "Recirculacion_estruct.v:12.22-12.31" *)
  output [7:0] data_mux3;
  (* src = "Recirculacion_estruct.v:5.11-5.24" *)
  input recirculacion_estruct;
  (* src = "Recirculacion_estruct.v:3.16-3.21" *)
  input reset;
  (* src = "Recirculacion_estruct.v:4.11-4.17" *)
  input valid0;
  (* src = "Recirculacion_estruct.v:14.16-14.26" *)
  output valid0_mux;
  (* src = "Recirculacion_estruct.v:15.16-15.31" *)
  output valid0_probador_estruct;
  (* src = "Recirculacion_estruct.v:4.19-4.25" *)
  input valid1;
  (* src = "Recirculacion_estruct.v:14.28-14.38" *)
  output valid1_mux;
  (* src = "Recirculacion_estruct.v:15.33-15.48" *)
  output valid1_probador_estruct;
  (* src = "Recirculacion_estruct.v:4.27-4.33" *)
  input valid2;
  (* src = "Recirculacion_estruct.v:14.40-14.50" *)
  output valid2_mux;
  (* src = "Recirculacion_estruct.v:15.50-15.65" *)
  output valid2_probador_estruct;
  (* src = "Recirculacion_estruct.v:4.35-4.41" *)
  input valid3;
  (* src = "Recirculacion_estruct.v:14.52-14.62" *)
  output valid3_mux;
  (* src = "Recirculacion_estruct.v:15.67-15.82" *)
  output valid3_probador_estruct;
  NOT _147_ (
    .A(In2[6]),
    .Y(_072_)
  );
  NOT _148_ (
    .A(In2[5]),
    .Y(_073_)
  );
  NOT _149_ (
    .A(In2[4]),
    .Y(_074_)
  );
  NOT _150_ (
    .A(In2[3]),
    .Y(_075_)
  );
  NOT _151_ (
    .A(In2[2]),
    .Y(_076_)
  );
  NOT _152_ (
    .A(In2[1]),
    .Y(_077_)
  );
  NOT _153_ (
    .A(In2[0]),
    .Y(_078_)
  );
  NOT _154_ (
    .A(valid3),
    .Y(_079_)
  );
  NOT _155_ (
    .A(valid0),
    .Y(_080_)
  );
  NOT _156_ (
    .A(In1[7]),
    .Y(_081_)
  );
  NOT _157_ (
    .A(In1[6]),
    .Y(_082_)
  );
  NOT _158_ (
    .A(In1[5]),
    .Y(_083_)
  );
  NOT _159_ (
    .A(In1[4]),
    .Y(_084_)
  );
  NOT _160_ (
    .A(In1[3]),
    .Y(_085_)
  );
  NOT _161_ (
    .A(In1[2]),
    .Y(_086_)
  );
  NOT _162_ (
    .A(In1[1]),
    .Y(_087_)
  );
  NOT _163_ (
    .A(In1[0]),
    .Y(_088_)
  );
  NOT _164_ (
    .A(valid1),
    .Y(_089_)
  );
  NOT _165_ (
    .A(valid2),
    .Y(_090_)
  );
  NOT _166_ (
    .A(In0[7]),
    .Y(_091_)
  );
  NOT _167_ (
    .A(In0[6]),
    .Y(_092_)
  );
  NOT _168_ (
    .A(In0[5]),
    .Y(_093_)
  );
  NOT _169_ (
    .A(In0[4]),
    .Y(_094_)
  );
  NOT _170_ (
    .A(In0[3]),
    .Y(_095_)
  );
  NOT _171_ (
    .A(In0[2]),
    .Y(_096_)
  );
  NOT _172_ (
    .A(In0[1]),
    .Y(_097_)
  );
  NOT _173_ (
    .A(In0[0]),
    .Y(_098_)
  );
  NOT _174_ (
    .A(In3[7]),
    .Y(_099_)
  );
  NOT _175_ (
    .A(In3[6]),
    .Y(_100_)
  );
  NOT _176_ (
    .A(In3[5]),
    .Y(_101_)
  );
  NOT _177_ (
    .A(In3[4]),
    .Y(_102_)
  );
  NOT _178_ (
    .A(In3[3]),
    .Y(_103_)
  );
  NOT _179_ (
    .A(In3[2]),
    .Y(_104_)
  );
  NOT _180_ (
    .A(In3[1]),
    .Y(_105_)
  );
  NOT _181_ (
    .A(In3[0]),
    .Y(_106_)
  );
  NOT _182_ (
    .A(In2[7]),
    .Y(_107_)
  );
  NOT _183_ (
    .A(reset),
    .Y(_108_)
  );
  NAND _184_ (
    .A(_108_),
    .B(recirculacion_estruct),
    .Y(_109_)
  );
  NOR _185_ (
    .A(_072_),
    .B(_109_),
    .Y(_070_)
  );
  NOR _186_ (
    .A(_073_),
    .B(_109_),
    .Y(_069_)
  );
  NOR _187_ (
    .A(_074_),
    .B(_109_),
    .Y(_068_)
  );
  NOR _188_ (
    .A(_075_),
    .B(_109_),
    .Y(_067_)
  );
  NOR _189_ (
    .A(_076_),
    .B(_109_),
    .Y(_066_)
  );
  NOR _190_ (
    .A(_077_),
    .B(_109_),
    .Y(_065_)
  );
  NOR _191_ (
    .A(_078_),
    .B(_109_),
    .Y(_064_)
  );
  NOR _192_ (
    .A(_079_),
    .B(_109_),
    .Y(_063_)
  );
  NOR _193_ (
    .A(reset),
    .B(recirculacion_estruct),
    .Y(_110_)
  );
  NAND _194_ (
    .A(valid0),
    .B(_110_),
    .Y(_111_)
  );
  NOT _195_ (
    .A(_111_),
    .Y(_062_)
  );
  NOR _196_ (
    .A(_081_),
    .B(_109_),
    .Y(_061_)
  );
  NOR _197_ (
    .A(_082_),
    .B(_109_),
    .Y(_060_)
  );
  NOR _198_ (
    .A(_083_),
    .B(_109_),
    .Y(_059_)
  );
  NOR _199_ (
    .A(_084_),
    .B(_109_),
    .Y(_058_)
  );
  NOR _200_ (
    .A(_085_),
    .B(_109_),
    .Y(_057_)
  );
  NOR _201_ (
    .A(_086_),
    .B(_109_),
    .Y(_056_)
  );
  NOR _202_ (
    .A(_087_),
    .B(_109_),
    .Y(_055_)
  );
  NOR _203_ (
    .A(_088_),
    .B(_109_),
    .Y(_054_)
  );
  NOR _204_ (
    .A(_089_),
    .B(_109_),
    .Y(_053_)
  );
  NOR _205_ (
    .A(_090_),
    .B(_109_),
    .Y(_052_)
  );
  NOR _206_ (
    .A(_091_),
    .B(_109_),
    .Y(_051_)
  );
  NOR _207_ (
    .A(_092_),
    .B(_109_),
    .Y(_050_)
  );
  NOR _208_ (
    .A(_093_),
    .B(_109_),
    .Y(_049_)
  );
  NOR _209_ (
    .A(_094_),
    .B(_109_),
    .Y(_048_)
  );
  NOR _210_ (
    .A(_095_),
    .B(_109_),
    .Y(_047_)
  );
  NOR _211_ (
    .A(_096_),
    .B(_109_),
    .Y(_046_)
  );
  NOR _212_ (
    .A(_097_),
    .B(_109_),
    .Y(_045_)
  );
  NOR _213_ (
    .A(_098_),
    .B(_109_),
    .Y(_044_)
  );
  NAND _214_ (
    .A(In3[7]),
    .B(_110_),
    .Y(_112_)
  );
  NOT _215_ (
    .A(_112_),
    .Y(_043_)
  );
  NAND _216_ (
    .A(In3[6]),
    .B(_110_),
    .Y(_113_)
  );
  NOT _217_ (
    .A(_113_),
    .Y(_042_)
  );
  NAND _218_ (
    .A(In3[5]),
    .B(_110_),
    .Y(_114_)
  );
  NOT _219_ (
    .A(_114_),
    .Y(_041_)
  );
  NAND _220_ (
    .A(In3[4]),
    .B(_110_),
    .Y(_115_)
  );
  NOT _221_ (
    .A(_115_),
    .Y(_040_)
  );
  NAND _222_ (
    .A(In3[3]),
    .B(_110_),
    .Y(_116_)
  );
  NOT _223_ (
    .A(_116_),
    .Y(_039_)
  );
  NAND _224_ (
    .A(In3[2]),
    .B(_110_),
    .Y(_117_)
  );
  NOT _225_ (
    .A(_117_),
    .Y(_038_)
  );
  NAND _226_ (
    .A(In3[1]),
    .B(_110_),
    .Y(_118_)
  );
  NOT _227_ (
    .A(_118_),
    .Y(_037_)
  );
  NAND _228_ (
    .A(In3[0]),
    .B(_110_),
    .Y(_119_)
  );
  NOT _229_ (
    .A(_119_),
    .Y(_036_)
  );
  NAND _230_ (
    .A(valid3),
    .B(_110_),
    .Y(_120_)
  );
  NOT _231_ (
    .A(_120_),
    .Y(_035_)
  );
  NAND _232_ (
    .A(In1[7]),
    .B(_110_),
    .Y(_121_)
  );
  NOT _233_ (
    .A(_121_),
    .Y(_034_)
  );
  NAND _234_ (
    .A(In1[6]),
    .B(_110_),
    .Y(_122_)
  );
  NOT _235_ (
    .A(_122_),
    .Y(_033_)
  );
  NAND _236_ (
    .A(In1[5]),
    .B(_110_),
    .Y(_123_)
  );
  NOT _237_ (
    .A(_123_),
    .Y(_032_)
  );
  NAND _238_ (
    .A(In1[4]),
    .B(_110_),
    .Y(_124_)
  );
  NOT _239_ (
    .A(_124_),
    .Y(_031_)
  );
  NAND _240_ (
    .A(In1[3]),
    .B(_110_),
    .Y(_125_)
  );
  NOT _241_ (
    .A(_125_),
    .Y(_030_)
  );
  NAND _242_ (
    .A(In1[2]),
    .B(_110_),
    .Y(_126_)
  );
  NOT _243_ (
    .A(_126_),
    .Y(_029_)
  );
  NAND _244_ (
    .A(In1[1]),
    .B(_110_),
    .Y(_127_)
  );
  NOT _245_ (
    .A(_127_),
    .Y(_028_)
  );
  NAND _246_ (
    .A(In1[0]),
    .B(_110_),
    .Y(_128_)
  );
  NOT _247_ (
    .A(_128_),
    .Y(_027_)
  );
  NAND _248_ (
    .A(valid2),
    .B(_110_),
    .Y(_129_)
  );
  NOT _249_ (
    .A(_129_),
    .Y(_026_)
  );
  NAND _250_ (
    .A(valid1),
    .B(_110_),
    .Y(_130_)
  );
  NOT _251_ (
    .A(_130_),
    .Y(_025_)
  );
  NOR _252_ (
    .A(_099_),
    .B(_109_),
    .Y(_024_)
  );
  NOR _253_ (
    .A(_100_),
    .B(_109_),
    .Y(_023_)
  );
  NOR _254_ (
    .A(_101_),
    .B(_109_),
    .Y(_022_)
  );
  NOR _255_ (
    .A(_102_),
    .B(_109_),
    .Y(_021_)
  );
  NOR _256_ (
    .A(_103_),
    .B(_109_),
    .Y(_020_)
  );
  NOR _257_ (
    .A(_104_),
    .B(_109_),
    .Y(_019_)
  );
  NOR _258_ (
    .A(_105_),
    .B(_109_),
    .Y(_018_)
  );
  NOR _259_ (
    .A(_106_),
    .B(_109_),
    .Y(_017_)
  );
  NAND _260_ (
    .A(In0[7]),
    .B(_110_),
    .Y(_131_)
  );
  NOT _261_ (
    .A(_131_),
    .Y(_016_)
  );
  NAND _262_ (
    .A(In0[6]),
    .B(_110_),
    .Y(_132_)
  );
  NOT _263_ (
    .A(_132_),
    .Y(_015_)
  );
  NAND _264_ (
    .A(In0[5]),
    .B(_110_),
    .Y(_133_)
  );
  NOT _265_ (
    .A(_133_),
    .Y(_014_)
  );
  NAND _266_ (
    .A(In0[4]),
    .B(_110_),
    .Y(_134_)
  );
  NOT _267_ (
    .A(_134_),
    .Y(_013_)
  );
  NAND _268_ (
    .A(In0[3]),
    .B(_110_),
    .Y(_135_)
  );
  NOT _269_ (
    .A(_135_),
    .Y(_012_)
  );
  NAND _270_ (
    .A(In0[2]),
    .B(_110_),
    .Y(_136_)
  );
  NOT _271_ (
    .A(_136_),
    .Y(_011_)
  );
  NAND _272_ (
    .A(In0[1]),
    .B(_110_),
    .Y(_137_)
  );
  NOT _273_ (
    .A(_137_),
    .Y(_010_)
  );
  NAND _274_ (
    .A(In0[0]),
    .B(_110_),
    .Y(_138_)
  );
  NOT _275_ (
    .A(_138_),
    .Y(_009_)
  );
  NAND _276_ (
    .A(In2[7]),
    .B(_110_),
    .Y(_139_)
  );
  NOT _277_ (
    .A(_139_),
    .Y(_008_)
  );
  NAND _278_ (
    .A(In2[6]),
    .B(_110_),
    .Y(_140_)
  );
  NOT _279_ (
    .A(_140_),
    .Y(_007_)
  );
  NAND _280_ (
    .A(In2[5]),
    .B(_110_),
    .Y(_141_)
  );
  NOT _281_ (
    .A(_141_),
    .Y(_006_)
  );
  NAND _282_ (
    .A(In2[4]),
    .B(_110_),
    .Y(_142_)
  );
  NOT _283_ (
    .A(_142_),
    .Y(_005_)
  );
  NAND _284_ (
    .A(In2[3]),
    .B(_110_),
    .Y(_143_)
  );
  NOT _285_ (
    .A(_143_),
    .Y(_004_)
  );
  NAND _286_ (
    .A(In2[2]),
    .B(_110_),
    .Y(_144_)
  );
  NOT _287_ (
    .A(_144_),
    .Y(_003_)
  );
  NAND _288_ (
    .A(In2[1]),
    .B(_110_),
    .Y(_145_)
  );
  NOT _289_ (
    .A(_145_),
    .Y(_002_)
  );
  NAND _290_ (
    .A(In2[0]),
    .B(_110_),
    .Y(_146_)
  );
  NOT _291_ (
    .A(_146_),
    .Y(_001_)
  );
  NOR _292_ (
    .A(_080_),
    .B(_109_),
    .Y(_000_)
  );
  NOR _293_ (
    .A(_107_),
    .B(_109_),
    .Y(_071_)
  );
  (* src = "Recirculacion_estruct.v:20.1-43.4" *)
  DFF _294_ (
    .C(clk),
    .D(_000_),
    .Q(valid0_mux)
  );
  (* src = "Recirculacion_estruct.v:73.1-96.4" *)
  DFF _295_ (
    .C(clk),
    .D(_001_),
    .Q(data_Probador2_estruct[0])
  );
  (* src = "Recirculacion_estruct.v:73.1-96.4" *)
  DFF _296_ (
    .C(clk),
    .D(_002_),
    .Q(data_Probador2_estruct[1])
  );
  (* src = "Recirculacion_estruct.v:73.1-96.4" *)
  DFF _297_ (
    .C(clk),
    .D(_003_),
    .Q(data_Probador2_estruct[2])
  );
  (* src = "Recirculacion_estruct.v:73.1-96.4" *)
  DFF _298_ (
    .C(clk),
    .D(_004_),
    .Q(data_Probador2_estruct[3])
  );
  (* src = "Recirculacion_estruct.v:73.1-96.4" *)
  DFF _299_ (
    .C(clk),
    .D(_005_),
    .Q(data_Probador2_estruct[4])
  );
  (* src = "Recirculacion_estruct.v:73.1-96.4" *)
  DFF _300_ (
    .C(clk),
    .D(_006_),
    .Q(data_Probador2_estruct[5])
  );
  (* src = "Recirculacion_estruct.v:73.1-96.4" *)
  DFF _301_ (
    .C(clk),
    .D(_007_),
    .Q(data_Probador2_estruct[6])
  );
  (* src = "Recirculacion_estruct.v:73.1-96.4" *)
  DFF _302_ (
    .C(clk),
    .D(_008_),
    .Q(data_Probador2_estruct[7])
  );
  (* src = "Recirculacion_estruct.v:20.1-43.4" *)
  DFF _303_ (
    .C(clk),
    .D(_009_),
    .Q(data_Probador0_estruct[0])
  );
  (* src = "Recirculacion_estruct.v:20.1-43.4" *)
  DFF _304_ (
    .C(clk),
    .D(_010_),
    .Q(data_Probador0_estruct[1])
  );
  (* src = "Recirculacion_estruct.v:20.1-43.4" *)
  DFF _305_ (
    .C(clk),
    .D(_011_),
    .Q(data_Probador0_estruct[2])
  );
  (* src = "Recirculacion_estruct.v:20.1-43.4" *)
  DFF _306_ (
    .C(clk),
    .D(_012_),
    .Q(data_Probador0_estruct[3])
  );
  (* src = "Recirculacion_estruct.v:20.1-43.4" *)
  DFF _307_ (
    .C(clk),
    .D(_013_),
    .Q(data_Probador0_estruct[4])
  );
  (* src = "Recirculacion_estruct.v:20.1-43.4" *)
  DFF _308_ (
    .C(clk),
    .D(_014_),
    .Q(data_Probador0_estruct[5])
  );
  (* src = "Recirculacion_estruct.v:20.1-43.4" *)
  DFF _309_ (
    .C(clk),
    .D(_015_),
    .Q(data_Probador0_estruct[6])
  );
  (* src = "Recirculacion_estruct.v:20.1-43.4" *)
  DFF _310_ (
    .C(clk),
    .D(_016_),
    .Q(data_Probador0_estruct[7])
  );
  (* src = "Recirculacion_estruct.v:99.1-122.4" *)
  DFF _311_ (
    .C(clk),
    .D(_017_),
    .Q(data_mux3[0])
  );
  (* src = "Recirculacion_estruct.v:99.1-122.4" *)
  DFF _312_ (
    .C(clk),
    .D(_018_),
    .Q(data_mux3[1])
  );
  (* src = "Recirculacion_estruct.v:99.1-122.4" *)
  DFF _313_ (
    .C(clk),
    .D(_019_),
    .Q(data_mux3[2])
  );
  (* src = "Recirculacion_estruct.v:99.1-122.4" *)
  DFF _314_ (
    .C(clk),
    .D(_020_),
    .Q(data_mux3[3])
  );
  (* src = "Recirculacion_estruct.v:99.1-122.4" *)
  DFF _315_ (
    .C(clk),
    .D(_021_),
    .Q(data_mux3[4])
  );
  (* src = "Recirculacion_estruct.v:99.1-122.4" *)
  DFF _316_ (
    .C(clk),
    .D(_022_),
    .Q(data_mux3[5])
  );
  (* src = "Recirculacion_estruct.v:99.1-122.4" *)
  DFF _317_ (
    .C(clk),
    .D(_023_),
    .Q(data_mux3[6])
  );
  (* src = "Recirculacion_estruct.v:99.1-122.4" *)
  DFF _318_ (
    .C(clk),
    .D(_024_),
    .Q(data_mux3[7])
  );
  (* src = "Recirculacion_estruct.v:46.1-70.4" *)
  DFF _319_ (
    .C(clk),
    .D(_025_),
    .Q(valid1_probador_estruct)
  );
  (* src = "Recirculacion_estruct.v:73.1-96.4" *)
  DFF _320_ (
    .C(clk),
    .D(_026_),
    .Q(valid2_probador_estruct)
  );
  (* src = "Recirculacion_estruct.v:46.1-70.4" *)
  DFF _321_ (
    .C(clk),
    .D(_027_),
    .Q(data_Probador1_estruct[0])
  );
  (* src = "Recirculacion_estruct.v:46.1-70.4" *)
  DFF _322_ (
    .C(clk),
    .D(_028_),
    .Q(data_Probador1_estruct[1])
  );
  (* src = "Recirculacion_estruct.v:46.1-70.4" *)
  DFF _323_ (
    .C(clk),
    .D(_029_),
    .Q(data_Probador1_estruct[2])
  );
  (* src = "Recirculacion_estruct.v:46.1-70.4" *)
  DFF _324_ (
    .C(clk),
    .D(_030_),
    .Q(data_Probador1_estruct[3])
  );
  (* src = "Recirculacion_estruct.v:46.1-70.4" *)
  DFF _325_ (
    .C(clk),
    .D(_031_),
    .Q(data_Probador1_estruct[4])
  );
  (* src = "Recirculacion_estruct.v:46.1-70.4" *)
  DFF _326_ (
    .C(clk),
    .D(_032_),
    .Q(data_Probador1_estruct[5])
  );
  (* src = "Recirculacion_estruct.v:46.1-70.4" *)
  DFF _327_ (
    .C(clk),
    .D(_033_),
    .Q(data_Probador1_estruct[6])
  );
  (* src = "Recirculacion_estruct.v:46.1-70.4" *)
  DFF _328_ (
    .C(clk),
    .D(_034_),
    .Q(data_Probador1_estruct[7])
  );
  (* src = "Recirculacion_estruct.v:99.1-122.4" *)
  DFF _329_ (
    .C(clk),
    .D(_035_),
    .Q(valid3_probador_estruct)
  );
  (* src = "Recirculacion_estruct.v:99.1-122.4" *)
  DFF _330_ (
    .C(clk),
    .D(_036_),
    .Q(data_Probador3_estruct[0])
  );
  (* src = "Recirculacion_estruct.v:99.1-122.4" *)
  DFF _331_ (
    .C(clk),
    .D(_037_),
    .Q(data_Probador3_estruct[1])
  );
  (* src = "Recirculacion_estruct.v:99.1-122.4" *)
  DFF _332_ (
    .C(clk),
    .D(_038_),
    .Q(data_Probador3_estruct[2])
  );
  (* src = "Recirculacion_estruct.v:99.1-122.4" *)
  DFF _333_ (
    .C(clk),
    .D(_039_),
    .Q(data_Probador3_estruct[3])
  );
  (* src = "Recirculacion_estruct.v:99.1-122.4" *)
  DFF _334_ (
    .C(clk),
    .D(_040_),
    .Q(data_Probador3_estruct[4])
  );
  (* src = "Recirculacion_estruct.v:99.1-122.4" *)
  DFF _335_ (
    .C(clk),
    .D(_041_),
    .Q(data_Probador3_estruct[5])
  );
  (* src = "Recirculacion_estruct.v:99.1-122.4" *)
  DFF _336_ (
    .C(clk),
    .D(_042_),
    .Q(data_Probador3_estruct[6])
  );
  (* src = "Recirculacion_estruct.v:99.1-122.4" *)
  DFF _337_ (
    .C(clk),
    .D(_043_),
    .Q(data_Probador3_estruct[7])
  );
  (* src = "Recirculacion_estruct.v:20.1-43.4" *)
  DFF _338_ (
    .C(clk),
    .D(_044_),
    .Q(data_mux0[0])
  );
  (* src = "Recirculacion_estruct.v:20.1-43.4" *)
  DFF _339_ (
    .C(clk),
    .D(_045_),
    .Q(data_mux0[1])
  );
  (* src = "Recirculacion_estruct.v:20.1-43.4" *)
  DFF _340_ (
    .C(clk),
    .D(_046_),
    .Q(data_mux0[2])
  );
  (* src = "Recirculacion_estruct.v:20.1-43.4" *)
  DFF _341_ (
    .C(clk),
    .D(_047_),
    .Q(data_mux0[3])
  );
  (* src = "Recirculacion_estruct.v:20.1-43.4" *)
  DFF _342_ (
    .C(clk),
    .D(_048_),
    .Q(data_mux0[4])
  );
  (* src = "Recirculacion_estruct.v:20.1-43.4" *)
  DFF _343_ (
    .C(clk),
    .D(_049_),
    .Q(data_mux0[5])
  );
  (* src = "Recirculacion_estruct.v:20.1-43.4" *)
  DFF _344_ (
    .C(clk),
    .D(_050_),
    .Q(data_mux0[6])
  );
  (* src = "Recirculacion_estruct.v:20.1-43.4" *)
  DFF _345_ (
    .C(clk),
    .D(_051_),
    .Q(data_mux0[7])
  );
  (* src = "Recirculacion_estruct.v:73.1-96.4" *)
  DFF _346_ (
    .C(clk),
    .D(_052_),
    .Q(valid2_mux)
  );
  (* src = "Recirculacion_estruct.v:46.1-70.4" *)
  DFF _347_ (
    .C(clk),
    .D(_053_),
    .Q(valid1_mux)
  );
  (* src = "Recirculacion_estruct.v:46.1-70.4" *)
  DFF _348_ (
    .C(clk),
    .D(_054_),
    .Q(data_mux1[0])
  );
  (* src = "Recirculacion_estruct.v:46.1-70.4" *)
  DFF _349_ (
    .C(clk),
    .D(_055_),
    .Q(data_mux1[1])
  );
  (* src = "Recirculacion_estruct.v:46.1-70.4" *)
  DFF _350_ (
    .C(clk),
    .D(_056_),
    .Q(data_mux1[2])
  );
  (* src = "Recirculacion_estruct.v:46.1-70.4" *)
  DFF _351_ (
    .C(clk),
    .D(_057_),
    .Q(data_mux1[3])
  );
  (* src = "Recirculacion_estruct.v:46.1-70.4" *)
  DFF _352_ (
    .C(clk),
    .D(_058_),
    .Q(data_mux1[4])
  );
  (* src = "Recirculacion_estruct.v:46.1-70.4" *)
  DFF _353_ (
    .C(clk),
    .D(_059_),
    .Q(data_mux1[5])
  );
  (* src = "Recirculacion_estruct.v:46.1-70.4" *)
  DFF _354_ (
    .C(clk),
    .D(_060_),
    .Q(data_mux1[6])
  );
  (* src = "Recirculacion_estruct.v:46.1-70.4" *)
  DFF _355_ (
    .C(clk),
    .D(_061_),
    .Q(data_mux1[7])
  );
  (* src = "Recirculacion_estruct.v:20.1-43.4" *)
  DFF _356_ (
    .C(clk),
    .D(_062_),
    .Q(valid0_probador_estruct)
  );
  (* src = "Recirculacion_estruct.v:99.1-122.4" *)
  DFF _357_ (
    .C(clk),
    .D(_063_),
    .Q(valid3_mux)
  );
  (* src = "Recirculacion_estruct.v:73.1-96.4" *)
  DFF _358_ (
    .C(clk),
    .D(_064_),
    .Q(data_mux2[0])
  );
  (* src = "Recirculacion_estruct.v:73.1-96.4" *)
  DFF _359_ (
    .C(clk),
    .D(_065_),
    .Q(data_mux2[1])
  );
  (* src = "Recirculacion_estruct.v:73.1-96.4" *)
  DFF _360_ (
    .C(clk),
    .D(_066_),
    .Q(data_mux2[2])
  );
  (* src = "Recirculacion_estruct.v:73.1-96.4" *)
  DFF _361_ (
    .C(clk),
    .D(_067_),
    .Q(data_mux2[3])
  );
  (* src = "Recirculacion_estruct.v:73.1-96.4" *)
  DFF _362_ (
    .C(clk),
    .D(_068_),
    .Q(data_mux2[4])
  );
  (* src = "Recirculacion_estruct.v:73.1-96.4" *)
  DFF _363_ (
    .C(clk),
    .D(_069_),
    .Q(data_mux2[5])
  );
  (* src = "Recirculacion_estruct.v:73.1-96.4" *)
  DFF _364_ (
    .C(clk),
    .D(_070_),
    .Q(data_mux2[6])
  );
  (* src = "Recirculacion_estruct.v:73.1-96.4" *)
  DFF _365_ (
    .C(clk),
    .D(_071_),
    .Q(data_mux2[7])
  );
endmodule

(* top =  1  *)
(* src = "phy_tx_estruct.v:4.1-118.10" *)
module phy_tx_estruct(In0, In1, In2, In3, clk, clk_2f, clk_4f, valid0, valid1, valid2, valid3, recirculacion_estruct, reset, data_PSA_estruct, valid_PSA_estruct, data_Probador0_estruct, data_Probador1_estruct, data_Probador2_estruct, data_Probador3_estruct, valid0_probador_estruct, valid1_probador_estruct, valid2_probador_estruct, valid3_probador_estruct);
  (* src = "phy_tx_estruct.v:5.17-5.20" *)
  input [7:0] In0;
  (* src = "phy_tx_estruct.v:30.12-30.20" *)
  wire [7:0] In0_good;
  (* src = "phy_tx_estruct.v:6.17-6.20" *)
  input [7:0] In1;
  (* src = "phy_tx_estruct.v:30.22-30.30" *)
  wire [7:0] In1_good;
  (* src = "phy_tx_estruct.v:7.17-7.20" *)
  input [7:0] In2;
  (* src = "phy_tx_estruct.v:30.32-30.40" *)
  wire [7:0] In2_good;
  (* src = "phy_tx_estruct.v:8.17-8.20" *)
  input [7:0] In3;
  (* src = "phy_tx_estruct.v:30.42-30.50" *)
  wire [7:0] In3_good;
  (* src = "phy_tx_estruct.v:9.11-9.14" *)
  input clk;
  (* src = "phy_tx_estruct.v:10.11-10.17" *)
  input clk_2f;
  (* src = "phy_tx_estruct.v:11.11-11.17" *)
  input clk_4f;
  (* src = "phy_tx_estruct.v:15.18-15.37" *)
  output [7:0] data_PSA_estruct;
  (* src = "phy_tx_estruct.v:19.18-19.32" *)
  output [7:0] data_Probador0_estruct;
  (* src = "phy_tx_estruct.v:20.18-20.32" *)
  output [7:0] data_Probador1_estruct;
  (* src = "phy_tx_estruct.v:21.18-21.32" *)
  output [7:0] data_Probador2_estruct;
  (* src = "phy_tx_estruct.v:22.18-22.32" *)
  output [7:0] data_Probador3_estruct;
  (* src = "phy_tx_estruct.v:27.12-27.21" *)
  wire [7:0] out_temp1;
  (* src = "phy_tx_estruct.v:27.23-27.32" *)
  wire [7:0] out_temp2;
  (* src = "phy_tx_estruct.v:13.11-13.24" *)
  input recirculacion_estruct;
  (* src = "phy_tx_estruct.v:14.11-14.16" *)
  input reset;
  (* src = "phy_tx_estruct.v:12.11-12.17" *)
  input valid0;
  (* src = "phy_tx_estruct.v:31.6-31.17" *)
  wire valid0_good;
  (* src = "phy_tx_estruct.v:23.12-23.27" *)
  output valid0_probador_estruct;
  (* src = "phy_tx_estruct.v:12.19-12.25" *)
  input valid1;
  (* src = "phy_tx_estruct.v:31.19-31.30" *)
  wire valid1_good;
  (* src = "phy_tx_estruct.v:23.29-23.44" *)
  output valid1_probador_estruct;
  (* src = "phy_tx_estruct.v:12.27-12.33" *)
  input valid2;
  (* src = "phy_tx_estruct.v:31.32-31.43" *)
  wire valid2_good;
  (* src = "phy_tx_estruct.v:23.46-23.61" *)
  output valid2_probador_estruct;
  (* src = "phy_tx_estruct.v:12.35-12.41" *)
  input valid3;
  (* src = "phy_tx_estruct.v:31.45-31.56" *)
  wire valid3_good;
  (* src = "phy_tx_estruct.v:23.63-23.78" *)
  output valid3_probador_estruct;
  (* src = "phy_tx_estruct.v:16.12-16.32" *)
  output valid_PSA_estruct;
  (* src = "phy_tx_estruct.v:28.6-28.17" *)
  wire valid_out_1;
  (* src = "phy_tx_estruct.v:28.19-28.30" *)
  wire valid_out_2;
  (* module_not_derived = 32'd1 *)
  (* src = "phy_tx_estruct.v:79.14-88.2" *)
  Mux2x1_8Bits_estruct MUX2x1_1 (
    .In0(In1_good),
    .In1(In0_good),
    .clk(clk_2f),
    .data_out(out_temp1),
    .outValid(valid_out_1),
    .reset(reset),
    .valid0(valid1_good),
    .valid1(valid0_good)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "phy_tx_estruct.v:90.14-99.2" *)
  Mux2x1_8Bits_estruct MUX2x1_2 (
    .In0(In3_good),
    .In1(In2_good),
    .clk(clk_2f),
    .data_out(out_temp2),
    .outValid(valid_out_2),
    .reset(reset),
    .valid0(valid3_good),
    .valid1(valid2_good)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "phy_tx_estruct.v:106.14-115.2" *)
  Mux2x1_8Bits_estruct MUX2x1_3 (
    .In0(out_temp2),
    .In1(out_temp1),
    .clk(clk_4f),
    .data_out(data_PSA_estruct),
    .outValid(valid_PSA_estruct),
    .reset(reset),
    .valid0(valid_out_2),
    .valid1(valid_out_1)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "phy_tx_estruct.v:39.15-68.2" *)
  Recirculacion_estruct Recirculacion_testbench (
    .In0(In0),
    .In1(In1),
    .In2(In2),
    .In3(In3),
    .clk(clk),
    .data_Probador0_estruct(data_Probador0_estruct),
    .data_Probador1_estruct(data_Probador1_estruct),
    .data_Probador2_estruct(data_Probador2_estruct),
    .data_Probador3_estruct(data_Probador3_estruct),
    .data_mux0(In0_good),
    .data_mux1(In1_good),
    .data_mux2(In2_good),
    .data_mux3(In3_good),
    .recirculacion_estruct(recirculacion_estruct),
    .reset(reset),
    .valid0(valid0),
    .valid0_mux(valid0_good),
    .valid0_probador_estruct(valid0_probador_estruct),
    .valid1(valid1),
    .valid1_mux(valid1_good),
    .valid1_probador_estruct(valid1_probador_estruct),
    .valid2(valid2),
    .valid2_mux(valid2_good),
    .valid2_probador_estruct(valid2_probador_estruct),
    .valid3(valid3),
    .valid3_mux(valid3_good),
    .valid3_probador_estruct(valid3_probador_estruct)
  );
endmodule
