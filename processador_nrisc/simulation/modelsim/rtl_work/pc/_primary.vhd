library verilog;
use verilog.vl_types.all;
entity pc is
    port(
        Clock           : in     vl_logic;
        PCWrite         : in     vl_logic;
        Address         : out    vl_logic_vector(7 downto 0);
        NextPC          : in     vl_logic_vector(7 downto 0);
        Reset           : in     vl_logic
    );
end pc;
