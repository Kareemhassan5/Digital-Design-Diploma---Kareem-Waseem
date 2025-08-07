vlib work
vlog DSP.v DSP_tb.v
vsim -voptargs=+acc DSP_tb
add wave *
run -all
#quit -sim