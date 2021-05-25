all: Autoinst BancoPruebas TruthTable GtkWave


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