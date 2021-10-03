transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/darme/Desktop/mux {C:/Users/darme/Desktop/mux/mux.v}
vlog -vlog01compat -work work +incdir+C:/Users/darme/Desktop/mux_simulation {C:/Users/darme/Desktop/mux_simulation/mux_simulation.v}

