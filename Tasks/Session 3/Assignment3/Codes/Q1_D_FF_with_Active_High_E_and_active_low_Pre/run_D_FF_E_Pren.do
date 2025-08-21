vlib work
vlog D_FF_with_Active_high_E_and_active_low_Pre.v D_FF_with_Active_high_E_and_active_low_Pre_tb.v
vsim -voptargs=+acc D_FF_high_E_low_Pre_tb
add wave *
run -all
#quit -sim