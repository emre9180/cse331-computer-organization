library verilog;
use verilog.vl_types.all;
entity register_memory is
    port(
        read_register1  : in     vl_logic_vector(3 downto 0);
        read_register2  : in     vl_logic_vector(3 downto 0);
        write_register  : in     vl_logic_vector(3 downto 0);
        write_data      : in     vl_logic_vector(15 downto 0);
        regWrite        : in     vl_logic;
        read_data1      : out    vl_logic_vector(15 downto 0);
        read_data2      : out    vl_logic_vector(15 downto 0);
        clock           : in     vl_logic
    );
end register_memory;
