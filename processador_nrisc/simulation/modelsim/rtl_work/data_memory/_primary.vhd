library verilog;
use verilog.vl_types.all;
entity data_memory is
    port(
        Clock           : in     vl_logic;
        Address         : in     vl_logic_vector(7 downto 0);
        WriteData       : in     vl_logic_vector(7 downto 0);
        Data            : out    vl_logic_vector(7 downto 0);
        MemWrite        : in     vl_logic;
        Reset           : in     vl_logic
    );
end data_memory;
