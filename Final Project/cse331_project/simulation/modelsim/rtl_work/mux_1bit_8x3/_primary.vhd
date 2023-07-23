library verilog;
use verilog.vl_types.all;
entity mux_1bit_8x3 is
    port(
        in0             : in     vl_logic;
        in1             : in     vl_logic;
        in2             : in     vl_logic;
        in3             : in     vl_logic;
        in4             : in     vl_logic;
        in5             : in     vl_logic;
        in6             : in     vl_logic;
        in7             : in     vl_logic;
        S0              : in     vl_logic;
        S1              : in     vl_logic;
        S2              : in     vl_logic;
        \out\           : out    vl_logic
    );
end mux_1bit_8x3;
