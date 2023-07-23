library verilog;
use verilog.vl_types.all;
entity mux_3bit_2x1 is
    port(
        in1             : in     vl_logic_vector(3 downto 0);
        in2             : in     vl_logic_vector(3 downto 0);
        s               : in     vl_logic;
        \out\           : out    vl_logic_vector(3 downto 0)
    );
end mux_3bit_2x1;
