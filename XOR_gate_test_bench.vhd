--import std_logic from the IEEE library
library ieee;
use ieee.std_logic_1164.all;

--ENTITY DECLARATION: no inputs, no outputs
entity C0_gate_tb is
end C0_gate_tb;

-- Describe how to test the AND Gate
architecture tb of C0_gate_tb is
   --pass andGate entity to the testbench as component
   component C0_gate is	
     Port ( INA0 : in  STD_LOGIC;
          INA1 : in  STD_LOGIC;
		  INB0 : in  STD_LOGIC;
		  INB1 : in  STD_LOGIC;
          OA   : out STD_LOGIC);
  end component;
	
   signal  inA0, inA1, inB0, InB1, outF : std_logic;
begin 
   --map the testbench signals to the ports of the andGate
   mapping: C0_gate port map(inA0, inA1, InB0, InB1, outF);

   process
   begin
      --TEST 0
      inA0 <= '0';
      inA1 <= '0';
      inB0 <= '0';
      inB1 <= '0';
      wait for 10 ns;
      --TEST 1
      inA0 <= '0';
	  inA1 <= '0';
	  inB0 <= '1';
      inB1 <= '0';
      wait for 10 ns;
      --TEST 2
      inA0 <= '0';
      inA1 <= '0';
      inB0 <= '0';
      inB1 <= '1';
      wait for 10 ns;
      --TEST 3
      inA0 <= '0';
      inA1 <= '0';
      inB0 <= '1';
      inB1 <= '1';
      wait for 10 ns;
      --TEST 4
      inA0 <= '1';
      inA1 <= '0';
      inB0 <= '0';
      inB1 <= '0';
      wait for 10 ns;
      --TEST 5
      inA0 <= '1';
      inA1 <= '0';
      inB0 <= '1';
      inB1 <= '0';
      wait for 10 ns;
      --TEST 6
      inA0 <= '1';
      inA1 <= '0';
      inB0 <= '0';
      inB1 <= '1';
      wait for 10 ns;
      --TEST 7
      inA0 <= '1';
      inA1 <= '0';
      inB0 <= '1';
      inB1 <= '1';
      wait for 10 ns;
      --TEST 8
      inA0 <= '0';
      inA1 <= '1';
      inB0 <= '0';
      inB1 <= '0';
      wait for 10 ns;
      --TEST 9
      inA0 <= '0';
      inA1 <= '1';
      inB0 <= '1';
      inB1 <= '0';
      wait for 10 ns;
      --TEST 10
      inA0 <= '0';
      inA1 <= '1';
      inB0 <= '0';
      inB1 <= '1';
      wait for 10 ns;
      --TEST 11
      inA0 <= '0';
      inA1 <= '1';
      inB0 <= '1';
      inB1 <= '1';
      wait for 10 ns;
      --TEST 12
      inA0 <= '1';
      inA1 <= '1';
      inB0 <= '0';
      inB1 <= '0';
      wait for 10 ns;
      --TEST 13
      inA0 <= '1';
      inA1 <= '1';
      inB0 <= '1';
      inB1 <= '0';
      wait for 10 ns;
      --TEST 14
      inA0 <= '1';
	  inA1 <= '1';
	  inB0 <= '0';
      inB1 <= '1';
      wait for 10 ns;
      --TEST 15
	  inA0 <= '1';
	  inA1 <= '1';
      inB0 <= '1';
      inB1 <= '1';
      wait;
   end process;
end tb;
