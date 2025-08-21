vlib work
vlog Simplified_DSP.v Simplified_DSP_tb.v
vsim -voptargs=+acc Simplified_DSP_tb
add wave *
run -all
#quit -sim