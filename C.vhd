library ieee;
use ieee.std_logic_1164.all;

entity C is
	port(A: in std_logic_vector(15 downto 0);
	output: out std_logic_vector(15 downto 0));
end C ;

architecture C of C is
begin
	output <= not(A);
end C;