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
	
	COMPONENT mux2para1 IS
	PORT ( a, b : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
				sel: IN STD_LOGIC;
				y : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT somador IS
	PORT (a, b : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			s : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT subtrator IS
	PORT (a, b : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			s : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
	END COMPONENT;
	
   COMPONENT igualzero IS
	PORT (a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	igual : OUT STD_LOGIC);
	END COMPONENT;
	
	COMPONENT registrador IS
	PORT (clk, carga : IN STD_LOGIC;
		  d : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		  q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
	END COMPONENT;
		
	SIGNAL saidaMuxP, saidaMuxA, saidaRegA, saidaRegP, saidaRegB, valor1: STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL saidaSomador, zeroTudo, saidaSubtrator, saidaRegMult: STD_LOGIC_VECTOR(3 DOWNTO 0);

BEGIN
	zeroTudo <= "0000";
	valor1 <= "0001";
	
	------------------------------------------------------------------------------
	
	muxP: mux2para1 PORT MAP (saidaSomador, zeroTudo, MP, saidaMuxP);
	regP: registrador PORT MAP (clk, CP, saidaMuxP, saidaRegP);
	regMultPortMap: registrador PORT MAP (clk, CMULT, saidaRegP, saidaRegMult);
	
	regB: registrador PORT MAP (clk, CB, entB, saidaRegB);
	geraBz: igualzero PORT MAP (saidaRegB, Bz);
	somadorPB: somador PORT MAP (saidaRegP, saidaRegB, saidaSomador);
	
	------------------------------------------------------------------------------
	
	muxA: mux2para1 PORT MAP (saidaSubtrator, entA, MA, saidaMuxA);
	regA: registrador PORT MAP (clk, CA, saidaMuxA, saidaRegA);
	geraAz: igualzero PORT MAP (saidaRegA, Az);
	subtratorA1: subtrator PORT MAP (saidaRegA, valor1, saidaSubtrator);
	
	
	------------------------------------------------------------------------------
	
	regMult <= saidaRegMult;

END estrutura;