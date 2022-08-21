library ieee;
use ieee.std_logic_1164.all;
use work.CP.all;


entity MP is
	port(input: in inputOfmux;
		 ALU_OP: in std_logic_vector(2 downto 0);
		 output: out std_logic_vector(15 downto 0));
end MP;
	
architecture MP of MP is
begin
	output <= input(0) when ALU_OP = b"000" else
			  input(1) when ALU_OP = b"001" else
			  input(2) when ALU_OP = b"010" else
			  input(3) when ALU_OP = b"011" else
			  input(4) when ALU_OP = b"100" else
			  input(5) when ALU_OP = b"101" else
			  input(6) when ALU_OP = b"110" else
			  input(7) when ALU_OP = b"111";
end MP;