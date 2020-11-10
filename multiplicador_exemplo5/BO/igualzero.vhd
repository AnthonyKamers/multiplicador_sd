LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY igualzero IS
PORT (a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		igual : OUT STD_LOGIC);
END igualzero;

ARCHITECTURE estrutura OF igualzero IS

	SIGNAL tudoZero: std_logic_vector(3 DOWNTO 0);

BEGIN
	tudoZero <= "0000";

	igual <= '1' WHEN a = tudoZero ELSE '0';
END estrutura;