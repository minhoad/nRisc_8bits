onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /registers_bank_simulation/Clock
add wave -noupdate /registers_bank_simulation/RegWrite
add wave -noupdate /registers_bank_simulation/Reset
add wave -noupdate /registers_bank_simulation/Reg1_read
add wave -noupdate /registers_bank_simulation/Reg2_read
add wave -noupdate /registers_bank_simulation/Address
add wave -noupdate -radix unsigned /registers_bank_simulation/WriteData
add wave -noupdate -radix unsigned /registers_bank_simulation/Data1
add wave -noupdate -radix unsigned /registers_bank_simulation/Data2
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
WaveRestoreZoom {0 ps} {134 ps}
