/* Generated by Yosys 0.9+4052 (git sha1 44520808, gcc 9.3.0-17ubuntu1~20.04 -fPIC -Os) */

(* top =  1  *)
(* src = "SerialParalelo_verde_estruct.v:1.1-121.10" *)
module SerialParalelo_verde_estruct(clk_4f, clk_32f, data_in, reset, data2send_to_LDMX_estruct, active_estruct_to_PS, valid_out_to_LDMX_estruct);
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
  (* src = "SerialParalelo_verde_estruct.v:9.15-9.25" *)
  wire [2:0] BC_counter;
  (* src = "SerialParalelo_verde_estruct.v:4.16-4.28" *)
  output active_estruct_to_PS;
  (* src = "SerialParalelo_verde_estruct.v:2.19-2.26" *)
  input clk_32f;
  (* src = "SerialParalelo_verde_estruct.v:2.11-2.17" *)
  input clk_4f;
  (* src = "SerialParalelo_verde_estruct.v:10.15-10.29" *)
  wire [7:0] data2send_temp;
  (* src = "SerialParalelo_verde_estruct.v:3.22-3.39" *)
  output [7:0] data2send_to_LDMX_estruct;
  (* src = "SerialParalelo_verde_estruct.v:2.28-2.35" *)
  input data_in;
  (* src = "SerialParalelo_verde_estruct.v:2.37-2.42" *)
  input reset;
  (* src = "SerialParalelo_verde_estruct.v:8.15-8.23" *)
  wire [2:0] selector;
  (* src = "SerialParalelo_verde_estruct.v:7.9-7.14" *)
  wire temp0;
  (* src = "SerialParalelo_verde_estruct.v:7.15-7.20" *)
  wire temp1;
  (* src = "SerialParalelo_verde_estruct.v:7.21-7.26" *)
  wire temp2;
  (* src = "SerialParalelo_verde_estruct.v:7.27-7.32" *)
  wire temp3;
  (* src = "SerialParalelo_verde_estruct.v:7.33-7.38" *)
  wire temp4;
  (* src = "SerialParalelo_verde_estruct.v:7.39-7.44" *)
  wire temp5;
  (* src = "SerialParalelo_verde_estruct.v:7.45-7.50" *)
  wire temp6;
  (* src = "SerialParalelo_verde_estruct.v:7.51-7.56" *)
  wire temp7;
  (* src = "SerialParalelo_verde_estruct.v:4.30-4.47" *)
  output valid_out_to_LDMX_estruct;
  NOT _135_ (
    .A(reset),
    .Y(_111_)
  );
  NOT _136_ (
    .A(data_in),
    .Y(_112_)
  );
  NOT _137_ (
    .A(temp7),
    .Y(_113_)
  );
  NOT _138_ (
    .A(clk_32f),
    .Y(_006_)
  );
  NOT _139_ (
    .A(temp6),
    .Y(_114_)
  );
  NOT _140_ (
    .A(temp5),
    .Y(_115_)
  );
  NOT _141_ (
    .A(temp4),
    .Y(_116_)
  );
  NOT _142_ (
    .A(temp3),
    .Y(_117_)
  );
  NOT _143_ (
    .A(temp2),
    .Y(_118_)
  );
  NOT _144_ (
    .A(temp1),
    .Y(_119_)
  );
  NOT _145_ (
    .A(temp0),
    .Y(_120_)
  );
  NOT _146_ (
    .A(BC_counter[2]),
    .Y(_121_)
  );
  NOT _147_ (
    .A(BC_counter[1]),
    .Y(_122_)
  );
  NOT _148_ (
    .A(BC_counter[0]),
    .Y(_123_)
  );
  NOT _149_ (
    .A(active_estruct_to_PS),
    .Y(_124_)
  );
  NOT _150_ (
    .A(data2send_temp[7]),
    .Y(_125_)
  );
  NOT _151_ (
    .A(data2send_temp[6]),
    .Y(_126_)
  );
  NOT _152_ (
    .A(data2send_temp[5]),
    .Y(_127_)
  );
  NOT _153_ (
    .A(data2send_temp[4]),
    .Y(_128_)
  );
  NOT _154_ (
    .A(data2send_temp[3]),
    .Y(_129_)
  );
  NOT _155_ (
    .A(data2send_temp[2]),
    .Y(_130_)
  );
  NOT _156_ (
    .A(data2send_temp[1]),
    .Y(_131_)
  );
  NOT _157_ (
    .A(data2send_temp[0]),
    .Y(_132_)
  );
  NOT _158_ (
    .A(selector[2]),
    .Y(_133_)
  );
  NOT _159_ (
    .A(selector[1]),
    .Y(_134_)
  );
  NOT _160_ (
    .A(selector[0]),
    .Y(_040_)
  );
  NAND _161_ (
    .A(selector[1]),
    .B(selector[0]),
    .Y(_041_)
  );
  NOT _162_ (
    .A(_041_),
    .Y(_042_)
  );
  NAND _163_ (
    .A(selector[2]),
    .B(_042_),
    .Y(_043_)
  );
  NOR _164_ (
    .A(_112_),
    .B(_043_),
    .Y(_044_)
  );
  NAND _165_ (
    .A(temp7),
    .B(_043_),
    .Y(_045_)
  );
  NOT _166_ (
    .A(_045_),
    .Y(_046_)
  );
  NOR _167_ (
    .A(_044_),
    .B(_046_),
    .Y(_047_)
  );
  NOR _168_ (
    .A(reset),
    .B(_047_),
    .Y(_039_)
  );
  NOR _169_ (
    .A(_134_),
    .B(selector[0]),
    .Y(_048_)
  );
  NAND _170_ (
    .A(selector[2]),
    .B(_048_),
    .Y(_049_)
  );
  NAND _171_ (
    .A(_114_),
    .B(_049_),
    .Y(_050_)
  );
  NOR _172_ (
    .A(data_in),
    .B(_049_),
    .Y(_051_)
  );
  NAND _173_ (
    .A(_111_),
    .B(_050_),
    .Y(_052_)
  );
  NOR _174_ (
    .A(_051_),
    .B(_052_),
    .Y(_038_)
  );
  NOR _175_ (
    .A(selector[1]),
    .B(_040_),
    .Y(_053_)
  );
  NAND _176_ (
    .A(selector[2]),
    .B(_053_),
    .Y(_054_)
  );
  NAND _177_ (
    .A(_115_),
    .B(_054_),
    .Y(_055_)
  );
  NOR _178_ (
    .A(data_in),
    .B(_054_),
    .Y(_056_)
  );
  NAND _179_ (
    .A(_111_),
    .B(_055_),
    .Y(_057_)
  );
  NOR _180_ (
    .A(_056_),
    .B(_057_),
    .Y(_037_)
  );
  NOR _181_ (
    .A(selector[1]),
    .B(selector[0]),
    .Y(_058_)
  );
  NAND _182_ (
    .A(selector[2]),
    .B(_058_),
    .Y(_059_)
  );
  NAND _183_ (
    .A(_116_),
    .B(_059_),
    .Y(_060_)
  );
  NOR _184_ (
    .A(data_in),
    .B(_059_),
    .Y(_061_)
  );
  NAND _185_ (
    .A(_111_),
    .B(_060_),
    .Y(_062_)
  );
  NOR _186_ (
    .A(_061_),
    .B(_062_),
    .Y(_036_)
  );
  NOR _187_ (
    .A(selector[2]),
    .B(_041_),
    .Y(_063_)
  );
  NOR _188_ (
    .A(temp3),
    .B(_063_),
    .Y(_064_)
  );
  NAND _189_ (
    .A(_112_),
    .B(_063_),
    .Y(_065_)
  );
  NAND _190_ (
    .A(_111_),
    .B(_065_),
    .Y(_066_)
  );
  NOR _191_ (
    .A(_064_),
    .B(_066_),
    .Y(_035_)
  );
  NAND _192_ (
    .A(_133_),
    .B(_048_),
    .Y(_067_)
  );
  NAND _193_ (
    .A(_118_),
    .B(_067_),
    .Y(_068_)
  );
  NOR _194_ (
    .A(data_in),
    .B(_067_),
    .Y(_069_)
  );
  NAND _195_ (
    .A(_111_),
    .B(_068_),
    .Y(_070_)
  );
  NOR _196_ (
    .A(_069_),
    .B(_070_),
    .Y(_034_)
  );
  NAND _197_ (
    .A(_133_),
    .B(_053_),
    .Y(_071_)
  );
  NAND _198_ (
    .A(_119_),
    .B(_071_),
    .Y(_072_)
  );
  NOR _199_ (
    .A(data_in),
    .B(_071_),
    .Y(_073_)
  );
  NAND _200_ (
    .A(_111_),
    .B(_072_),
    .Y(_074_)
  );
  NOR _201_ (
    .A(_073_),
    .B(_074_),
    .Y(_033_)
  );
  NAND _202_ (
    .A(_133_),
    .B(_058_),
    .Y(_075_)
  );
  NAND _203_ (
    .A(_120_),
    .B(_075_),
    .Y(_076_)
  );
  NOR _204_ (
    .A(data_in),
    .B(_075_),
    .Y(_077_)
  );
  NAND _205_ (
    .A(_111_),
    .B(_076_),
    .Y(_078_)
  );
  NOR _206_ (
    .A(_077_),
    .B(_078_),
    .Y(_032_)
  );
  NAND _207_ (
    .A(data2send_temp[3]),
    .B(data2send_temp[2]),
    .Y(_079_)
  );
  NOT _208_ (
    .A(_079_),
    .Y(_080_)
  );
  NOR _209_ (
    .A(data2send_temp[1]),
    .B(data2send_temp[0]),
    .Y(_081_)
  );
  NOT _210_ (
    .A(_081_),
    .Y(_082_)
  );
  NOR _211_ (
    .A(_079_),
    .B(_082_),
    .Y(_083_)
  );
  NAND _212_ (
    .A(_080_),
    .B(_081_),
    .Y(_084_)
  );
  NOR _213_ (
    .A(_125_),
    .B(data2send_temp[6]),
    .Y(_085_)
  );
  NAND _214_ (
    .A(data2send_temp[7]),
    .B(_126_),
    .Y(_086_)
  );
  NAND _215_ (
    .A(data2send_temp[5]),
    .B(data2send_temp[4]),
    .Y(_087_)
  );
  NOT _216_ (
    .A(_087_),
    .Y(_088_)
  );
  NOR _217_ (
    .A(_086_),
    .B(_087_),
    .Y(_089_)
  );
  NAND _218_ (
    .A(_085_),
    .B(_088_),
    .Y(_090_)
  );
  NOR _219_ (
    .A(_084_),
    .B(_090_),
    .Y(_091_)
  );
  NAND _220_ (
    .A(_083_),
    .B(_089_),
    .Y(_092_)
  );
  NOR _221_ (
    .A(_123_),
    .B(_092_),
    .Y(_093_)
  );
  NAND _222_ (
    .A(BC_counter[0]),
    .B(_091_),
    .Y(_094_)
  );
  NOR _223_ (
    .A(_122_),
    .B(_094_),
    .Y(_095_)
  );
  NAND _224_ (
    .A(BC_counter[1]),
    .B(_093_),
    .Y(_096_)
  );
  NOR _225_ (
    .A(reset),
    .B(_121_),
    .Y(_097_)
  );
  NAND _226_ (
    .A(_096_),
    .B(_097_),
    .Y(_098_)
  );
  NOR _227_ (
    .A(reset),
    .B(BC_counter[2]),
    .Y(_099_)
  );
  NAND _228_ (
    .A(_095_),
    .B(_099_),
    .Y(_100_)
  );
  NAND _229_ (
    .A(_098_),
    .B(_100_),
    .Y(_031_)
  );
  NAND _230_ (
    .A(_122_),
    .B(_094_),
    .Y(_101_)
  );
  NAND _231_ (
    .A(_111_),
    .B(_101_),
    .Y(_102_)
  );
  NOR _232_ (
    .A(_095_),
    .B(_102_),
    .Y(_030_)
  );
  NAND _233_ (
    .A(_123_),
    .B(_092_),
    .Y(_103_)
  );
  NAND _234_ (
    .A(_111_),
    .B(_103_),
    .Y(_104_)
  );
  NOR _235_ (
    .A(_093_),
    .B(_104_),
    .Y(_029_)
  );
  NOR _236_ (
    .A(reset),
    .B(_124_),
    .Y(_105_)
  );
  NAND _237_ (
    .A(_111_),
    .B(active_estruct_to_PS),
    .Y(_106_)
  );
  NAND _238_ (
    .A(_100_),
    .B(_106_),
    .Y(_028_)
  );
  NOR _239_ (
    .A(reset),
    .B(_125_),
    .Y(_027_)
  );
  NOR _240_ (
    .A(reset),
    .B(_126_),
    .Y(_026_)
  );
  NOR _241_ (
    .A(reset),
    .B(_127_),
    .Y(_025_)
  );
  NOR _242_ (
    .A(reset),
    .B(_128_),
    .Y(_024_)
  );
  NOR _243_ (
    .A(reset),
    .B(_129_),
    .Y(_023_)
  );
  NOR _244_ (
    .A(reset),
    .B(_130_),
    .Y(_022_)
  );
  NOR _245_ (
    .A(reset),
    .B(_131_),
    .Y(_021_)
  );
  NOR _246_ (
    .A(reset),
    .B(_132_),
    .Y(_020_)
  );
  NOR _247_ (
    .A(selector[2]),
    .B(_042_),
    .Y(_107_)
  );
  NAND _248_ (
    .A(_111_),
    .B(_043_),
    .Y(_108_)
  );
  NOR _249_ (
    .A(_107_),
    .B(_108_),
    .Y(_019_)
  );
  NAND _250_ (
    .A(_111_),
    .B(_041_),
    .Y(_109_)
  );
  NOR _251_ (
    .A(_058_),
    .B(_109_),
    .Y(_018_)
  );
  NAND _252_ (
    .A(_111_),
    .B(selector[0]),
    .Y(_017_)
  );
  NOR _253_ (
    .A(reset),
    .B(_120_),
    .Y(_016_)
  );
  NOR _254_ (
    .A(reset),
    .B(_119_),
    .Y(_015_)
  );
  NOR _255_ (
    .A(reset),
    .B(_118_),
    .Y(_014_)
  );
  NOR _256_ (
    .A(reset),
    .B(_117_),
    .Y(_013_)
  );
  NOR _257_ (
    .A(reset),
    .B(_116_),
    .Y(_012_)
  );
  NOR _258_ (
    .A(reset),
    .B(_115_),
    .Y(_011_)
  );
  NOR _259_ (
    .A(reset),
    .B(_114_),
    .Y(_010_)
  );
  NOR _260_ (
    .A(reset),
    .B(_113_),
    .Y(_009_)
  );
  NAND _261_ (
    .A(_092_),
    .B(_105_),
    .Y(_110_)
  );
  NOT _262_ (
    .A(_110_),
    .Y(_008_)
  );
  NOT _263_ (
    .A(clk_32f),
    .Y(_005_)
  );
  NOT _264_ (
    .A(clk_32f),
    .Y(_004_)
  );
  NOT _265_ (
    .A(clk_32f),
    .Y(_003_)
  );
  NOT _266_ (
    .A(clk_32f),
    .Y(_002_)
  );
  NOT _267_ (
    .A(clk_32f),
    .Y(_001_)
  );
  NOT _268_ (
    .A(clk_32f),
    .Y(_000_)
  );
  NOT _269_ (
    .A(clk_32f),
    .Y(_007_)
  );
  (* src = "SerialParalelo_verde_estruct.v:77.1-118.4" *)
  DFF _270_ (
    .C(clk_4f),
    .D(_008_),
    .Q(valid_out_to_LDMX_estruct)
  );
  (* src = "SerialParalelo_verde_estruct.v:77.1-118.4" *)
  DFF _271_ (
    .C(clk_4f),
    .D(_009_),
    .Q(data2send_temp[0])
  );
  (* src = "SerialParalelo_verde_estruct.v:77.1-118.4" *)
  DFF _272_ (
    .C(clk_4f),
    .D(_010_),
    .Q(data2send_temp[1])
  );
  (* src = "SerialParalelo_verde_estruct.v:77.1-118.4" *)
  DFF _273_ (
    .C(clk_4f),
    .D(_011_),
    .Q(data2send_temp[2])
  );
  (* src = "SerialParalelo_verde_estruct.v:77.1-118.4" *)
  DFF _274_ (
    .C(clk_4f),
    .D(_012_),
    .Q(data2send_temp[3])
  );
  (* src = "SerialParalelo_verde_estruct.v:77.1-118.4" *)
  DFF _275_ (
    .C(clk_4f),
    .D(_013_),
    .Q(data2send_temp[4])
  );
  (* src = "SerialParalelo_verde_estruct.v:77.1-118.4" *)
  DFF _276_ (
    .C(clk_4f),
    .D(_014_),
    .Q(data2send_temp[5])
  );
  (* src = "SerialParalelo_verde_estruct.v:77.1-118.4" *)
  DFF _277_ (
    .C(clk_4f),
    .D(_015_),
    .Q(data2send_temp[6])
  );
  (* src = "SerialParalelo_verde_estruct.v:77.1-118.4" *)
  DFF _278_ (
    .C(clk_4f),
    .D(_016_),
    .Q(data2send_temp[7])
  );
  (* src = "SerialParalelo_verde_estruct.v:65.1-72.4" *)
  DFF _279_ (
    .C(clk_32f),
    .D(_017_),
    .Q(selector[0])
  );
  (* src = "SerialParalelo_verde_estruct.v:65.1-72.4" *)
  DFF _280_ (
    .C(clk_32f),
    .D(_018_),
    .Q(selector[1])
  );
  (* src = "SerialParalelo_verde_estruct.v:65.1-72.4" *)
  DFF _281_ (
    .C(clk_32f),
    .D(_019_),
    .Q(selector[2])
  );
  (* src = "SerialParalelo_verde_estruct.v:77.1-118.4" *)
  DFF _282_ (
    .C(clk_4f),
    .D(_020_),
    .Q(data2send_to_LDMX_estruct[0])
  );
  (* src = "SerialParalelo_verde_estruct.v:77.1-118.4" *)
  DFF _283_ (
    .C(clk_4f),
    .D(_021_),
    .Q(data2send_to_LDMX_estruct[1])
  );
  (* src = "SerialParalelo_verde_estruct.v:77.1-118.4" *)
  DFF _284_ (
    .C(clk_4f),
    .D(_022_),
    .Q(data2send_to_LDMX_estruct[2])
  );
  (* src = "SerialParalelo_verde_estruct.v:77.1-118.4" *)
  DFF _285_ (
    .C(clk_4f),
    .D(_023_),
    .Q(data2send_to_LDMX_estruct[3])
  );
  (* src = "SerialParalelo_verde_estruct.v:77.1-118.4" *)
  DFF _286_ (
    .C(clk_4f),
    .D(_024_),
    .Q(data2send_to_LDMX_estruct[4])
  );
  (* src = "SerialParalelo_verde_estruct.v:77.1-118.4" *)
  DFF _287_ (
    .C(clk_4f),
    .D(_025_),
    .Q(data2send_to_LDMX_estruct[5])
  );
  (* src = "SerialParalelo_verde_estruct.v:77.1-118.4" *)
  DFF _288_ (
    .C(clk_4f),
    .D(_026_),
    .Q(data2send_to_LDMX_estruct[6])
  );
  (* src = "SerialParalelo_verde_estruct.v:77.1-118.4" *)
  DFF _289_ (
    .C(clk_4f),
    .D(_027_),
    .Q(data2send_to_LDMX_estruct[7])
  );
  (* src = "SerialParalelo_verde_estruct.v:77.1-118.4" *)
  DFF _290_ (
    .C(clk_4f),
    .D(_028_),
    .Q(active_estruct_to_PS)
  );
  (* src = "SerialParalelo_verde_estruct.v:77.1-118.4" *)
  DFF _291_ (
    .C(clk_4f),
    .D(_029_),
    .Q(BC_counter[0])
  );
  (* src = "SerialParalelo_verde_estruct.v:77.1-118.4" *)
  DFF _292_ (
    .C(clk_4f),
    .D(_030_),
    .Q(BC_counter[1])
  );
  (* src = "SerialParalelo_verde_estruct.v:77.1-118.4" *)
  DFF _293_ (
    .C(clk_4f),
    .D(_031_),
    .Q(BC_counter[2])
  );
  (* src = "SerialParalelo_verde_estruct.v:13.2-61.5" *)
  DFF _294_ (
    .C(_000_),
    .D(_032_),
    .Q(temp0)
  );
  (* src = "SerialParalelo_verde_estruct.v:13.2-61.5" *)
  DFF _295_ (
    .C(_001_),
    .D(_033_),
    .Q(temp1)
  );
  (* src = "SerialParalelo_verde_estruct.v:13.2-61.5" *)
  DFF _296_ (
    .C(_002_),
    .D(_034_),
    .Q(temp2)
  );
  (* src = "SerialParalelo_verde_estruct.v:13.2-61.5" *)
  DFF _297_ (
    .C(_003_),
    .D(_035_),
    .Q(temp3)
  );
  (* src = "SerialParalelo_verde_estruct.v:13.2-61.5" *)
  DFF _298_ (
    .C(_004_),
    .D(_036_),
    .Q(temp4)
  );
  (* src = "SerialParalelo_verde_estruct.v:13.2-61.5" *)
  DFF _299_ (
    .C(_005_),
    .D(_037_),
    .Q(temp5)
  );
  (* src = "SerialParalelo_verde_estruct.v:13.2-61.5" *)
  DFF _300_ (
    .C(_006_),
    .D(_038_),
    .Q(temp6)
  );
  (* src = "SerialParalelo_verde_estruct.v:13.2-61.5" *)
  DFF _301_ (
    .C(_007_),
    .D(_039_),
    .Q(temp7)
  );
endmodule
