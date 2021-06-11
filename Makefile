all: Autoinst BancoPruebas TruthTable GtkWave

phy_tx: Auto_phy_tx

Auto_phy_tx: BancoPruebas_phy_tx.v
	emacs --batch  BancoPruebas_phy_tx.v  -f verilog-batch-delete-auto
	emacs --batch  BancoPruebas_phy_tx.v  -f verilog-batch-inject-auto
	iverilog -o BancoPruebas_phy_tx.vvp BancoPruebas_phy_tx.v 
	vvp BancoPruebas_phy_tx.vvp
	gtkwave phy_tx.vcd &


TruthTable: 
	vvp BancoPrueba_conductual.vvp
	vvp BancoPruebaDemux.vvp

Autoinst: BancoPrueba_conductual.v
	emacs --batch  BancoPrueba_conductual.v  -f verilog-batch-delete-auto
	emacs --batch  BancoPrueba_conductual.v  -f verilog-batch-inject-auto
	emacs --batch  BancoPruebaDemux.v  -f verilog-batch-delete-auto
	emacs --batch  BancoPruebaDemux.v  -f verilog-batch-inject-auto
	
	echo ******Done Autoinst******

# Compilación banco de pruebas
BancoPruebas: BancoPrueba_conductual.v
	iverilog -o BancoPrueba_conductual.vvp BancoPrueba_conductual.v 
	iverilog -o BancoPruebaDemux.vvp BancoPruebaDemux.v
	echo ******Banco de pruebas compile******


GtkWave: 
	gtkwave mux_memoria_8bits.vcd &
	gtkwave PruebasDemux.vcd &