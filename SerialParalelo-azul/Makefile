all: sintesis autoinst execute sim gtkwave

sintesis:
	yosys -s ParaleloSerial_IDL.ys
	sed -i 's/IDL/IDL_estruct/' ./ParaleloSerial_IDL_estruct.v
	sed -i 's/IDL)/IDL_estruct)/' ./ParaleloSerial_IDL_estruct.v


autoinst:
	emacs --batch  BancoPruebas_ParaleloSerial_IDL.v -f verilog-batch-delete-auto
	emacs --batch  BancoPruebas_ParaleloSerial_IDL.v -f verilog-batch-inject-auto

execute: BancoPruebas_ParaleloSerial_IDL.v
	iverilog -o BancoPruebas_ParaleloSerial_IDL.vpp BancoPruebas_ParaleloSerial_IDL.v

sim: BancoPruebas_ParaleloSerial_IDL.vpp
	vvp BancoPruebas_ParaleloSerial_IDL.vpp
	
gtkwave: SerialParalelo_IDL.vcd
	gtkwave SerialParalelo_IDL.vcd
