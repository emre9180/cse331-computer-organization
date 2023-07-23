library verilog;
use verilog.vl_types.all;
entity not_16bit is
    port(
        input1          : in     vl_logic_vector(15 downto 0);
        result          : out    vl_logic_vector(15 downto 0)
    );
end not_16bit;
