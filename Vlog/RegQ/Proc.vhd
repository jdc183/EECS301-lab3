
-- 
-- Definition of  regq
-- 
--      Fri Feb 28 09:38:09 2020
--      
--      LeonardoSpectrum Level 3, 2009a.6
-- 

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity dff is
   port (
      Q : OUT std_logic ;
      QB : OUT std_logic ;
      D : IN std_logic ;
      CLK : IN std_logic) ;
end dff ;

architecture NETLIST of dff is
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   signal \[869_\, nx2, nx4: std_logic ;

begin
   Q <= \[869_\ ;
   DFFPC (D,nx4,nx2,CLK,\[869_\) ;
   nx2 <= '0' ;
   nx4 <= '0' ;
   QB <= NOT \[869_\ ;
end NETLIST ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity nand02_2x is
   port (
      Y : OUT std_logic ;
      A0 : IN std_logic ;
      A1 : IN std_logic) ;
end nand02_2x ;

architecture NETLIST of nand02_2x is
   signal NOT_A1, NOT_A0: std_logic ;

begin
   NOT_A1 <= NOT A1 ;
   NOT_A0 <= NOT A0 ;
   Y <= NOT_A1 OR NOT_A0 ;
end NETLIST ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity aoi32 is
   port (
      Y : OUT std_logic ;
      A0 : IN std_logic ;
      A1 : IN std_logic ;
      A2 : IN std_logic ;
      B0 : IN std_logic ;
      B1 : IN std_logic) ;
end aoi32 ;

architecture NETLIST of aoi32 is
   signal NOT_A2, NOT_B1, nx4, NOT_A1, nx8, nx10, NOT_A0, nx14, nx16, NOT_B0, 
      nx20, nx22, nx24, nx26, nx28: std_logic ;

begin
   NOT_A2 <= NOT A2 ;
   NOT_B1 <= NOT B1 ;
   nx4 <= NOT_A2 AND NOT_B1 ;
   NOT_A1 <= NOT A1 ;
   nx8 <= NOT_A1 AND NOT_B1 ;
   nx10 <= nx4 OR nx8 ;
   NOT_A0 <= NOT A0 ;
   nx14 <= NOT_A0 AND NOT_B1 ;
   nx16 <= nx10 OR nx14 ;
   NOT_B0 <= NOT B0 ;
   nx20 <= NOT_A2 AND NOT_B0 ;
   nx22 <= nx16 OR nx20 ;
   nx24 <= NOT_A1 AND NOT_B0 ;
   nx26 <= nx22 OR nx24 ;
   nx28 <= NOT_A0 AND NOT_B0 ;
   Y <= nx26 OR nx28 ;
end NETLIST ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity nor02_2x is
   port (
      Y : OUT std_logic ;
      A0 : IN std_logic ;
      A1 : IN std_logic) ;
end nor02_2x ;

architecture NETLIST of nor02_2x is
   signal NOT_A0, NOT_A1: std_logic ;

begin
   NOT_A0 <= NOT A0 ;
   NOT_A1 <= NOT A1 ;
   Y <= NOT_A0 AND NOT_A1 ;
end NETLIST ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity inv02 is
   port (
      Y : OUT std_logic ;
      A : IN std_logic) ;
end inv02 ;

architecture NETLIST of inv02 is
begin
   Y <= NOT A ;
end NETLIST ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity nor02ii is
   port (
      Y : OUT std_logic ;
      A0 : IN std_logic ;
      A1 : IN std_logic) ;
end nor02ii ;

architecture NETLIST of nor02ii is
   signal NOT_A0: std_logic ;

begin
   NOT_A0 <= NOT A0 ;
   Y <= NOT_A0 AND A1 ;
end NETLIST ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity buf02 is
   port (
      Y : OUT std_logic ;
      A : IN std_logic) ;
end buf02 ;

architecture NETLIST of buf02 is
begin
   Y <= A ;
end NETLIST ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity regq is
   port (
      clk : IN std_logic ;
      c1 : IN std_logic ;
      c2 : IN std_logic ;
      ia0 : IN std_logic ;
      ia1 : IN std_logic ;
      ia2 : IN std_logic ;
      ia3 : IN std_logic ;
      ib0 : IN std_logic ;
      ib1 : IN std_logic ;
      ib2 : IN std_logic ;
      ib3 : IN std_logic ;
      ic0 : IN std_logic ;
      ic1 : IN std_logic ;
      ic2 : IN std_logic ;
      ic3 : IN std_logic ;
      id0 : IN std_logic ;
      id1 : IN std_logic ;
      id2 : IN std_logic ;
      id3 : IN std_logic ;
      q0 : OUT std_logic ;
      q1 : OUT std_logic ;
      q2 : OUT std_logic ;
      q3 : OUT std_logic) ;
end regq ;

architecture INTERFACE of regq is
   signal nx2, nx18, nx28, nx48, nx68, nx88, nx136, nx139, nx141, nx147, 
      nx149, nx154, nx156, nx161, nx163, nx171: std_logic ;

begin
   reg_q_0 : dff port map ( Q=>q3, QB=>OPEN, D=>nx28, CLK=>clk);
   ix29 : nand02_2x port map ( Y=>nx28, A0=>nx136, A1=>nx139);
   ix137 : aoi32 port map ( Y=>nx136, A0=>id3, A1=>c1, A2=>c2, B0=>ia3, B1=>
      nx18);
   ix19 : nor02_2x port map ( Y=>nx18, A0=>c1, A1=>c2);
   ix140 : aoi32 port map ( Y=>nx139, A0=>ib3, A1=>nx141, A2=>c2, B0=>ic3, 
      B1=>nx171);
   ix142 : inv02 port map ( Y=>nx141, A=>c1);
   reg_q_1 : dff port map ( Q=>q2, QB=>OPEN, D=>nx48, CLK=>clk);
   ix49 : nand02_2x port map ( Y=>nx48, A0=>nx147, A1=>nx149);
   ix148 : aoi32 port map ( Y=>nx147, A0=>id2, A1=>c1, A2=>c2, B0=>ia2, B1=>
      nx18);
   ix150 : aoi32 port map ( Y=>nx149, A0=>ib2, A1=>nx141, A2=>c2, B0=>ic2, 
      B1=>nx171);
   reg_q_2 : dff port map ( Q=>q1, QB=>OPEN, D=>nx68, CLK=>clk);
   ix69 : nand02_2x port map ( Y=>nx68, A0=>nx154, A1=>nx156);
   ix155 : aoi32 port map ( Y=>nx154, A0=>id1, A1=>c1, A2=>c2, B0=>ia1, B1=>
      nx18);
   ix157 : aoi32 port map ( Y=>nx156, A0=>ib1, A1=>nx141, A2=>c2, B0=>ic1, 
      B1=>nx171);
   reg_q_3 : dff port map ( Q=>q0, QB=>OPEN, D=>nx88, CLK=>clk);
   ix89 : nand02_2x port map ( Y=>nx88, A0=>nx161, A1=>nx163);
   ix162 : aoi32 port map ( Y=>nx161, A0=>id0, A1=>c1, A2=>c2, B0=>ia0, B1=>
      nx18);
   ix164 : aoi32 port map ( Y=>nx163, A0=>ib0, A1=>nx141, A2=>c2, B0=>ic0, 
      B1=>nx171);
   ix3 : nor02ii port map ( Y=>nx2, A0=>c2, A1=>c1);
   ix170 : buf02 port map ( Y=>nx171, A=>nx2);
end INTERFACE ;

