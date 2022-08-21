library ieee;
use ieee.std_logic_1164.all;

entity XR is
	port(A, B: in std_logic_vector(15 downto 0);
	output: out std_logic_vector(15 downto 0));
end XR ;

architecture XR of XR is
begin
	output <= A XOR B;
end XR;