/* Generated by Yosys 0.9+4052 (git sha1 44520808, gcc 9.3.0-17ubuntu1~20.04 -fPIC -Os) */

(* top =  1  *)
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
    .A(In1[7]),
    .Y(_080_)
  );
  NOT _156_ (
    .A(In1[6]),
    .Y(_081_)
  );
  NOT _157_ (
    .A(In1[5]),
    .Y(_082_)
  );
  NOT _158_ (
    .A(In1[4]),
    .Y(_083_)
  );
  NOT _159_ (
    .A(In1[3]),
    .Y(_084_)
  );
  NOT _160_ (
    .A(In1[2]),
    .Y(_085_)
  );
  NOT _161_ (
    .A(In1[1]),
    .Y(_086_)
  );
  NOT _162_ (
    .A(In1[0]),
    .Y(_087_)
  );
  NOT _163_ (
    .A(valid1),
    .Y(_088_)
  );
  NOT _164_ (
    .A(valid2),
    .Y(_089_)
  );
  NOT _165_ (
    .A(In0[7]),
    .Y(_090_)
  );
  NOT _166_ (
    .A(In0[6]),
    .Y(_091_)
  );
  NOT _167_ (
    .A(In0[5]),
    .Y(_092_)
  );
  NOT _168_ (
    .A(In0[4]),
    .Y(_093_)
  );
  NOT _169_ (
    .A(In0[3]),
    .Y(_094_)
  );
  NOT _170_ (
    .A(In0[2]),
    .Y(_095_)
  );
  NOT _171_ (
    .A(In0[1]),
    .Y(_096_)
  );
  NOT _172_ (
    .A(In0[0]),
    .Y(_097_)
  );
  NOT _173_ (
    .A(valid0),
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
    .A(valid3),
    .B(_110_),
    .Y(_111_)
  );
  NOT _195_ (
    .A(_111_),
    .Y(_062_)
  );
  NOR _196_ (
    .A(_080_),
    .B(_109_),
    .Y(_061_)
  );
  NOR _197_ (
    .A(_081_),
    .B(_109_),
    .Y(_060_)
  );
  NOR _198_ (
    .A(_082_),
    .B(_109_),
    .Y(_059_)
  );
  NOR _199_ (
    .A(_083_),
    .B(_109_),
    .Y(_058_)
  );
  NOR _200_ (
    .A(_084_),
    .B(_109_),
    .Y(_057_)
  );
  NOR _201_ (
    .A(_085_),
    .B(_109_),
    .Y(_056_)
  );
  NOR _202_ (
    .A(_086_),
    .B(_109_),
    .Y(_055_)
  );
  NOR _203_ (
    .A(_087_),
    .B(_109_),
    .Y(_054_)
  );
  NOR _204_ (
    .A(_088_),
    .B(_109_),
    .Y(_053_)
  );
  NOR _205_ (
    .A(_089_),
    .B(_109_),
    .Y(_052_)
  );
  NAND _206_ (
    .A(In1[7]),
    .B(_110_),
    .Y(_112_)
  );
  NOT _207_ (
    .A(_112_),
    .Y(_051_)
  );
  NAND _208_ (
    .A(In1[6]),
    .B(_110_),
    .Y(_113_)
  );
  NOT _209_ (
    .A(_113_),
    .Y(_050_)
  );
  NAND _210_ (
    .A(In1[5]),
    .B(_110_),
    .Y(_114_)
  );
  NOT _211_ (
    .A(_114_),
    .Y(_049_)
  );
  NAND _212_ (
    .A(In1[4]),
    .B(_110_),
    .Y(_115_)
  );
  NOT _213_ (
    .A(_115_),
    .Y(_048_)
  );
  NAND _214_ (
    .A(In1[3]),
    .B(_110_),
    .Y(_116_)
  );
  NOT _215_ (
    .A(_116_),
    .Y(_047_)
  );
  NAND _216_ (
    .A(In1[2]),
    .B(_110_),
    .Y(_117_)
  );
  NOT _217_ (
    .A(_117_),
    .Y(_046_)
  );
  NAND _218_ (
    .A(In1[1]),
    .B(_110_),
    .Y(_118_)
  );
  NOT _219_ (
    .A(_118_),
    .Y(_045_)
  );
  NAND _220_ (
    .A(In1[0]),
    .B(_110_),
    .Y(_119_)
  );
  NOT _221_ (
    .A(_119_),
    .Y(_044_)
  );
  NOR _222_ (
    .A(_090_),
    .B(_109_),
    .Y(_043_)
  );
  NOR _223_ (
    .A(_091_),
    .B(_109_),
    .Y(_042_)
  );
  NOR _224_ (
    .A(_092_),
    .B(_109_),
    .Y(_041_)
  );
  NOR _225_ (
    .A(_093_),
    .B(_109_),
    .Y(_040_)
  );
  NOR _226_ (
    .A(_094_),
    .B(_109_),
    .Y(_039_)
  );
  NOR _227_ (
    .A(_095_),
    .B(_109_),
    .Y(_038_)
  );
  NOR _228_ (
    .A(_096_),
    .B(_109_),
    .Y(_037_)
  );
  NOR _229_ (
    .A(_097_),
    .B(_109_),
    .Y(_036_)
  );
  NOR _230_ (
    .A(_098_),
    .B(_109_),
    .Y(_035_)
  );
  NAND _231_ (
    .A(valid2),
    .B(_110_),
    .Y(_120_)
  );
  NOT _232_ (
    .A(_120_),
    .Y(_034_)
  );
  NAND _233_ (
    .A(valid1),
    .B(_110_),
    .Y(_121_)
  );
  NOT _234_ (
    .A(_121_),
    .Y(_033_)
  );
  NOR _235_ (
    .A(_099_),
    .B(_109_),
    .Y(_032_)
  );
  NOR _236_ (
    .A(_100_),
    .B(_109_),
    .Y(_031_)
  );
  NOR _237_ (
    .A(_101_),
    .B(_109_),
    .Y(_030_)
  );
  NOR _238_ (
    .A(_102_),
    .B(_109_),
    .Y(_029_)
  );
  NOR _239_ (
    .A(_103_),
    .B(_109_),
    .Y(_028_)
  );
  NOR _240_ (
    .A(_104_),
    .B(_109_),
    .Y(_027_)
  );
  NOR _241_ (
    .A(_105_),
    .B(_109_),
    .Y(_026_)
  );
  NOR _242_ (
    .A(_106_),
    .B(_109_),
    .Y(_025_)
  );
  NAND _243_ (
    .A(In0[7]),
    .B(_110_),
    .Y(_122_)
  );
  NOT _244_ (
    .A(_122_),
    .Y(_024_)
  );
  NAND _245_ (
    .A(In0[6]),
    .B(_110_),
    .Y(_123_)
  );
  NOT _246_ (
    .A(_123_),
    .Y(_023_)
  );
  NAND _247_ (
    .A(In0[5]),
    .B(_110_),
    .Y(_124_)
  );
  NOT _248_ (
    .A(_124_),
    .Y(_022_)
  );
  NAND _249_ (
    .A(In0[4]),
    .B(_110_),
    .Y(_125_)
  );
  NOT _250_ (
    .A(_125_),
    .Y(_021_)
  );
  NAND _251_ (
    .A(In0[3]),
    .B(_110_),
    .Y(_126_)
  );
  NOT _252_ (
    .A(_126_),
    .Y(_020_)
  );
  NAND _253_ (
    .A(In0[2]),
    .B(_110_),
    .Y(_127_)
  );
  NOT _254_ (
    .A(_127_),
    .Y(_019_)
  );
  NAND _255_ (
    .A(In0[1]),
    .B(_110_),
    .Y(_128_)
  );
  NOT _256_ (
    .A(_128_),
    .Y(_018_)
  );
  NAND _257_ (
    .A(In0[0]),
    .B(_110_),
    .Y(_129_)
  );
  NOT _258_ (
    .A(_129_),
    .Y(_017_)
  );
  NAND _259_ (
    .A(In2[7]),
    .B(_110_),
    .Y(_130_)
  );
  NOT _260_ (
    .A(_130_),
    .Y(_016_)
  );
  NAND _261_ (
    .A(In2[6]),
    .B(_110_),
    .Y(_131_)
  );
  NOT _262_ (
    .A(_131_),
    .Y(_015_)
  );
  NAND _263_ (
    .A(In2[5]),
    .B(_110_),
    .Y(_132_)
  );
  NOT _264_ (
    .A(_132_),
    .Y(_014_)
  );
  NAND _265_ (
    .A(In2[4]),
    .B(_110_),
    .Y(_133_)
  );
  NOT _266_ (
    .A(_133_),
    .Y(_013_)
  );
  NAND _267_ (
    .A(In2[3]),
    .B(_110_),
    .Y(_134_)
  );
  NOT _268_ (
    .A(_134_),
    .Y(_012_)
  );
  NAND _269_ (
    .A(In2[2]),
    .B(_110_),
    .Y(_135_)
  );
  NOT _270_ (
    .A(_135_),
    .Y(_011_)
  );
  NAND _271_ (
    .A(In2[1]),
    .B(_110_),
    .Y(_136_)
  );
  NOT _272_ (
    .A(_136_),
    .Y(_010_)
  );
  NAND _273_ (
    .A(In2[0]),
    .B(_110_),
    .Y(_137_)
  );
  NOT _274_ (
    .A(_137_),
    .Y(_009_)
  );
  NAND _275_ (
    .A(valid0),
    .B(_110_),
    .Y(_138_)
  );
  NOT _276_ (
    .A(_138_),
    .Y(_008_)
  );
  NAND _277_ (
    .A(In3[7]),
    .B(_110_),
    .Y(_139_)
  );
  NOT _278_ (
    .A(_139_),
    .Y(_007_)
  );
  NAND _279_ (
    .A(In3[6]),
    .B(_110_),
    .Y(_140_)
  );
  NOT _280_ (
    .A(_140_),
    .Y(_006_)
  );
  NAND _281_ (
    .A(In3[5]),
    .B(_110_),
    .Y(_141_)
  );
  NOT _282_ (
    .A(_141_),
    .Y(_005_)
  );
  NAND _283_ (
    .A(In3[4]),
    .B(_110_),
    .Y(_142_)
  );
  NOT _284_ (
    .A(_142_),
    .Y(_004_)
  );
  NAND _285_ (
    .A(In3[3]),
    .B(_110_),
    .Y(_143_)
  );
  NOT _286_ (
    .A(_143_),
    .Y(_003_)
  );
  NAND _287_ (
    .A(In3[2]),
    .B(_110_),
    .Y(_144_)
  );
  NOT _288_ (
    .A(_144_),
    .Y(_002_)
  );
  NAND _289_ (
    .A(In3[1]),
    .B(_110_),
    .Y(_145_)
  );
  NOT _290_ (
    .A(_145_),
    .Y(_001_)
  );
  NAND _291_ (
    .A(In3[0]),
    .B(_110_),
    .Y(_146_)
  );
  NOT _292_ (
    .A(_146_),
    .Y(_000_)
  );
  NOR _293_ (
    .A(_107_),
    .B(_109_),
    .Y(_071_)
  );
  (* src = "Recirculacion_estruct.v:99.1-122.4" *)
  DFF _294_ (
    .C(clk),
    .D(_000_),
    .Q(data_Probador3_estruct[0])
  );
  (* src = "Recirculacion_estruct.v:99.1-122.4" *)
  DFF _295_ (
    .C(clk),
    .D(_001_),
    .Q(data_Probador3_estruct[1])
  );
  (* src = "Recirculacion_estruct.v:99.1-122.4" *)
  DFF _296_ (
    .C(clk),
    .D(_002_),
    .Q(data_Probador3_estruct[2])
  );
  (* src = "Recirculacion_estruct.v:99.1-122.4" *)
  DFF _297_ (
    .C(clk),
    .D(_003_),
    .Q(data_Probador3_estruct[3])
  );
  (* src = "Recirculacion_estruct.v:99.1-122.4" *)
  DFF _298_ (
    .C(clk),
    .D(_004_),
    .Q(data_Probador3_estruct[4])
  );
  (* src = "Recirculacion_estruct.v:99.1-122.4" *)
  DFF _299_ (
    .C(clk),
    .D(_005_),
    .Q(data_Probador3_estruct[5])
  );
  (* src = "Recirculacion_estruct.v:99.1-122.4" *)
  DFF _300_ (
    .C(clk),
    .D(_006_),
    .Q(data_Probador3_estruct[6])
  );
  (* src = "Recirculacion_estruct.v:99.1-122.4" *)
  DFF _301_ (
    .C(clk),
    .D(_007_),
    .Q(data_Probador3_estruct[7])
  );
  (* src = "Recirculacion_estruct.v:20.1-43.4" *)
  DFF _302_ (
    .C(clk),
    .D(_008_),
    .Q(valid0_probador_estruct)
  );
  (* src = "Recirculacion_estruct.v:73.1-96.4" *)
  DFF _303_ (
    .C(clk),
    .D(_009_),
    .Q(data_Probador2_estruct[0])
  );
  (* src = "Recirculacion_estruct.v:73.1-96.4" *)
  DFF _304_ (
    .C(clk),
    .D(_010_),
    .Q(data_Probador2_estruct[1])
  );
  (* src = "Recirculacion_estruct.v:73.1-96.4" *)
  DFF _305_ (
    .C(clk),
    .D(_011_),
    .Q(data_Probador2_estruct[2])
  );
  (* src = "Recirculacion_estruct.v:73.1-96.4" *)
  DFF _306_ (
    .C(clk),
    .D(_012_),
    .Q(data_Probador2_estruct[3])
  );
  (* src = "Recirculacion_estruct.v:73.1-96.4" *)
  DFF _307_ (
    .C(clk),
    .D(_013_),
    .Q(data_Probador2_estruct[4])
  );
  (* src = "Recirculacion_estruct.v:73.1-96.4" *)
  DFF _308_ (
    .C(clk),
    .D(_014_),
    .Q(data_Probador2_estruct[5])
  );
  (* src = "Recirculacion_estruct.v:73.1-96.4" *)
  DFF _309_ (
    .C(clk),
    .D(_015_),
    .Q(data_Probador2_estruct[6])
  );
  (* src = "Recirculacion_estruct.v:73.1-96.4" *)
  DFF _310_ (
    .C(clk),
    .D(_016_),
    .Q(data_Probador2_estruct[7])
  );
  (* src = "Recirculacion_estruct.v:20.1-43.4" *)
  DFF _311_ (
    .C(clk),
    .D(_017_),
    .Q(data_Probador0_estruct[0])
  );
  (* src = "Recirculacion_estruct.v:20.1-43.4" *)
  DFF _312_ (
    .C(clk),
    .D(_018_),
    .Q(data_Probador0_estruct[1])
  );
  (* src = "Recirculacion_estruct.v:20.1-43.4" *)
  DFF _313_ (
    .C(clk),
    .D(_019_),
    .Q(data_Probador0_estruct[2])
  );
  (* src = "Recirculacion_estruct.v:20.1-43.4" *)
  DFF _314_ (
    .C(clk),
    .D(_020_),
    .Q(data_Probador0_estruct[3])
  );
  (* src = "Recirculacion_estruct.v:20.1-43.4" *)
  DFF _315_ (
    .C(clk),
    .D(_021_),
    .Q(data_Probador0_estruct[4])
  );
  (* src = "Recirculacion_estruct.v:20.1-43.4" *)
  DFF _316_ (
    .C(clk),
    .D(_022_),
    .Q(data_Probador0_estruct[5])
  );
  (* src = "Recirculacion_estruct.v:20.1-43.4" *)
  DFF _317_ (
    .C(clk),
    .D(_023_),
    .Q(data_Probador0_estruct[6])
  );
  (* src = "Recirculacion_estruct.v:20.1-43.4" *)
  DFF _318_ (
    .C(clk),
    .D(_024_),
    .Q(data_Probador0_estruct[7])
  );
  (* src = "Recirculacion_estruct.v:99.1-122.4" *)
  DFF _319_ (
    .C(clk),
    .D(_025_),
    .Q(data_mux3[0])
  );
  (* src = "Recirculacion_estruct.v:99.1-122.4" *)
  DFF _320_ (
    .C(clk),
    .D(_026_),
    .Q(data_mux3[1])
  );
  (* src = "Recirculacion_estruct.v:99.1-122.4" *)
  DFF _321_ (
    .C(clk),
    .D(_027_),
    .Q(data_mux3[2])
  );
  (* src = "Recirculacion_estruct.v:99.1-122.4" *)
  DFF _322_ (
    .C(clk),
    .D(_028_),
    .Q(data_mux3[3])
  );
  (* src = "Recirculacion_estruct.v:99.1-122.4" *)
  DFF _323_ (
    .C(clk),
    .D(_029_),
    .Q(data_mux3[4])
  );
  (* src = "Recirculacion_estruct.v:99.1-122.4" *)
  DFF _324_ (
    .C(clk),
    .D(_030_),
    .Q(data_mux3[5])
  );
  (* src = "Recirculacion_estruct.v:99.1-122.4" *)
  DFF _325_ (
    .C(clk),
    .D(_031_),
    .Q(data_mux3[6])
  );
  (* src = "Recirculacion_estruct.v:99.1-122.4" *)
  DFF _326_ (
    .C(clk),
    .D(_032_),
    .Q(data_mux3[7])
  );
  (* src = "Recirculacion_estruct.v:46.1-70.4" *)
  DFF _327_ (
    .C(clk),
    .D(_033_),
    .Q(valid1_probador_estruct)
  );
  (* src = "Recirculacion_estruct.v:73.1-96.4" *)
  DFF _328_ (
    .C(clk),
    .D(_034_),
    .Q(valid2_probador_estruct)
  );
  (* src = "Recirculacion_estruct.v:20.1-43.4" *)
  DFF _329_ (
    .C(clk),
    .D(_035_),
    .Q(valid0_mux)
  );
  (* src = "Recirculacion_estruct.v:20.1-43.4" *)
  DFF _330_ (
    .C(clk),
    .D(_036_),
    .Q(data_mux0[0])
  );
  (* src = "Recirculacion_estruct.v:20.1-43.4" *)
  DFF _331_ (
    .C(clk),
    .D(_037_),
    .Q(data_mux0[1])
  );
  (* src = "Recirculacion_estruct.v:20.1-43.4" *)
  DFF _332_ (
    .C(clk),
    .D(_038_),
    .Q(data_mux0[2])
  );
  (* src = "Recirculacion_estruct.v:20.1-43.4" *)
  DFF _333_ (
    .C(clk),
    .D(_039_),
    .Q(data_mux0[3])
  );
  (* src = "Recirculacion_estruct.v:20.1-43.4" *)
  DFF _334_ (
    .C(clk),
    .D(_040_),
    .Q(data_mux0[4])
  );
  (* src = "Recirculacion_estruct.v:20.1-43.4" *)
  DFF _335_ (
    .C(clk),
    .D(_041_),
    .Q(data_mux0[5])
  );
  (* src = "Recirculacion_estruct.v:20.1-43.4" *)
  DFF _336_ (
    .C(clk),
    .D(_042_),
    .Q(data_mux0[6])
  );
  (* src = "Recirculacion_estruct.v:20.1-43.4" *)
  DFF _337_ (
    .C(clk),
    .D(_043_),
    .Q(data_mux0[7])
  );
  (* src = "Recirculacion_estruct.v:46.1-70.4" *)
  DFF _338_ (
    .C(clk),
    .D(_044_),
    .Q(data_Probador1_estruct[0])
  );
  (* src = "Recirculacion_estruct.v:46.1-70.4" *)
  DFF _339_ (
    .C(clk),
    .D(_045_),
    .Q(data_Probador1_estruct[1])
  );
  (* src = "Recirculacion_estruct.v:46.1-70.4" *)
  DFF _340_ (
    .C(clk),
    .D(_046_),
    .Q(data_Probador1_estruct[2])
  );
  (* src = "Recirculacion_estruct.v:46.1-70.4" *)
  DFF _341_ (
    .C(clk),
    .D(_047_),
    .Q(data_Probador1_estruct[3])
  );
  (* src = "Recirculacion_estruct.v:46.1-70.4" *)
  DFF _342_ (
    .C(clk),
    .D(_048_),
    .Q(data_Probador1_estruct[4])
  );
  (* src = "Recirculacion_estruct.v:46.1-70.4" *)
  DFF _343_ (
    .C(clk),
    .D(_049_),
    .Q(data_Probador1_estruct[5])
  );
  (* src = "Recirculacion_estruct.v:46.1-70.4" *)
  DFF _344_ (
    .C(clk),
    .D(_050_),
    .Q(data_Probador1_estruct[6])
  );
  (* src = "Recirculacion_estruct.v:46.1-70.4" *)
  DFF _345_ (
    .C(clk),
    .D(_051_),
    .Q(data_Probador1_estruct[7])
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
  (* src = "Recirculacion_estruct.v:99.1-122.4" *)
  DFF _356_ (
    .C(clk),
    .D(_062_),
    .Q(valid3_probador_estruct)
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
