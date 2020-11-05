LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY bo IS
PORT (clk : IN STD_LOGIC;
      CA, CP, CB, CMULT, MP, MA: IN STD_LOGIC;
      entA, entB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      Az, Bz : OUT STD_LOGIC;
		regMult: OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
		);
END bo;

ARCHITECTURE estrutura OF bo IS
	
	COMPONENT registrador_r IS
	PORT (clk, reset, carga : IN STD_LOGIC;
		  d : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		  q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT registrador IS
	PORT (clk, carga : IN STD_LOGIC;
		  d : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		  q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT mux2para1 IS
	PORT ( a, b : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
				sel: IN STD_LOGIC;
				y : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT somadorsubtrator IS
	PORT (a, b : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			op: IN STD_LOGIC;
			s : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
	END COMPONENT;
	
   COMPONENT igualzero IS
	PORT (a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	igual : OUT STD_LOGIC);
	END COMPONENT;
		
	SIGNAL saidaMuxP, saidaMuxA, saidaRegA, saidaRegP, saidaRegB, fixedValue: STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL saidaSomador, zeroTudo, saidaSubtrator: STD_LOGIC_VECTOR(3 DOWNTO 0);

BEGIN
	zeroTudo <= "0000";
	fixedValue <= "0001";
	
	------------------------------------------------------------------------------
	
	muxP: mux2para1 PORT MAP (saidaSomador, zeroTudo, MP, saidaMuxP);
	-- regP: registrador_r PORT MAP (clk, ini, CP, saidaMuxP, saidaRegP);
	regP: registrador PORT MAP (clk, CP, saidaMuxP, saidaRegP);
	regMultPortMap: registrador PORT MAP (clk, CMULT, saidaRegP, regMult);
	
	regB: registrador PORT MAP (clk, CB, entB, saidaRegB);
	geraBz: igualzero PORT MAP (saidaRegB, Bz);
	somadorPB: somadorsubtrator PORT MAP (saidaRegP, saidaRegB, '0', saidaSomador);
	
	------------------------------------------------------------------------------
	
	muxA: mux2para1 PORT MAP (saidaSubtrator, entA, MA, saidaMuxA);
	regA: registrador PORT MAP (clk, CA, saidaMuxA, saidaRegA);
	geraAz: igualzero PORT MAP (saidaRegA, Az);
	subtratorA1: somadorsubtrator PORT MAP (saidaRegA, fixedValue, '1', saidaSubtrator);
	
	------------------------------------------------------------------------------

END estrutura;