all: sintesis_1 sintesis_2 sintesis_3 autoinst execute sim gtkwave

sintesis_1:
	yosys -s Recirculacion.ys
	sed -i 's/Recirculacion/Recirculacion_estruct/' ./Recirculacion_estruct.v
	sed -i 's/recirculacion/recirculacion_estruct/' ./Recirculacion_estruct.v
	sed -i 's/data_Probador0/data_Probador0_estruct/' ./Recirculacion_estruct.v
	sed -i 's/data_Probador1/data_Probador1_estruct/' ./Recirculacion_estruct.v
	sed -i 's/data_Probador2/data_Probador2_estruct/' ./Recirculacion_estruct.v
	sed -i 's/data_Probador3/data_Probador3_estruct/' ./Recirculacion_estruct.v
	
	sed -i 's/valid0_probador/valid0_probador_estruct/' ./Recirculacion_estruct.v
	sed -i 's/valid1_probador/valid1_probador_estruct/' ./Recirculacion_estruct.v
	sed -i 's/valid2_probador/valid2_probador_estruct/' ./Recirculacion_estruct.v
	sed -i 's/valid3_probador/valid3_probador_estruct/' ./Recirculacion_estruct.v

	yosys -s Mux2x1_8Bits.ys
	sed -i 's/Mux2x1_8Bits/Mux2x1_8Bits_estruct/' ./Mux2x1_8Bits_estruct.v


	yosys -s phy-tx.ys
	sed -i 's/Mux2x1_8Bits/Mux2x1_8Bits_estruct/' ./phy_tx_estruct.v
	sed -i 's/Recirculacion/Recirculacion_estruct/' ./phy_tx_estruct.v
	sed -i 's/recirculacion/recirculacion_estruct/' ./phy_tx_estruct.v
	sed -i 's/.recirculacion_estruct(recirculacion)/.recirculacion_estruct(recirculacion_estruct)/' ./phy_tx_estruct.v
	sed -i 's/data_Probador0/data_Probador0_estruct/' ./phy_tx_estruct.v
	sed -i 's/data_Probador1/data_Probador1_estruct/' ./phy_tx_estruct.v
	sed -i 's/data_Probador2/data_Probador2_estruct/' ./phy_tx_estruct.v
	sed -i 's/data_Probador3/data_Probador3_estruct/' ./phy_tx_estruct.v
	sed -i 's/valid0_probador/valid0_probador_estruct/' ./phy_tx_estruct.v
	sed -i 's/valid1_probador/valid1_probador_estruct/' ./phy_tx_estruct.v
	sed -i 's/valid2_probador/valid2_probador_estruct/' ./phy_tx_estruct.v
	sed -i 's/valid3_probador/valid3_probador_estruct/' ./phy_tx_estruct.v

	sed -i 's/.valid0_probador_estruct(valid0_probador),/.valid0_probador_estruct(valid0_probador_estruct),/' ./phy_tx_estruct.v
	sed -i 's/.valid1_probador_estruct(valid1_probador),/.valid1_probador_estruct(valid1_probador_estruct),/' ./phy_tx_estruct.v
	sed -i 's/.valid2_probador_estruct(valid2_probador),/.valid2_probador_estruct(valid2_probador_estruct),/' ./phy_tx_estruct.v
	sed -i 's/.valid3_probador_estruct(valid3_probador)/.valid3_probador_estruct(valid3_probador_estruct)/' ./phy_tx_estruct.v



	sed -i 's/.data_Probador0_estruct(data_Probador0)/.data_Probador0_estruct(data_Probador0_estruct)/' ./phy_tx_estruct.v
	sed -i 's/.data_Probador1_estruct(data_Probador1)/.data_Probador1_estruct(data_Probador1_estruct)/' ./phy_tx_estruct.v
	sed -i 's/.data_Probador2_estruct(data_Probador2)/.data_Probador2_estruct(data_Probador2_estruct)/' ./phy_tx_estruct.v
	sed -i 's/.data_Probador3_estruct(data_Probador3)/.data_Probador3_estruct(data_Probador3_estruct)/' ./phy_tx_estruct.v


	sed -i 's/phy_tx/phy_tx_estruct/' ./phy_tx_estruct.v
	sed -i 's/data_PSA_conductual/data_PSA_estruct/' ./phy_tx_estruct.v
	sed -i 's/valid_PSA_conductual/valid_PSA_estruct/' ./phy_tx_estruct.v

sintesis_2:
	yosys -s ParaleloSerial_azul.ys

	sed -i 's/ParaleloSerial_azul/ParaleloSerial_azul_estruct/' ./ParaleloSerial_azul_estruct.v

	sed -i 's/data_out/data_out_estruct/' ./ParaleloSerial_azul_estruct.v

	sed -i 's/data_PSA_conductual/data_PSA_estruct/' ./ParaleloSerial_azul_estruct.v

	sed -i 's/valid_PSA_conductual/valid_PSA_estruct/' ./ParaleloSerial_azul_estruct.v

sintesis_3:
	yosys -s SerialParalelo_azul.ys
	sed -i 's/SerialParalelo_azul/SerialParalelo_azul_estruct/' ./SerialParalelo_azul_estruct.v

	sed -i 's/recirculacion/recirculacion_estruct/' ./SerialParalelo_azul_estruct.v
	sed -i 's/recirculacion)/recirculacion_estruct)/' ./SerialParalelo_azul_estruct.v


autoinst:
	emacs --batch  BancoPruebas_phy_tx.v  -f verilog-batch-delete-auto
	emacs --batch  BancoPruebas_phy_tx.v  -f verilog-batch-inject-auto

execute: BancoPruebas_phy_tx.v
	iverilog -o BancoPruebas_phy_tx.vpp BancoPruebas_phy_tx.v

sim: BancoPruebas_phy_tx.vpp
	vvp BancoPruebas_phy_tx.vpp
	
gtkwave: phy_tx.vcd
	gtkwave phy_tx.vcd
