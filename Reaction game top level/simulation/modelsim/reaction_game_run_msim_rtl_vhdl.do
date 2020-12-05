transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/parth/Digital_lab_projects/Reaction game/button/button.vhd}
vcom -93 -work work {/home/parth/Digital_lab_projects/Reaction game/counter/up_counter2.vhd}
vcom -93 -work work {/home/parth/Digital_lab_projects/Reaction game/random_gen/rand_gen.vhd}
vcom -93 -work work {/home/parth/Digital_lab_projects/Reaction game/Reaction game top level/test_game1.vhd}

