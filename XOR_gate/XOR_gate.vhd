library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity C0_gate is
    Port ( INA0 : in  STD_LOGIC;
           INA1 : in  STD_LOGIC;
		   INB0 : in  STD_LOGIC;
           INB1 : in  STD_LOGIC;
		   OA   : out STD_LOGIC);
end C0_gate;
architecture Behavioral of C0_gate is
signal input : STD_LOGIC_VECTOR(3 downto 0) := INA1 & INA0 & INB1 & INB0;
	begin
		process(input)
		begin
			    case input is
           when "0000" => OA <= '0';
           when "0001" => OA <= '1';
           when "0010" => OA <= '0';
           when "0011" => OA <= '1';
           when "0100" => OA <= '1';
           when "0101" => OA <= '0';
           when "0110" => OA <= '1';
           when "0111" => OA <= '0';
           when "1000" => OA <= '0';
           when "1001" => OA <= '1';
           when "1010" => OA <= '0';
           when "1011" => OA <= '1';
           when "1100" => OA <= '1';
           when "1101" => OA <= '0';
           when "1110" => OA <= '1';
           when "1111" => OA <= '0';
        end case ;   
    end process;
    end Behavioral;
