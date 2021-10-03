onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /memory_of_instruction_simulation/Clock
add wave -noupdate /memory_of_instruction_simulation/Address
add wave -noupdate /memory_of_instruction_simulation/Instruction
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 1
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
WaveRestoreZoom {118 ps} {254 ps}
