library verilog;
use verilog.vl_types.all;
entity or_16bit is
    port(
        input1          : in     vl_logic_vector(15 downto 0);
        input2          : in     vl_logic_vector(15 downto 0);
        s               : out    vl_logic_vector(15 downto 0)
    );
end or_16bit;
