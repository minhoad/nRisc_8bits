onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Literal -radix binary /unidade_de_controle_simulation/Clock
add wave -noupdate -radix binary /unidade_de_controle_simulation/Opcode
add wave -noupdate -radix binary /unidade_de_controle_simulation/ULAOp
add wave -noupdate -format Literal -radix binary /unidade_de_controle_simulation/WE
add wave -noupdate -format Literal -radix binary /unidade_de_controle_simulation/ULASrc
add wave -noupdate -format Literal -radix binary /unidade_de_controle_simulation/BEQ
add wave -noupdate -format Literal -radix binary /unidade_de_controle_simulation/RegSrc
add wave -noupdate -format Literal -radix binary /unidade_de_controle_simulation/PCWrite
add wave -noupdate -format Literal -radix binary /unidade_de_controle_simulation/Jump
add wave -noupdate -format Literal -radix binary /unidade_de_controle_simulation/RegWrite
add wave -noupdate -format Literal -radix binary /unidade_de_controle_simulation/Reset
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
WaveRestoreZoom {0 ps} {124 ps}
