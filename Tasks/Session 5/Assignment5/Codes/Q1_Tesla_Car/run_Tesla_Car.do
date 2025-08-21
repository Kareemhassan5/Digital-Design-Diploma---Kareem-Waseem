vlib work
vlog Tesla_Car.v Tesla_Car_tb.v
vsim -voptargs=+acc Tesla_Car_tb
add wave *
add wave -position insertpoint  \
sim:/Tesla_Car_tb/DUT/cs \
sim:/Tesla_Car_tb/DUT/ns
run -all
#quit -sim