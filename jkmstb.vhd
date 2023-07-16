LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY JKMS_tb IS
END JKMS_tb;

ARCHITECTURE behavior OF JKMS_tb IS 

    COMPONENT JKMS
    PORT(
         jm : IN  std_logic;
         km : IN  std_logic;
         clkm : IN  std_logic;
         rstm : IN  std_logic;
         qm : OUT  std_logic;
         qbm : OUT  std_logic
        );
    END COMPONENT;
    
   signal jm : std_logic := '0';
   signal km : std_logic := '0';
   signal clkm : std_logic := '0';
   signal rstm : std_logic := '0';
   signal qm : std_logic;
   signal qbm : std_logic;

   constant clkm_period : time := 10 ns;

BEGIN

   uut: JKMS PORT MAP (
          jm => jm,
          km => km,
          clkm => clkm,
          rstm => rstm,
          qm => qm,
          qbm => qbm
        );

  clk_process :process
  begin
  clkm <= '0';
  wait for clkm_period/2;
  clkm <= '1';
  wait for clkm_period/2;
  end process;

  stim_proc: process
  begin  

  rstm <= '1';
  wait for 50 ns; 

  rstm <= '0';
  jm <= '0';
  km <= '1';
  wait for 50 ns;
  
  rstm <= '0';
  jm <= '1'; 
  km <= '0';
  wait for 50 ns;
  
  rstm <= '0';
  jm <= '1'; 
  km <= '1';
  wait for 50 ns;

  rstm <= '0';
  jm <= '0'; 
  km <= '0';
  wait;

  end process;

END;