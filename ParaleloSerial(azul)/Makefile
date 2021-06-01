all: sintesis autoinst execute sim gtkwave

sintesis:
	yosys -s ParaleloSerial.ys

	sed -i 's/ParaleloSerial/ParaleloSerial_estruct/' ./ParaleloSerial_estruct.v

	sed -i 's/data_out/data_out_estruct/' ./ParaleloSerial_estruct.v
	# sed -i 's/phy_tx/phy_tx_estruct/' ./phy_tx_estruct.v
	# sed -i 's/data_out_conductual/data_out_estruct/' ./phy_tx_estruct.v
	# sed -i 's/valid_out_conductual/valid_out_estruct/' ./phy_tx_estruct.v

autoinst:
	emacs --batch  BancoPruebas_ParaleloSerial.v  -f verilog-batch-delete-auto
	emacs --batch  BancoPruebas_ParaleloSerial.v  -f verilog-batch-inject-auto

execute: BancoPruebas_ParaleloSerial.v
	iverilog -o BancoPruebas_ParaleloSerial.vpp BancoPruebas_ParaleloSerial.v

sim: BancoPruebas_ParaleloSerial.vpp
	vvp BancoPruebas_ParaleloSerial.vpp
	
gtkwave: ParaleloSerial.vcd
	gtkwave ParaleloSerial.vcd
