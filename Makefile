DEMUX1x2CONDUCTUAL = Demux_1x2_8bits.v
DEMUX1x4CONDUCTUAL = Demux_1x4_8bits.v
YS1x4 = sintesisdemux1x4.ys
YS1x2 = sintesisdemux1x2.ys
BANCODEMUX1X2  = BancoPruebaDemux1x2_8Bits.v
BANCODEMUX1X4  = BancoPruebaDemux1x4_8Bits.v


all: demux1x4


sintesis_demux1x2: $(YS41x2)
	@echo ----------------------------------
	@echo Corriendo Sintesis Completa para el DEMUX 1x4 de 8 bits: 
	@echo ----------------------------------
	yosys $(YS1x2)
	@echo ----------------------------------
	@echo Cambiando nombre al module para evitar problemas:
	@echo ----------------------------------
	sed -i 's/Demux_1x2_8Bits/ Demux_1x2_8Bits_estructural/'  Demux_1x2_8Bits_estructural.v
	sed -i 's/data_out0/data_out0_estructural/' Demux_1x2_8Bits_estructural.v
	sed -i 's/data_out1/data_out1_estructural/' Demux_1x2_8Bits_estructural.v
	sed -i 's/outValid0/outValid0_estructural/' Demux_1x2_8Bits_estructural.v
	sed -i 's/outValid1/outValid1_estructural/' Demux_1x2_8Bits_estructural.v

sintesis_demux1x4: $(YS41x4)
	@echo ----------------------------------
	@echo Corriendo Sintesis Completa para el DEMUX 1x4 de 8 bits: 
	@echo ----------------------------------
	yosys $(YS1x4)
	@echo ----------------------------------
	@echo Cambiando nombre al module para evitar problemas:
	@echo ----------------------------------
	sed -i 's/Demux_1x4_8Bits/ Demux_1x4_8Bits_estructural/'  Demux_1x4_8Bits_estructural.v
	sed -i 's/data_out0/data_out0_estructural/' Demux_1x4_8Bits_estructural.v
	sed -i 's/data_out1/data_out1_estructural/' Demux_1x4_8Bits_estructural.v
	sed -i 's/data_out2/data_out2_estructural/' Demux_1x4_8Bits_estructural.v
	sed -i 's/data_out3/data_out3_estructural/' Demux_1x4_8Bits_estructural.v
	sed -i 's/outValid0/outValid0_estructural/' Demux_1x4_8Bits_estructural.v
	sed -i 's/outValid1/outValid1_estructural/' Demux_1x4_8Bits_estructural.v
	sed -i 's/outValid2/outValid2_estructural/' Demux_1x4_8Bits_estructural.v
	sed -i 's/outValid3/outValid3_estructural/' Demux_1x4_8Bits_estructural.v


	sed -i 's/Demux_1x2_8Bits/Demux_1x2_8Bits_inst/' Demux_1x4_8Bits_estructural.v
	

prueba_demux1x2: $(BANCODEMUX1X2) cmos_cells.v 
	@echo ----------------------------------
	@echo Corriendo pruebas del estructural y conductual 1x4 de 8 bits:
	@echo ----------------------------------
	iverilog -o prueba_demux1x2.vvp $(BANCODEMUX1X2) cmos_cells.v  Demux_1x2_8Bits_estructural.v
	emacs --batch  $(BANCODEMUX1X4) -f verilog-batch-auto 
	iverilog -o prueba_demux1x4.vvp $(BANCODEMUX1X2) cmos_cells.v  Demux_1x2_8Bits_estructural.v
	vvp prueba_demux1x2.vvp

prueba_demux1x4: $(BANCODEMUX1X4) cmos_cells.v 
	@echo ----------------------------------
	@echo Corriendo pruebas del estructural y conductual 1x4 de 8 bits:
	@echo ----------------------------------
	iverilog -o prueba_demux1x4.vvp $(BANCODEMUX1X4) cmos_cells.v Demux_1x2_8bits.v Demux_1x4_8Bits_estructural.v
	emacs --batch  $(BANCODEMUX1X4) -f verilog-batch-auto 
	iverilog -o prueba_demux1x4.vvp $(BANCODEMUX1X4) cmos_cells.v Demux_1x2_8bits.v Demux_1x4_8Bits_estructural.v
	vvp prueba_demux1x4.vvp


demux1x2:
	@echo Sintesis, pruebas y gtkwave del DEMUX 1x2 de 8 bits:
	@echo ----------------------------------
	$(MAKE) sintesis_demux1x2
	$(MAKE) prueba_demux1x2
	gtkwave Pruebademux1x2_8Bits.vcd

demux1x4:
	@echo Sintesis, pruebas y gtkwave del DEMUX 1x4 de 8 bits:
	@echo ----------------------------------
	$(MAKE) sintesis_demux1x4
	$(MAKE) prueba_demux1x4
	gtkwave Pruebademux1x4_8Bits.vcd