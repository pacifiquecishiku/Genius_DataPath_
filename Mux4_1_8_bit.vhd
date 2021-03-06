library ieee;
use ieee.std_logic_1164.all;

entity Mux4_1_8_bit is
port(
		Input1, Input2, Input3, Input4 : in std_logic_vector(7 downto 0);
		Selector : in std_logic_vector(1 downto 0);
		Output : out std_logic_vector(7 downto 0)
		);
end entity;

architecture MUX_arch of Mux4_1_8_bit is
begin

Output <= Input1 when Selector = "00" else
			 Input2 when Selector = "01" else
			 Input3 when Selector = "10" else
			 Input4;
end MUX_arch;