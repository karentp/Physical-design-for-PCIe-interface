all: sintesis_1 sintesis_2 autoinst execute sim gtkwave

sintesis_1:
	yosys -s Recirculacion.ys
	sed -i 's/Recirculacion/Recirculacion_estruct/' ./Recirculacion_estruct.v

	yosys -s Mux2x1_8Bits.ys
	sed -i 's/Mux2x1_8Bits/Mux2x1_8Bits_estruct/' ./Mux2x1_8Bits_estruct.v


	yosys -s phy-tx.ys
	sed -i 's/Mux2x1_8Bits/Mux2x1_8Bits_estruct/' ./phy_tx_estruct.v
	sed -i 's/Recirculacion/Recirculacion_estruct/' ./phy_tx_estruct.v
	sed -i 's/phy_tx/phy_tx_estruct/' ./phy_tx_estruct.v
	sed -i 's/data_PSA_conductual/data_PSA_estruct/' ./phy_tx_estruct.v
	sed -i 's/valid_PSA_conductual/valid_PSA_estruct/' ./phy_tx_estruct.v

sintesis_2:
	yosys -s ParaleloSerial_azul.ys

	sed -i 's/ParaleloSerial_azul/ParaleloSerial_azul_estruct/' ./ParaleloSerial_azul_estruct.v

	sed -i 's/data_out/data_out_estruct/' ./ParaleloSerial_azul_estruct.v

	sed -i 's/data_PSA_conductual/data_PSA_estruct/' ./ParaleloSerial_azul_estruct.v

	sed -i 's/valid_PSA_conductual/valid_PSA_estruct/' ./ParaleloSerial_azul_estruct.v


autoinst:
	emacs --batch  BancoPruebas_phy_tx.v  -f verilog-batch-delete-auto
	emacs --batch  BancoPruebas_phy_tx.v  -f verilog-batch-inject-auto

execute: BancoPruebas_phy_tx.v
	iverilog -o BancoPruebas_phy_tx.vpp BancoPruebas_phy_tx.v

sim: BancoPruebas_phy_tx.vpp
	vvp BancoPruebas_phy_tx.vpp
	
gtkwave: phy_tx.vcd
	gtkwave phy_tx.vcd
