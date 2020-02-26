library verilog;
use verilog.vl_types.all;
entity alu is
    generic(
        Add             : integer := 0;
        Sub             : integer := 1;
        Inc             : integer := 2;
        Dec             : integer := 3
    );
    port(
        c1              : in     vl_logic;
        c2              : in     vl_logic;
        ia              : in     vl_logic_vector(3 downto 0);
        ib              : in     vl_logic_vector(3 downto 0);
        sum             : out    vl_logic_vector(3 downto 0);
        cout            : out    vl_logic
    );
end alu;
