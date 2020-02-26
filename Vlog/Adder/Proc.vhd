
-- 
-- Definition of  adder
-- 
--      Fri Feb 21 13:35:56 2020
--      
--      LeonardoSpectrum Level 3, 2009a.6
-- 

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ao21 is
   port (
      Y : OUT std_logic ;
      A0 : IN std_logic ;
      A1 : IN std_logic ;
      B0 : IN std_logic) ;
end ao21 ;

architecture NETLIST of ao21 is
   signal nx0: std_logic ;

begin
   nx0 <= A0 AND A1 ;
   Y <= nx0 OR B0 ;
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

entity aoi22 is
   port (
      Y : OUT std_logic ;
      A0 : IN std_logic ;
      A1 : IN std_logic ;
      B0 : IN std_logic ;
      B1 : IN std_logic) ;
end aoi22 ;

architecture NETLIST of aoi22 is
   signal NOT_A1, NOT_B1, nx4, NOT_A0, nx8, nx10, NOT_B0, nx14, nx16, nx18: 
   std_logic ;

begin
   NOT_A1 <= NOT A1 ;
   NOT_B1 <= NOT B1 ;
   nx4 <= NOT_A1 AND NOT_B1 ;
   NOT_A0 <= NOT A0 ;
   nx8 <= NOT_A0 AND NOT_B1 ;
   nx10 <= nx4 OR nx8 ;
   NOT_B0 <= NOT B0 ;
   nx14 <= NOT_A1 AND NOT_B0 ;
   nx16 <= nx10 OR nx14 ;
   nx18 <= NOT_A0 AND NOT_B0 ;
   Y <= nx16 OR nx18 ;
end NETLIST ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity xnor2 is
   port (
      Y : OUT std_logic ;
      A0 : IN std_logic ;
      A1 : IN std_logic) ;
end xnor2 ;

architecture NETLIST of xnor2 is
begin
   Y <= NOT (A0 XOR A1) ;
end NETLIST ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity xor2 is
   port (
      Y : OUT std_logic ;
      A0 : IN std_logic ;
      A1 : IN std_logic) ;
end xor2 ;

architecture NETLIST of xor2 is
begin
   Y <= A0 XOR A1 ;
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

entity adder is
   port (
      cin : IN std_logic ;
      ia : IN std_logic_vector (3 DOWNTO 0) ;
      ib : IN std_logic_vector (3 DOWNTO 0) ;
      sum : OUT std_logic_vector (3 DOWNTO 0) ;
      cout : OUT std_logic) ;
end adder ;

architecture INTERFACE of adder is
   signal nx6, nx18, nx28, nx30, nx36, nx156, nx160, nx163, nx166, nx169, 
      nx173: std_logic ;

begin
   ix39 : ao21 port map ( Y=>cout, A0=>ia(3), A1=>ib(3), B0=>nx36);
   ix37 : nor02_2x port map ( Y=>nx36, A0=>nx156, A1=>nx166);
   ix157 : aoi22 port map ( Y=>nx156, A0=>ia(2), A1=>ib(2), B0=>nx30, B1=>
      nx6);
   ix31 : ao21 port map ( Y=>nx30, A0=>ia(1), A1=>ib(1), B0=>nx28);
   ix29 : nor02_2x port map ( Y=>nx28, A0=>nx160, A1=>nx163);
   ix161 : aoi22 port map ( Y=>nx160, A0=>ia(0), A1=>ib(0), B0=>cin, B1=>
      nx18);
   ix164 : xnor2 port map ( Y=>nx163, A0=>ib(1), A1=>ia(1));
   ix167 : xnor2 port map ( Y=>nx166, A0=>ib(3), A1=>ia(3));
   ix47 : xnor2 port map ( Y=>sum(0), A0=>cin, A1=>nx169);
   ix170 : xnor2 port map ( Y=>nx169, A0=>ib(0), A1=>ia(0));
   ix45 : xor2 port map ( Y=>sum(1), A0=>nx160, A1=>nx163);
   ix43 : xnor2 port map ( Y=>sum(2), A0=>nx30, A1=>nx173);
   ix174 : xnor2 port map ( Y=>nx173, A0=>ib(2), A1=>ia(2));
   ix41 : xor2 port map ( Y=>sum(3), A0=>nx156, A1=>nx166);
   ix19 : inv02 port map ( Y=>nx18, A=>nx169);
   ix7 : inv02 port map ( Y=>nx6, A=>nx173);
end INTERFACE ;

