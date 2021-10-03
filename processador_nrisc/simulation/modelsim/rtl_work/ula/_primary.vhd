library verilog;
use verilog.vl_types.all;
entity ula is
    port(
        ULAOp           : in     vl_logic_vector(2 downto 0);
        Dado1           : in     vl_logic_vector(7 downto 0);
        Dado2           : in     vl_logic_vector(7 downto 0);
        zero            : out    vl_logic;
        Resultado       : out    vl_logic_vector(7 downto 0)
    );
end ula;
