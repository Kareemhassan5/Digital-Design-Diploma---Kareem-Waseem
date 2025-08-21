vlib work
vlog Gray_Counter_FSM.v Gray_Counter_FSM_tb.v
vsim -voptargs=+acc Gray_Counter_FSM_tb
add wave *
add wave -position insertpoint  \
sim:/Gray_Counter_FSM_tb/DUT/cs \
sim:/Gray_Counter_FSM_tb/DUT/ns
run -all
#quit -sim