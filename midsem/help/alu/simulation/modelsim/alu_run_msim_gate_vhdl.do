transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {alu.vho}

vcom -93 -work work {/home/student/16d070044/final/Testbench.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /dut=alu_vhd.sdo -L maxv -L gate_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
