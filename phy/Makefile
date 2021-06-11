all: domake1 domake2 execute sim gtkwave

domake1:
	make -f Makefilerx

domake2:
	make -f Makefiletx

execute: BancoPruebas_phy.v
	iverilog -o BancoPruebas_phy.vpp BancoPruebas_phy.v

sim: BancoPruebas_phy.vpp
	vvp BancoPruebas_phy.vpp
	
gtkwave: phy.vcd
	gtkwave phy.vcd
