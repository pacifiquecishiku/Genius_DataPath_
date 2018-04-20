library ieee;
use ieee.std_logic_1164.all;

entity Register_N_bits is
generic(N : positive := 10);
port(
		Clock,Enable,Reset: in std_logic;
		input: in std_logic_vector(N-1 downto 0);
		output: out std_logic_vector(N-1 downto 0)
		);
end entity;

architecture arch_Register of Register_N_bits is
begin

process(Clock,Enable,Reset) is
begin
	if Reset = '1' then
		output <= X"0";
	elsif rising_edge(Clock) then
		if Enable = '1'
			output <= input;
		end if;
	end if;