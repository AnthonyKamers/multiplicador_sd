LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY bc IS
PORT (Reset, clk, inicio : IN STD_LOGIC;
      aZ, bZ: IN STD_LOGIC;
      pronto : OUT STD_LOGIC;
      ini, CA, CP, CB, CMULT, MP, MA: OUT STD_LOGIC );
END bc;


ARCHITECTURE estrutura OF bc IS
	TYPE state_type IS (S0, S1, S2, S3, S4 );
	SIGNAL state: state_type;
BEGIN
	-- Logica de proximo estado (e registrador de estado)
	PROCESS (clk, Reset)
	BEGIN
		if(Reset = '1') THEN
			state <= S0 ;
		ELSIF (clk'EVENT AND clk = '1') THEN
			CASE state IS
				WHEN S0 =>
					IF (inicio = '1') THEN
						state <= S1;
					ELSE 
						state <= S0;
					END IF;
					pronto <= '1';
					ini <= '0';
					CA <= '0';
					CP <= '0';
					CB <= '0';
					CMULT <= '0';
					MP <= '0';
					MA <= '0';
				
				WHEN S1 =>
					pronto <= '0';
					ini <= '1';
					CA <= '1';
					CP <= '1';
					CB <= '1';
					CMULT <= '0';
					MP <= '1';
					MA <= '1';
					
					state <= S2;
					
				WHEN S2 =>
					ini <= '0';

					IF (not aZ and not bZ) THEN
						state <= S3;
					ELSIF (aZ or bZ) THEN
						state <= S4;
					ELSE
						state <= S2;
					END IF;
					
				WHEN S3 =>
					CA <= '1';
					CP <= '1';
					CB <= '0';
					CMULT <= '0';
					MP <= '0';
					MA <= '0';
					
					state <= S2;
					
				WHEN S4 =>
					pronto <= '0';
					CA <= '0';
					CP <= '0';
					CB <= '0';
					MP <= '0';
					MA <= '0';
					CMULT <= '1';
					
					state <= S0;
					
			END CASE;
		END IF;
	END PROCESS;
END estrutura;