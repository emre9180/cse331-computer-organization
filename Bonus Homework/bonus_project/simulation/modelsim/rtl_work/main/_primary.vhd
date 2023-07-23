library verilog;
use verilog.vl_types.all;
entity main is
    port(
        cypher          : in     vl_logic_vector(15 downto 0);
        four_bit_input  : in     vl_logic_vector(3 downto 0);
        read            : in     vl_logic;
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        find            : out    vl_logic;
        additionresult  : out    vl_logic_vector(63 downto 0)
    );
end main;
