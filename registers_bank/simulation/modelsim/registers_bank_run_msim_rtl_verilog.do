transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/darme/Desktop/registers_bank {C:/Users/darme/Desktop/registers_bank/registers_bank.v}

