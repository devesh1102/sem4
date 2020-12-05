transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/geek-at-work/Digital/Debouncer/Debouncer.vhd}
vcom -93 -work work {/home/geek-at-work/Digital/Debouncer/Divider.vhd}
vcom -93 -work work {/home/geek-at-work/Digital/Debouncer/DFF.vhd}
vcom -93 -work work {/home/geek-at-work/Digital/Debouncer/Dividebytwo.vhd}

