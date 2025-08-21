vlib work
vlog Q2_4bit_Counter_with_clock_division.v Q2_4bit_Counter_with_clock_division_tb.v
vsim -voptargs=+acc Counter_4_bits_with_out_clk_tb
add wave *
run -all
#quit -sim