all: sintesis_1 sintesis_2 sintesis_3 sintesis_4 autoinst execute sim gtkwave

sintesis_1: Demux_1x4_8Bits.ys
	yosys Demux_1x2_8Bits.ys
	sed -i 's/Demux_1x2_8Bits/Demux_1x2_8Bits_estructural/' Demux_1x2_8Bits_estructural.v
	sed -i 's/data_out0_conductual/data_out0_estructural/' Demux_1x2_8Bits_estructural.v
	sed -i 's/data_out1_conductual/data_out1_estructural/' Demux_1x2_8Bits_estructural.v
	sed -i 's/outValid0_conductual/outValid0_estructural/' Demux_1x2_8Bits_estructural.v
	sed -i 's/outValid1_conductual/outValid1_estructural/' Demux_1x2_8Bits_estructural.v
	




	yosys Demux_1x4_8Bits.ys
	sed -i 's/Demux_1x2_8Bits/Demux_1x2_8Bits_estructural/' Demux_1x4_8Bits_estructural.v
	sed -i 's/Demux_1x4_8Bits/Demux_1x4_8Bits_estructural/' Demux_1x4_8Bits_estructural.v
	
	sed -i 's/data2send_to_LDMX/data2send_to_LDMX_estruct/' Demux_1x4_8Bits_estructural.v
	sed -i 's/valid_out_to_LDMX/valid_out_to_LDMX_estruct/' Demux_1x4_8Bits_estructural.v


	sed -i 's/data_out0_conductual/data_out0_estructural/' Demux_1x4_8Bits_estructural.v
	sed -i 's/data_out1_conductual/data_out1_estructural/' Demux_1x4_8Bits_estructural.v
	sed -i 's/data_out2_conductual/data_out2_estructural/' Demux_1x4_8Bits_estructural.v
	sed -i 's/data_out3_conductual/data_out3_estructural/' Demux_1x4_8Bits_estructural.v
	sed -i 's/(data_out0_conductual)/(data_out0_estructural)/' Demux_1x4_8Bits_estructural.v
	sed -i 's/(data_out1_conductual)/(data_out1_estructural)/' Demux_1x4_8Bits_estructural.v
	
	sed -i 's/outValid0_conductual/outValid0_estructural/' Demux_1x4_8Bits_estructural.v
	sed -i 's/outValid1_conductual/outValid1_estructural/' Demux_1x4_8Bits_estructural.v
	sed -i 's/outValid2_conductual/outValid2_estructural/' Demux_1x4_8Bits_estructural.v
	sed -i 's/outValid3_conductual/outValid3_estructural/' Demux_1x4_8Bits_estructural.v
	sed -i 's/(outValid0_conductual)/(outValid0_estructural)/' Demux_1x4_8Bits_estructural.v
	sed -i 's/(outValid1_conductual)/(outValid1_estructural)/' Demux_1x4_8Bits_estructural.v

sintesis_2:
	yosys -s SerialParalelo_verde.ys
	sed -i 's/SerialParalelo_verde/SerialParalelo_verde_estruct/g' ./SerialParalelo_verde_estruct.v
	sed -i 's/data_out/data_out_estruct/g' ./SerialParalelo_verde_estruct.v
	sed -i 's/active/active_estruct/g' ./SerialParalelo_verde_estruct.v
	sed -i 's/data2send_to_LDMX/data2send_to_LDMX_estruct/g' ./SerialParalelo_verde_estruct.v
	sed -i 's/valid_out_to_LDMX/valid_out_to_LDMX_estruct/g' ./SerialParalelo_verde_estruct.v

sintesis_3:
	yosys -s ParaleloSerial_verde.ys

	sed -i 's/ParaleloSerial_verde/ParaleloSerial_verde_estruct/' ./ParaleloSerial_verde_estruct.v

	sed -i 's/data_out/data_out_estruct/' ./ParaleloSerial_verde_estruct.v

sintesis_4:
	yosys -s phy-rx.ys

autoinst:
	emacs --batch  BancoPrueba_Phy_rx.v  -f verilog-batch-delete-auto
	emacs --batch  BancoPrueba_Phy_rx.v  -f verilog-batch-inject-auto

execute: BancoPrueba_Phy_rx.v
	iverilog -o BancoPrueba_Phy_rx.vpp BancoPrueba_Phy_rx.v

sim: BancoPrueba_Phy_rx.vpp
	vvp BancoPrueba_Phy_rx.vpp
	
gtkwave: phy_rx.vcd
	gtkwave phy_rx.vcd
