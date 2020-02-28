library verilog;
use verilog.vl_types.all;
entity regq is
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
        ia0             : in     vl_logic;
        ia1             : in     vl_logic;
        ia2             : in     vl_logic;
        ia3             : in     vl_logic;
        ib0             : in     vl_logic;
        ib1             : in     vl_logic;
        ib2             : in     vl_logic;
        ib3             : in     vl_logic;
        ic0             : in     vl_logic;
        ic1             : in     vl_logic;
        ic2             : in     vl_logic;
        ic3             : in     vl_logic;
        id0             : in     vl_logic;
        id1             : in     vl_logic;
        id2             : in     vl_logic;
        id3             : in     vl_logic;
        q0              : out    vl_logic;
        q1              : out    vl_logic;
        q2              : out    vl_logic;
        q3              : out    vl_logic
    );
end regq;
