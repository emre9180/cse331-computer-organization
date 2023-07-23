library verilog;
use verilog.vl_types.all;
entity main_memory is
    port(
        address         : in     vl_logic_vector(15 downto 0);
        writeData       : in     vl_logic_vector(15 downto 0);
        readData        : out    vl_logic_vector(15 downto 0);
        mem_read        : in     vl_logic;
        mem_write       : in     vl_logic;
        clock           : in     vl_logic
    );
end main_memory;
