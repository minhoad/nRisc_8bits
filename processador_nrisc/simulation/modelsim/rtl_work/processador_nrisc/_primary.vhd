library verilog;
use verilog.vl_types.all;
entity processador_nrisc is
    port(
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        instruction_out : out    vl_logic_vector(7 downto 0)
    );
end processador_nrisc;
