library verilog;
use verilog.vl_types.all;
entity main_control is
    port(
        op_code         : in     vl_logic_vector(5 downto 0);
        func            : in     vl_logic_vector(5 downto 0);
        nPC_sel         : out    vl_logic;
        RegWr           : out    vl_logic;
        RegDst          : out    vl_logic;
        ALUSrc          : out    vl_logic;
        ALUCtr          : out    vl_logic_vector(2 downto 0);
        MemWr           : out    vl_logic;
        MemRd           : out    vl_logic;
        MemtoReg        : out    vl_logic;
        branch_equal    : out    vl_logic;
        branch_not      : out    vl_logic;
        jump            : out    vl_logic
    );
end main_control;
