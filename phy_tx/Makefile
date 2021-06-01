all: sintesis autoinst execute sim gtkwave

sintesis:
	yosys -s Recirculacion.ys
	sed -i 's/Recirculacion/Recirculacion_estruct/' ./Recirculacion_estruct.v

	yosys -s Mux2x1_8Bits.ys
	sed -i 's/Mux2x1_8Bits/Mux2x1_8Bits_estruct/' ./Mux2x1_8Bits_estruct.v


	yosys -s phy-tx.ys
	sed -i 's/Mux2x1_8Bits/Mux2x1_8Bits_estruct/' ./phy_tx_estruct.v
	sed -i 's/Recirculacion/Recirculacion_estruct/' ./phy_tx_estruct.v
	sed -i 's/phy_tx/phy_tx_estruct/' ./phy_tx_estruct.v
	sed -i 's/data_out_conductual/data_out_estruct/' ./phy_tx_estruct.v
	sed -i 's/valid_out_conductual/valid_out_estruct/' ./phy_tx_estruct.v

autoinst:
	emacs --batch  BancoPruebas_phy_tx.v  -f verilog-batch-delete-auto
	emacs --batch  BancoPruebas_phy_tx.v  -f verilog-batch-inject-auto

execute: BancoPruebas_phy_tx.v
	iverilog -o BancoPruebas_phy_tx.vpp BancoPruebas_phy_tx.v

sim: BancoPruebas_phy_tx.vpp
	vvp BancoPruebas_phy_tx.vpp
	
gtkwave: phy_tx.vcd
	gtkwave phy_tx.vcd
