library verilog;
use verilog.vl_types.all;
entity mips is
    port(
        clock           : in     vl_logic;
        pc              : in     vl_logic_vector(31 downto 0);
        instruction     : in     vl_logic_vector(31 downto 0);
        newPc           : out    vl_logic_vector(31 downto 0)
    );
end mips;
