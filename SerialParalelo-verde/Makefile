
all: sintesis autoinst execute sim gtkwave

sintesis:
	yosys -s SerialParalelo_verde.ys
	sed -i 's/SerialParalelo_verde/SerialParalelo_verde_estruct/g' ./SerialParalelo_verde_estruct.v
	sed -i 's/data2send/data2send_estruct/g' ./SerialParalelo_verde_estruct.v
	sed -i 's/data_out/data_out_estruct/g' ./SerialParalelo_verde_estruct.v
	sed -i 's/active/active_estruct/g' ./SerialParalelo_verde_estruct.v
	sed -i 's/valid_out/valid_out_estruct/g' ./SerialParalelo_verde_estruct.v
	sed -i 's/data2send;/data2send_estruct;/' ./SerialParalelo_verde_estruct.v


autoinst:
	emacs --batch  BancoPruebasSerialParalelo_verde.v -f verilog-batch-delete-auto
	emacs --batch  BancoPruebasSerialParalelo_verde.v -f verilog-batch-inject-auto


execute: BancoPruebasSerialParalelo_verde.v
	iverilog -o BancoPruebasSerialParalelo_verde.vpp BancoPruebasSerialParalelo_verde.v

sim: BancoPruebasSerialParalelo_verde.vpp
	vvp BancoPruebasSerialParalelo_verde.vpp
	
gtkwave: SerialParalelo_verde.vcd
	gtkwave SerialParalelo_verde.vcd