library verilog;
use verilog.vl_types.all;
entity mux is
    port(
        input1          : in     vl_logic_vector(7 downto 0);
        input2          : in     vl_logic_vector(7 downto 0);
        signalchoice    : in     vl_logic;
        out_put         : out    vl_logic_vector(7 downto 0)
    );
end mux;
