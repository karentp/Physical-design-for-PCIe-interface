
all: sintesis autoinst execute sim gtkwave

sintesis:
	yosys -s SerialParalelo.ys
	sed -i 's/SerialParalelo/SerialParalelo_estruct/g' ./SerialParalelo_estruct.v
	sed -i 's/data2send/data2send_estruct/g' ./SerialParalelo_estruct.v
	sed -i 's/data_out/data_out_estruct/g' ./SerialParalelo_estruct.v
	sed -i 's/active/active_estruct/g' ./SerialParalelo_estruct.v
	sed -i 's/valid_out/valid_out_estruct/g' ./SerialParalelo_estruct.v
	sed -i 's/data2send;/data2send_estruct;/' ./SerialParalelo_estruct.v


autoinst:
	emacs --batch  BancoPruebasSerialParalelo.v -f verilog-batch-delete-auto
	emacs --batch  BancoPruebasSerialParalelo.v -f verilog-batch-inject-auto


execute: BancoPruebasSerialParalelo.v
	iverilog -o BancoPruebasSerialParalelo.vpp BancoPruebasSerialParalelo.v

sim: BancoPruebasSerialParalelo.vpp
	vvp BancoPruebasSerialParalelo.vpp
	
gtkwave: SerialParalelo.vcd
	gtkwave SerialParalelo.vcd