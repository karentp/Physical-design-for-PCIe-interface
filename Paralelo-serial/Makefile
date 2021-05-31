all: autoinst execute sim gtkwave

sintesis:
	

autoinst:
	emacs --batch  BancoPruebas_ParaleloSerial.v  -f verilog-batch-delete-auto
	emacs --batch  BancoPruebas_ParaleloSerial.v  -f verilog-batch-inject-auto

execute: BancoPruebas_ParaleloSerial.v
	iverilog -o BancoPruebas_ParaleloSerial.vpp BancoPruebas_ParaleloSerial.v

sim: BancoPruebas_ParaleloSerial.vpp
	vvp BancoPruebas_ParaleloSerial.vpp
	
gtkwave: ParaleloSerial.vcd
	gtkwave ParaleloSerial.vcd
