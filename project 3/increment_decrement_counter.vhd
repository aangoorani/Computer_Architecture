library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity increment_decremnet_counter is
    port(RST, CLK, CONTROLL : IN STD_LOGIC;
            COUNT : OUT STD_LOGIC_VECTOR (3 DOWNTO 0));
end entity increment_decremnet_counter;

architecture structure of increment_decremnet_counter is

    component tff is
        Port ( t : in  STD_LOGIC;
            clock : in  STD_LOGIC;
			reset : in  STD_LOGIC;
            q : out  STD_LOGIC;
            qb : out  STD_LOGIC);
    end component tff;

    signal temp, tempB : STD_LOGIC_VECTOR (3 DOWNTO 0);--outputs
    signal t1, t2, t3, t4 : STD_LOGIC;

    begin

        tff_A: tff port map(t1, CLK, RST, temp(3), tempB(3));
        tff_B: tff port map(t2, CLK, RST, temp(2), tempB(2));
        tff_C: tff port map(t3, CLK, RST, temp(1), tempB(1));
        tff_D: tff port map(t4, CLK, RST, temp(0), tempB(0));

        process(CLK, RST, CONTROLL)
        begin
            if (RST = '1') then
                temp <= "0000";
                tempB <= "1111";
            elsif (Clock'event and CLK = 1) then
                t1 <= ((not controll) and temp(2) and temp(1) and temp(0)) or (controll and (not temp(2)) and (not temp(1)) and (not temp(0)));
                t2 <= ((not controll) and temp(1) and temp(0)) or ((controll )and (not temp(1)) and (not temp(0)));
                t3 <= controll xor temp(0);
                t4 <= '1';
            end if;
                COUNT <= temp;
        end process
    end structure;