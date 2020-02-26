library verilog;
use verilog.vl_types.all;
entity rega is
    generic(
        LD0             : integer := 0;
        LD1             : integer := 1;
        LD2             : integer := 2;
        LD3             : integer := 3
    );
    port(
        clk             : in     vl_logic;
        c1              : in     vl_logic;
        c2              : in     vl_logic;
        ia              : in     vl_logic_vector(3 downto 0);
        ib              : in     vl_logic_vector(3 downto 0);
        ic              : in     vl_logic_vector(3 downto 0);
        id              : in     vl_logic_vector(3 downto 0);
        q               : out    vl_logic_vector(3 downto 0)
    );
end rega;
