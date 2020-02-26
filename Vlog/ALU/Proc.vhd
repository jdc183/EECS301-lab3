
-- 
-- Definition of  alu
-- 
--      Wed Feb 26 10:29:57 2020
--      
--      LeonardoSpectrum Level 3, 2009a.6
-- 

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

entity oai21 is
   port (
      Y : OUT std_logic ;
      A0 : IN std_logic ;
      A1 : IN std_logic ;
      B0 : IN std_logic) ;
end oai21 ;

architecture NETLIST of oai21 is
   signal NOT_A0, NOT_A1, nx4, NOT_B0: std_logic ;

begin
   NOT_A0 <= NOT A0 ;
   NOT_A1 <= NOT A1 ;
   nx4 <= NOT_A0 AND NOT_A1 ;
   NOT_B0 <= NOT B0 ;
   Y <= nx4 OR NOT_B0 ;
end NETLIST ;

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

entity alu is
   port (
      c1 : IN std_logic ;
      c2 : IN std_logic ;
      ia : IN std_logic_vector (3 DOWNTO 0) ;
      ib : IN std_logic_vector (3 DOWNTO 0) ;
      sum : OUT std_logic_vector (3 DOWNTO 0) ;
      cout : OUT std_logic) ;
end alu ;

architecture INTERFACE of alu is
   signal nx8, nx22, nx24, nx36, nx44, nx50, nx66, nx68, nx74, nx76, nx166, 
      nx168, nx170, nx173, nx175, nx178, nx181, nx184, nx189, nx192, nx195, 
      nx198, nx201, nx206, nx208: std_logic ;

begin
   ix91 : xor2 port map ( Y=>sum(0), A0=>nx166, A1=>nx170);
   ix167 : nand02_2x port map ( Y=>nx166, A0=>c1, A1=>nx168);
   ix169 : inv02 port map ( Y=>nx168, A=>c2);
   ix171 : xnor2 port map ( Y=>nx170, A0=>ib(0), A1=>nx50);
   ix51 : oai21 port map ( Y=>nx50, A0=>c1, A1=>nx173, B0=>nx175);
   ix174 : xnor2 port map ( Y=>nx173, A0=>ia(0), A1=>c2);
   ix176 : nand02_2x port map ( Y=>nx175, A0=>c1, A1=>c2);
   ix89 : xor2 port map ( Y=>sum(1), A0=>nx178, A1=>nx181);
   ix179 : oai21 port map ( Y=>nx178, A0=>c1, A1=>nx44, B0=>ib(0));
   ix182 : xnor2 port map ( Y=>nx181, A0=>ib(1), A1=>nx36);
   ix37 : oai21 port map ( Y=>nx36, A0=>c1, A1=>nx184, B0=>nx175);
   ix185 : xnor2 port map ( Y=>nx184, A0=>ia(1), A1=>c2);
   ix87 : xnor2 port map ( Y=>sum(2), A0=>nx68, A1=>nx189);
   ix69 : ao21 port map ( Y=>nx68, A0=>nx36, A1=>ib(1), B0=>nx66);
   ix67 : nor02_2x port map ( Y=>nx66, A0=>nx178, A1=>nx181);
   ix190 : xnor2 port map ( Y=>nx189, A0=>ib(2), A1=>nx22);
   ix23 : oai21 port map ( Y=>nx22, A0=>c1, A1=>nx192, B0=>nx175);
   ix193 : xnor2 port map ( Y=>nx192, A0=>ia(2), A1=>c2);
   ix85 : xor2 port map ( Y=>sum(3), A0=>nx195, A1=>nx198);
   ix196 : aoi22 port map ( Y=>nx195, A0=>nx22, A1=>ib(2), B0=>nx68, B1=>
      nx24);
   ix199 : xnor2 port map ( Y=>nx198, A0=>ib(3), A1=>nx8);
   ix9 : oai21 port map ( Y=>nx8, A0=>c1, A1=>nx201, B0=>nx175);
   ix202 : xnor2 port map ( Y=>nx201, A0=>ia(3), A1=>c2);
   ix83 : xnor2 port map ( Y=>cout, A0=>nx76, A1=>nx206);
   ix77 : ao21 port map ( Y=>nx76, A0=>nx8, A1=>ib(3), B0=>nx74);
   ix75 : nor02_2x port map ( Y=>nx74, A0=>nx195, A1=>nx198);
   ix207 : nand02_2x port map ( Y=>nx206, A0=>nx208, A1=>c2);
   ix209 : inv02 port map ( Y=>nx208, A=>c1);
   ix45 : inv02 port map ( Y=>nx44, A=>nx173);
   ix25 : inv02 port map ( Y=>nx24, A=>nx189);
end INTERFACE ;

