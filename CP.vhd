library ieee;
use ieee.std_logic_1164.all;

package CP is
	type inputOfmux is array (7 downto 0) of std_logic_vector(15 downto 0);

	component fullAdder is
	port(A, B: in std_logic;
		     cin : in std_logic;
		     sum: out std_logic;
		     cout: out std_logic);
end component;
	component nBitAdder
	port(A, B: in std_logic_vector(15 downto 0);
		 Cin: in std_logic;
		 result: buffer std_logic_vector(15 downto 0);
		 Cout, Overflow, Zero: buffer std_logic);
	end component nBitAdder;
	
	component MP
		port(input: in inputOfmux;
			ALU_OP: in std_logic_vector(2 downto 0);
			output: out std_logic_vector(15 downto 0));
	end component MP;
	
	
	component XR
		port(A, B: in std_logic_vector(15 downto 0);
			 output: out std_logic_vector(15 downto 0));
	end component XR;
	
	component C
		port(A: in std_logic_vector(15 downto 0);
			 output: out std_logic_vector(15 downto 0));
	end component C;
	
	
	component SR
		port(A: in std_logic_vector(15 downto 0);
			 output: out std_logic_vector(15 downto 0));
	end component SR;
	
	component SL
		port(A: in std_logic_vector(15 downto 0);
			 output: out std_logic_vector(15 downto 0));
	end component SL;
	
end CP;