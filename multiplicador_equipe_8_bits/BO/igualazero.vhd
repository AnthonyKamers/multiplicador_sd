LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY igualazero IS
PORT (a : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
igual : OUT STD_LOGIC);
END igualazero;

ARCHITECTURE estrutura OF igualazero IS

SIGNAL tudoZero: STD_LOGIC_VECTOR(15 DOWNTO 0);

BEGIN
	tudoZero <= (others => '0');

	igual <= '1' WHEN A = tudoZero ELSE '0';
END estrutura;