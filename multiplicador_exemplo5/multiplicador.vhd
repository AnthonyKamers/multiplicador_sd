LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY multiplicador IS
PORT (
	inicio, Reset, clk: in std_logic;
	entA, entB: in std_logic_vector(3 downto 0);
	pronto: out std_logic;
	mult: out std_logic_vector(3 downto 0)
);
END multiplicador;

ARCHITECTURE estrutura OF multiplicador IS

	COMPONENT bo IS
	PORT (clk : IN STD_LOGIC;
			CA, CP, CB, CMULT, MP, MA: IN STD_LOGIC;
			entA, entB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			Az, Bz : OUT STD_LOGIC;
			regMult: OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
			);
	END COMPONENT;
	
	COMPONENT bc IS
	PORT (Reset, clk, inicio : IN STD_LOGIC;
			aZ, bZ: IN STD_LOGIC;
			pronto : OUT STD_LOGIC;
			CA, CP, CB, CMULT, MP, MA: OUT STD_LOGIC );
	END COMPONENT;
	
	signal CA, CP, CB, CMULT, MP, MA, aZ, bZ: std_logic;

BEGIN

	BCconnection: bc port map (Reset, clk, inicio, aZ, bZ, pronto, CA, CP, CB, CMULT, MP, MA);
	BOconnection: bo port map (clk, CA, CP, CB, CMULT, MP, MA, entA, entB, aZ, bZ, mult);

END estrutura;