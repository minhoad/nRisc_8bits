library verilog;
use verilog.vl_types.all;
entity registers_bank is
    port(
        Clock           : in     vl_logic;
        RegWrite        : in     vl_logic;
        Reg1_read       : in     vl_logic_vector(1 downto 0);
        Reg2_read       : in     vl_logic_vector(1 downto 0);
        Address         : in     vl_logic_vector(1 downto 0);
        WriteData       : in     vl_logic_vector(7 downto 0);
        Data1           : out    vl_logic_vector(7 downto 0);
        Data2           : out    vl_logic_vector(7 downto 0);
        Reset           : in     vl_logic
    );
end registers_bank;
