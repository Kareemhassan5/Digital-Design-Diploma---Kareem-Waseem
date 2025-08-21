vlib work
vlog Sequence_Detector_111.v Sequence_Detector_111_tb.v
vsim -voptargs=+acc Sequence_Detector_111_tb
add wave *
add wave -position insertpoint  \
sim:/Sequence_Detector_111_tb/DUT/cs \
sim:/Sequence_Detector_111_tb/DUT/ns
run -all
#quit -sim