vlib work
vlog TDM.v TDM_tb.v
vsim -voptargs=+acc TDM_tb
add wave *
run -all
#quit -sim