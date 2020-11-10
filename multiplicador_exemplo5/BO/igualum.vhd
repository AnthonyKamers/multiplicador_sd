LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY igualum IS
PORT (a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
igual : OUT STD_LOGIC);
END igualum;

ARCHITECTURE estrutura OF igualum IS

	SIGNAL um: std_logic_vector(3 DOWNTO 0);

BEGIN
	um <= "0001";

	igual <= '1' WHEN a = um ELSE '0';

END estrutura;