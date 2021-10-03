onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /processador_nrisc/clock
add wave -noupdate /processador_nrisc/reset
add wave -noupdate -radix unsigned /processador_nrisc/address
add wave -noupdate /processador_nrisc/instruction
add wave -noupdate -radix unsigned /processador_nrisc/resultado
add wave -noupdate -radix unsigned /processador_nrisc/resultadoMUX2
add wave -noupdate -radix unsigned /processador_nrisc/REG_BANK/WriteData
add wave -noupdate /processador_nrisc/REG_BANK/Address
add wave -noupdate -radix unsigned /processador_nrisc/REG_BANK/Data1
add wave -noupdate -radix unsigned /processador_nrisc/REG_BANK/Data2
add wave -noupdate -radix unsigned /processador_nrisc/DATA_MEMORY/WriteData
add wave -noupdate /processador_nrisc/DATA_MEMORY/Address
add wave -noupdate -radix unsigned /processador_nrisc/DATA_MEMORY/Data
add wave -noupdate /processador_nrisc/DATA_MEMORY/MemWrite
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {3167 ps} {4255 ps}
