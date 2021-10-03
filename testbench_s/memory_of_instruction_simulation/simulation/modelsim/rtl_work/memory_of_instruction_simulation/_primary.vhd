library verilog;
use verilog.vl_types.all;
entity memory_of_instruction_simulation is
    port(
        a               : in     vl_logic;
        b               : out    vl_logic;
        clock           : in     vl_logic
    );
end memory_of_instruction_simulation;
