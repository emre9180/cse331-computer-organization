library verilog;
use verilog.vl_types.all;
entity control is
    port(
        which_part      : out    vl_logic_vector(2 downto 0);
        stop            : in     vl_logic;
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        valid           : in     vl_logic;
        invalid         : in     vl_logic;
        read            : in     vl_logic;
        find            : out    vl_logic;
        pespese         : in     vl_logic;
        final           : in     vl_logic
    );
end control;
