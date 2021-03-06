library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Counter is
port(
		Enable, Clock, Reset : in std_logic;
		Output : out std_logic_vector(3 downto 0)
		);
end entity;

architecture Arch_Counter of Counter is
signal Output_Sig : std_logic_vector(3 downto 0);

begin
Output <= Output_Sig;

process (Clock, Enable, Output_Sig, Reset)
	begin
		if Reset = '1' then
			Output_Sig <= "1001";
		elsif(rising_edge(Clock) and Enable = '1') then
			Output_Sig <= Output_Sig - "0001";
			if Output_Sig = "0000" then
				Output_Sig <= "1001";
			end if;
		end if;
	
end process;	
end  Arch_Counter;
