library ieee;
use ieee.std_logic_1164.all;

use work.CP.all;


entity nBitAdder is
	port(A, B: in std_logic_vector(15 downto 0);
		 Cin: in std_logic;
		 result: buffer std_logic_vector(15 downto 0);
		 Cout, Overflow, Zero: buffer std_logic);	 
end nBitAdder;
	
architecture nBitAdder of nBitAdder is
signal c: std_logic_vector(15 downto 0);
begin
	fullAdd1: fullAdder port map(A(0), B(0), Cin, result(0) ,c(0));
	
		fullAdd2: fullAdder port map(A(1), B(1), c(0), result(1), c(1));
		fullAdd3: fullAdder port map(A(2), B(2), c(1), result(2), c(2));
		fullAdd4: fullAdder port map(A(3), B(3), c(2), result(3), c(3));
		fullAdd5: fullAdder port map(A(4), B(4), c(3), result(4), c(4));
		fullAdd6: fullAdder port map(A(5), B(5), c(4), result(5), c(5));
		fullAdd7: fullAdder port map(A(6), B(6), c(5), result(6), c(6));
		fullAdd8: fullAdder port map(A(7), B(7), c(6), result(7), c(7));
		fullAdd9: fullAdder port map(A(8), B(8), c(7), result(8), c(8));
		fullAdd10: fullAdder port map(A(9), B(9), c(8), result(9), c(9));
		fullAdd11: fullAdder port map(A(10), B(10), c(9), result(10), c(10));
		fullAdd12: fullAdder port map(A(11), B(11), c(10), result(11), c(11));
		fullAdd13: fullAdder port map(A(12), B(12), c(11), result(12), c(12));
		fullAdd14: fullAdder port map(A(13), B(13), c(12), result(13), c(13));
		fullAdd15: fullAdder port map(A(14), B(14), c(13), result(14), c(14));
	
	fullAdd16: fullAdder port map(A(15), B(15), c(14), result(15), Cout);	
	
	Overflow <= Cout xor c(14);
	
	Zero <= '1' when result = x"0000" else
			'0';
			
end nBitAdder;