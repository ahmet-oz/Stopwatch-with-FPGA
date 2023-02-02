library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity counter is
    generic (
        birler_lim  :   integer := 9;
        onlar_lim   :   integer := 5
    );

    port ( 
        clk     : in std_logic;
        add     : in std_logic;
        reset     : in std_logic;
        birler  : out std_logic_vector(3 downto 0);
        onlar   : out std_logic_vector(3 downto 0)
    );
end counter;

architecture Behavioral of counter is
    signal birler_s : std_logic_vector(3 downto 0)  := (others  => '0');
    signal onlar_s  : std_logic_vector(3 downto 0)  := (others  => '0');

begin
process(clk) begin
    if  rising_edge(clk)    then
        if  add = '1'   then
            if  birler_s = birler_lim   then
                if  onlar_s = onlar_lim  then
                    birler_s  <=  x"0";
                    onlar_s   <=  x"0";
                else
                    birler_s  <=  x"0";
                    onlar_s   <=  onlar_s + 1;
                end if;
            else
                birler_s  <=  birler_s + 1;
            end if;
        end if;
    end if;

    if  reset = '1'   then
        birler_s  <=  x"0";
        onlar_s   <=   x"0";
    end if;
end process;

birler  <=  birler_s;
onlar   <=  onlar_s;

end Behavioral;
