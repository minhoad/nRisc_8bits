library verilog;
use verilog.vl_types.all;
entity unidade_de_controle is
    port(
        Clock           : in     vl_logic;
        Jump            : out    vl_logic;
        Opcode          : in     vl_logic_vector(2 downto 0);
        WE              : out    vl_logic;
        ULASrc          : out    vl_logic;
        ULAOp           : out    vl_logic_vector(2 downto 0);
        BEQ             : out    vl_logic;
        RegSrc          : out    vl_logic;
        Reset           : out    vl_logic;
        PCWrite         : out    vl_logic;
        RegWrite        : out    vl_logic
    );
end unidade_de_controle;
