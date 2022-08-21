library ieee;
use ieee.std_logic_1164.all;

entity SL is
	port(A: in std_logic_vector(15 downto 0);
	output: out std_logic_vector(15 downto 0));
end SL ;

architecture SL of SL is
begin
	output <= A(14 downto 0) & '0';
end SL;