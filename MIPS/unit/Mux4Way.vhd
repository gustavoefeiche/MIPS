library ieee;
use ieee.std_logic_1164.all;


entity Mux4Way is
	generic 
	(
		DATA_WIDTH : natural := 32
	);
	
	port ( 
		in_a, in_b, in_c, in_d : in std_logic_vector(DATA_WIDTH-1 downto 0);
		sel  : in std_logic_vector(1 downto 0);
		output : out std_logic_vector(DATA_WIDTH-1 downto 0)	
	);
end entity;


architecture bhv of Mux4Way is
begin
	
	process(in_a, in_b, in_c, in_d, sel)
	begin
		
		case sel is
			when "00" => output <= in_a;
			when "01" => output <= in_b;
			when "10" => output <= in_c;
			when "11" => output <= in_d;
		end case;
		
	end process;
end architecture;