LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY igualzero IS
GENERIC (N: INTEGER := 4);
PORT (a : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
igual : OUT STD_LOGIC);
END igualzero;

ARCHITECTURE estrutura OF igualzero IS
BEGIN
	igual <= '1' WHEN a = (others => '0') ELSE '0';
END estrutura;