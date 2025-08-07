vlib work
vlog RAM.v SPI_SLAVE.v SPI_Wrapper.v SPI_Wrapper_tb.v
vsim -voptargs=+acc SPI_Wrapper_tb
add wave *
run -all
#quit -sim