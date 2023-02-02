library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity sevensegment is
    port ( 
        bcd         : in std_logic_vector(3 downto 0);
        sevenseg    : out std_logic_vector(7 downto 0)
    );
end sevensegment;

architecture Behavioral of sevensegment is


begin
process(bcd) begin

    case  bcd  is
        when "0000" =>
            sevenseg  <=  "00000011";  --0
        when "0001" =>
            sevenseg  <=  "10011111";  --1
        when "0010" =>
            sevenseg  <=  "00100101";  --2
        when "0011" =>
            sevenseg  <=  "00001101";  --3
        when "0100" =>
            sevenseg  <=  "10011001";  --4
        when "0101" =>
            sevenseg  <=  "01001001";  --5
        when "0110" =>
            sevenseg  <=  "01000001";  --6
        when "0111" =>
            sevenseg  <=  "00011111";  --7
        when "1000" =>
            sevenseg  <=  "00000001";  --8
        when "1001" =>
            sevenseg  <=  "00001001";  --9
        when others =>
            sevenseg  <=  "11111111";
        end case;

end process;

end Behavioral;
