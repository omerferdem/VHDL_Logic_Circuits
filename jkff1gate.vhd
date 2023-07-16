library ieee;
use ieee.std_logic_1164.all;

entity JKFF1 is
port(
j: in std_logic;
k: in std_logic;
clk: in std_logic;
rst: in std_logic;
q: out std_logic;
qb: out std_logic);
end JKFF1;

architecture behavioral of JKFF1 is
begin
process(j,k,clk,rst)
begin
if(rst='1') then
 q <= '0';
 qb <= '0';
elsif (rising_edge(clk)) then
 if(j/=k) then
  q <= j;
  qb <= not j;
 elsif(j='1' and k='1') then
  q <= not j;
  qb <= j;
 end if;
end if;
end process;

end behavioral;