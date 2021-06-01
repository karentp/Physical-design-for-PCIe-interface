DEMUX1x2CONDUCTUAL = Demux_1x2_8bits.v
DEMUX1x4CONDUCTUAL = Demux_1x4_8bits.v
YS1x4 = sintesisdemux1x4.ys
YS1x2 = sintesisdemux1x2.ys
BANCODEMUX1X2  = BancoPruebaDemux1x2_8Bits.v
BANCODEMUX1X4  = BancoPruebaDemux1x4_8Bits.v

all: demux1x4


# sintesis_demux1x2: $(YS41x2)
# 	@echo ----------------------------------
# 	@echo Corriendo Sintesis Completa para el DEMUX 1x4 de 8 bits: 
# 	@echo ----------------------------------
# 	yosys $(YS1x2)
# 	@echo ----------------------------------
# 	@echo Cambiando nombre al module para evitar problemas:
# 	@echo ----------------------------------
# 	sed -i 's/Demux_1x2_8Bits/ Demux_1x2_8Bits_estructural/'  Demux_1x2_8Bits_estructural.v
# 	sed -i 's/data_out0/data_out0_estructural/' Demux_1x2_8Bits_estructural.v
# 	sed -i 's/data_out1/data_out1_estructural/' Demux_1x2_8Bits_estructural.v
# 	sed -i 's/outValid0/outValid0_estructural/' Demux_1x2_8Bits_estructural.v
# 	sed -i 's/outValid1/outValid1_estructural/' Demux_1x2_8Bits_estructural.v

sintesis_demux1x4: Demux_1x4_8Bits.ys
	yosys Demux_1x2_8Bits.ys
	sed -i 's/Demux_1x2_8Bits/Demux_1x2_8Bits_estructural/' Demux_1x2_8Bits_estructural.v
	sed -i 's/data_out0_conductual/data_out0_estructural/' Demux_1x2_8Bits_estructural.v
	sed -i 's/data_out1_conductual/data_out1_estructural/' Demux_1x2_8Bits_estructural.v
	sed -i 's/outValid0_conductual/outValid0_estructural/' Demux_1x2_8Bits_estructural.v
	sed -i 's/outValid1_conductual/outValid1_estructural/' Demux_1x2_8Bits_estructural.v

	yosys Demux_1x4_8Bits.ys

	sed -i 's/Demux_1x2_8Bits/Demux_1x2_8Bits_estructural/' Demux_1x4_8Bits_estructural.v
	sed -i 's/Demux_1x4_8Bits/Demux_1x4_8Bits_estructural/' Demux_1x4_8Bits_estructural.v
	
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

autoinst:
	emacs --batch  BancoPruebaDemux1x4_8Bits.v  -f verilog-batch-delete-auto
	emacs --batch  BancoPruebaDemux1x4_8Bits.v  -f verilog-batch-inject-auto



prueba_demux1x4: BancoPruebaDemux1x4_8Bits.v cmos_cells.v 
	iverilog -o BancoPruebaDemux1x4_8Bits.vvp BancoPruebaDemux1x4_8Bits.v cmos_cells.v Demux_1x2_8bits.v Demux_1x4_8Bits_estructural.v
	vvp BancoPruebaDemux1x4_8Bits.vvp



demux1x4:
	@echo Sintesis, pruebas y gtkwave del DEMUX 1x4 de 8 bits:
	@echo ----------------------------------
	$(MAKE) sintesis_demux1x4
	$(MAKE) autoinst
	$(MAKE) prueba_demux1x4
	gtkwave Demux1x4_8Bits.vcd &
