library verilog;
use verilog.vl_types.all;
entity unidade_de_controle is
    port(
        Opcode          : in     vl_logic_vector(2 downto 0);
        decoded_instruction: out    vl_logic_vector(9 downto 0)
    );
end unidade_de_controle;
