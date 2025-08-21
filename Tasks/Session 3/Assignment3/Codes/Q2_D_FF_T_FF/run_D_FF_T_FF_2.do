vlib work
vlog D_FF_T_FF.v D_FF_T_FF_tb_2.v
vsim -voptargs=+acc D_FF_T_FF_tb_2
add wave *
run -all
#quit -sim