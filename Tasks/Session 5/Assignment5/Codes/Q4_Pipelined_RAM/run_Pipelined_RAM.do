vlib work
vlog Pipelined_RAM.v Pipelined_RAM_tb.v
vsim -voptargs=+acc Pipelined_RAM_tb
add wave *
add wave -position insertpoint  \
sim:/Pipelined_RAM_tb/DUT/mem
run -all
#quit -sim