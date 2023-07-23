library verilog;
use verilog.vl_types.all;
entity alu is
    port(
        input1          : in     vl_logic_vector(15 downto 0);
        input2          : in     vl_logic_vector(15 downto 0);
        clk             : in     vl_logic;
        opcode          : in     vl_logic_vector(2 downto 0);
        result          : out    vl_logic_vector(15 downto 0);
        zero            : out    vl_logic;
        shamt           : in     vl_logic_vector(3 downto 0)
    );
end alu;
