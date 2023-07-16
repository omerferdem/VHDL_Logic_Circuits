library ieee;
use ieee.std_logic_1164.all;

entity JKMS is
port(
jm: in std_logic;
km: in std_logic;
clkm: in std_logic;
rstm: in std_logic;
qm: out std_logic;
qbm: out std_logic);
end JKMS;

architecture behavioral of JKMS is
component JKFF1 is                                --JK 2 (master)
port(
j: in std_logic;
k: in std_logic;
clk: in std_logic;
rst: in std_logic;
q: out std_logic;
qb: out std_logic);
        end component;
component JKFF2 is                                --JK 1 (slave)
port(
j: in std_logic;
k: in std_logic;
clk: in std_logic;
rst: in std_logic;
q: out std_logic;
qb: out std_logic);
        end component; 
        
        signal q1,qb1: std_logic;
        
begin

P1: JKFF1 port map(j=>jm,k=>km,clk=>clkm,rst=>rstm,q=>q1,qb=>qb1);
P2: JKFF2 port map(j=>q1,k=>qb1,clk=>(not clkm),rst=>rstm,q=>qm,qb=>qbm);

end behavioral;
