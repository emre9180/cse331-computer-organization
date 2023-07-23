library verilog;
use verilog.vl_types.all;
entity or_4bit is
    port(
        input1          : in     vl_logic_vector(3 downto 0);
        input2          : in     vl_logic_vector(3 downto 0);
        s               : out    vl_logic_vector(3 downto 0)
    );
end or_4bit;
