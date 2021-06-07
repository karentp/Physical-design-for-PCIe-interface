all: sintesis autoinst execute sim gtkwave

sintesis:
	yosys -s ParaleloSerial_verde.ys

	sed -i 's/ParaleloSerial_verde/ParaleloSerial_verde_estruct/' ./ParaleloSerial_verde_estruct.v

	sed -i 's/data_out/data_out_estruct/' ./ParaleloSerial_verde_estruct.v

autoinst:
	emacs --batch  BancoPruebas_ParaleloSerial_verde.v  -f verilog-batch-delete-auto
	emacs --batch  BancoPruebas_ParaleloSerial_verde.v  -f verilog-batch-inject-auto

execute: BancoPruebas_ParaleloSerial_verde.v
	iverilog -o BancoPruebas_ParaleloSerial_verde.vpp BancoPruebas_ParaleloSerial_verde.v

sim: BancoPruebas_ParaleloSerial_verde.vpp
	vvp BancoPruebas_ParaleloSerial_verde.vpp
	
gtkwave: ParaleloSerial_verde.vcd
	gtkwave ParaleloSerial_verde.vcd
