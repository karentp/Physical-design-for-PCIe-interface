
all: execute sim gtkwave

execute: BancoPruebasSerialParalelo.v
	iverilog -o BancoPruebasSerialParalelo.vpp BancoPruebasSerialParalelo.v

sim: BancoPruebasSerialParalelo.vpp
	vvp BancoPruebasSerialParalelo.vpp
	
gtkwave: SerialParalelo.vcd
	gtkwave SerialParalelo.vcd &