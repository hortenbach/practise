library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity play is
port(
    clk : in std_ulogic;
    a   : in std_logic_vector(7 downto 0);
    b   : in std_logic_vector(7 downto 0);
    c   : out std_logic_vector(7 downto 0)
);
end;

architecture arch of play is

    function myadd(opa, opb : unsigned) return unsigned is
    variable result : unsigned(8 downto 0);
    begin
        result := opa + opb; 
        return result;
    end function;

    signal c_r : std_logic_vector(8 downto 0);

    begin

        c <= c_r(7 downto 0);
    
        process (clk)
        begin
            if rising_edge(clk) then
                -- c_r <= std_logic_vector(myadd(unsigned(a), unsigned(b)));
                c_r <= std_logic_vector((unsigned(a) + unsigned(b));
            end if;
        end process;

end arch; 