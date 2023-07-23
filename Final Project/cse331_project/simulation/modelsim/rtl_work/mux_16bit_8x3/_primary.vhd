library verilog;
use verilog.vl_types.all;
entity mux_16bit_8x3 is
    port(
        input1          : in     vl_logic_vector(15 downto 0);
        input2          : in     vl_logic_vector(15 downto 0);
        input3          : in     vl_logic_vector(15 downto 0);
        input4          : in     vl_logic_vector(15 downto 0);
        input5          : in     vl_logic_vector(15 downto 0);
        input6          : in     vl_logic_vector(15 downto 0);
        input7          : in     vl_logic_vector(15 downto 0);
        input8          : in     vl_logic_vector(15 downto 0);
        S0              : in     vl_logic;
        S1              : in     vl_logic;
        S2              : in     vl_logic;
        \out\           : out    vl_logic_vector(15 downto 0)
    );
end mux_16bit_8x3;
