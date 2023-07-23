library verilog;
use verilog.vl_types.all;
entity datapath is
    port(
        cypher_input    : in     vl_logic_vector(15 downto 0);
        four_bit_input  : in     vl_logic_vector(3 downto 0);
        control_input   : in     vl_logic_vector(2 downto 0);
        read            : in     vl_logic;
        reset           : in     vl_logic;
        clock           : in     vl_logic;
        stop            : out    vl_logic;
        valid           : out    vl_logic;
        invalid         : out    vl_logic;
        final           : out    vl_logic;
        additionresult  : out    vl_logic_vector(63 downto 0);
        pespese         : out    vl_logic
    );
end datapath;
