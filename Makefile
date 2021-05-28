all: Autoinst BancoPruebas TruthTable GtkWave

phy_tx: Auto_phy_tx

Auto_phy_tx: BancoPruebas_phy_tx.v
	yosys -s Yosys_phy_tx.ys
	sed -i 's/phy_tx/phy_tx_estruct/' ./phy_tx_estruct.v
	sed -i 's/data_out/data_out_estruct/' ./phy_tx_estruct.v
	sed -i 's/(data_out)/(data_out_estruct)/' ./phy_tx_estruct.v
	sed -i 's/Recirculacion/Recirculacion_estruct/' ./phy_tx_estruct.v
	sed -i 's/MUX2x1_1/MUX2x1_1_estruct/' ./phy_tx_estruct.v
	sed -i 's/MUX2x1_2/MUX2x1_2_estruct/' ./phy_tx_estruct.v
	sed -i 's/MUX2x1_3/MUX2x1_3_estruct/' ./phy_tx_estruct.v
	sed -i 's/Recirculacion_testbench/Recirculacion_testbench_estruct/' ./phy_tx_estruct.v
	sed -i 's/Mux2x1_8Bits/Mux2x1_8Bits_estruct/' ./phy_tx_estruct.v
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

Yosys: Yosys_phy_tx.ys
	yosys -s Yosys_phy_tx.ys
	sed -i 's/Mux2x1_8Bits/Mux2x1_8Bits_estruct/' ./phy_tx_estruct.v
	sed -i 's/data_out/data_out_estruct/' ./phy_tx_estruct.v
