all: sintesis autoinst execute sim gtkwave

sintesis:
	yosys -s ParaleloSerial_azul.ys

	sed -i 's/ParaleloSerial_azul/ParaleloSerial_azul_estruct/' ./ParaleloSerial_azul_estruct.v

	sed -i 's/data_out/data_out_estruct/' ./ParaleloSerial_azul_estruct.v

autoinst:
	emacs --batch  BancoPruebas_ParaleloSerial_azul.v  -f verilog-batch-delete-auto
	emacs --batch  BancoPruebas_ParaleloSerial_azul.v  -f verilog-batch-inject-auto

execute: BancoPruebas_ParaleloSerial_azul.v
	iverilog -o BancoPruebas_ParaleloSerial_azul.vpp BancoPruebas_ParaleloSerial_azul.v

sim: BancoPruebas_ParaleloSerial_azul.vpp
	vvp BancoPruebas_ParaleloSerial_azul.vpp
	
gtkwave: ParaleloSerial_azul.vcd
	gtkwave ParaleloSerial_azul.vcd
