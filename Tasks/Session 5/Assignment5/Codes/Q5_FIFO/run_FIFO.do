vlib work
vlog FIFO.v FIFO_tb.v
vsim -voptargs=+acc FIFO_tb
add wave *
add wave -position insertpoint  \
sim:/FIFO_tb/DUT/addr_wr  \
sim:/FIFO_tb/DUT/addr_rd  \
sim:/FIFO_tb/DUT/size  \
sim:/FIFO_tb/DUT/mem 
run -all
#quit -sim