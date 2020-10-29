LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY multiplicador IS
PORT (Reset, clk, inicio : IN STD_LOGIC;
		entA, entB: IN std_logic_vector(3 downto 0);
      pronto : OUT STD_LOGIC;
		saida: OUT std_logic_vector(3 downto 0));
END multiplicador;

ARCHITECTURE bhv OF multiplicador IS

signal ini, CP, CA, dec: std_logic;
signal Az, Bz: std_logic;

component bo IS
PORT (clk : IN STD_LOGIC;
      ini, CP, CA, dec : IN STD_LOGIC;
      entA, entB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      Az, Bz : OUT STD_LOGIC;
      saida: OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END component;

component bc IS
PORT (Reset, clk, inicio : IN STD_LOGIC;
      Az, Bz : IN STD_LOGIC;
      pronto : OUT STD_LOGIC;
      ini, CA, dec, CP: OUT STD_LOGIC );
END component;

BEGIN

	BOportMap: bo port map(clk, ini, CP, CA, dec, entA, entB, Az, Bz, saida);
	BCportMap: bc port map(Reset, clk, inicio, Az, Bz, pronto, ini, CA, dec, CP);
	
END bhv;