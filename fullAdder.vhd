library ieee;
use ieee.std_logic_1164.all;

entity fullAdder is
	port(A, B: in std_logic;
		     cin : in std_logic;
		     sum: out std_logic;
		     cout: out std_logic);
end fullAdder;
	

architecture fullAdder of fullAdder is
begin
	
	sum <= (A xor B) xor cin;
	
	cout <= (A and B) or (cin and (A xor B));
	
end fullAdder;