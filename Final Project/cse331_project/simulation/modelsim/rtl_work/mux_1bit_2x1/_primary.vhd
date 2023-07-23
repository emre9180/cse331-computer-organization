library verilog;
use verilog.vl_types.all;
entity mux_1bit_2x1 is
    port(
        in1             : in     vl_logic;
        in2             : in     vl_logic;
        s               : in     vl_logic;
        \out\           : out    vl_logic
    );
end mux_1bit_2x1;
