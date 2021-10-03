library verilog;
use verilog.vl_types.all;
entity memory_of_instruction is
    port(
        Clock           : in     vl_logic;
        Address         : in     vl_logic_vector(7 downto 0);
        Instruction     : out    vl_logic_vector(7 downto 0);
        Reset           : in     vl_logic;
        Data_in         : in     vl_logic_vector(7 downto 0);
        WE              : in     vl_logic
    );
end memory_of_instruction;
