transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/darme/Desktop/Aula-14-Lab-AOC1_Darmes-Araujo-Dias/processador_nrisc {C:/Users/darme/Desktop/Aula-14-Lab-AOC1_Darmes-Araujo-Dias/processador_nrisc/unidade_de_controle.v}
vlog -vlog01compat -work work +incdir+C:/Users/darme/Desktop/Aula-14-Lab-AOC1_Darmes-Araujo-Dias/processador_nrisc {C:/Users/darme/Desktop/Aula-14-Lab-AOC1_Darmes-Araujo-Dias/processador_nrisc/ula.v}
vlog -vlog01compat -work work +incdir+C:/Users/darme/Desktop/Aula-14-Lab-AOC1_Darmes-Araujo-Dias/processador_nrisc {C:/Users/darme/Desktop/Aula-14-Lab-AOC1_Darmes-Araujo-Dias/processador_nrisc/registers_bank.v}
vlog -vlog01compat -work work +incdir+C:/Users/darme/Desktop/Aula-14-Lab-AOC1_Darmes-Araujo-Dias/processador_nrisc {C:/Users/darme/Desktop/Aula-14-Lab-AOC1_Darmes-Araujo-Dias/processador_nrisc/pc.v}
vlog -vlog01compat -work work +incdir+C:/Users/darme/Desktop/Aula-14-Lab-AOC1_Darmes-Araujo-Dias/processador_nrisc {C:/Users/darme/Desktop/Aula-14-Lab-AOC1_Darmes-Araujo-Dias/processador_nrisc/mux.v}
vlog -vlog01compat -work work +incdir+C:/Users/darme/Desktop/Aula-14-Lab-AOC1_Darmes-Araujo-Dias/processador_nrisc {C:/Users/darme/Desktop/Aula-14-Lab-AOC1_Darmes-Araujo-Dias/processador_nrisc/extensor_de_sinal.v}
vlog -vlog01compat -work work +incdir+C:/Users/darme/Desktop/Aula-14-Lab-AOC1_Darmes-Araujo-Dias/processador_nrisc {C:/Users/darme/Desktop/Aula-14-Lab-AOC1_Darmes-Araujo-Dias/processador_nrisc/processador_nrisc.v}
vlog -vlog01compat -work work +incdir+C:/Users/darme/Desktop/Aula-14-Lab-AOC1_Darmes-Araujo-Dias/processador_nrisc {C:/Users/darme/Desktop/Aula-14-Lab-AOC1_Darmes-Araujo-Dias/processador_nrisc/memory_of_instruction.v}
vlog -vlog01compat -work work +incdir+C:/Users/darme/Desktop/Aula-14-Lab-AOC1_Darmes-Araujo-Dias/processador_nrisc {C:/Users/darme/Desktop/Aula-14-Lab-AOC1_Darmes-Araujo-Dias/processador_nrisc/data_memory.v}

