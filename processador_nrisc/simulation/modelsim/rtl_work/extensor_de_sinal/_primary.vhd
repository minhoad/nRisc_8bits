library verilog;
use verilog.vl_types.all;
entity extensor_de_sinal is
    port(
        instruction_received: in     vl_logic_vector(7 downto 0);
        immediate       : out    vl_logic_vector(7 downto 0)
    );
end extensor_de_sinal;
