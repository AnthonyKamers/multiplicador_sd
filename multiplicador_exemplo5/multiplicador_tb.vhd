library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity multiplicador_tb is
end multiplicador_tb;

architecture tb of multiplicador_tb is

	COMPONENT multiplicador IS
	PORT (
		inicio, Reset, clk: in std_logic;
		entA, entB: in std_logic_vector(3 downto 0);
		pronto: out std_logic;
		mult: out std_logic_vector(3 downto 0)
	);
	END COMPONENT;

    signal Reset, clk, inicio: std_logic;
	 signal entA, entB: std_logic_vector(3 downto 0);
	 signal pronto: std_logic;
	 signal mult: std_logic_vector(3 downto 0);
begin
    -- conectando os sinais do test bench aos sinais do fsm
	 M1: multiplicador port map (Reset, clk, inicio, entA, entB, pronto, mult);
		
	 Reset <= '1', '0' after 10 ns;
	 inicio <= '1' after 10 ns, '0' after 30 ns;
	 entA <= "0011";
	 entB <= "0100";
	 
	 -- processo gerador de clock
	 tb1 : process
        constant periodo: time := 20 ns; -- periodo do clock
        begin
				clk <= '1';
            wait for periodo/2; -- 50% do periodo pra cada nivel
				clk <= '0';
				wait for periodo/2;
        end process;
end tb;