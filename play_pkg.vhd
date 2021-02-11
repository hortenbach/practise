--! @library
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package play_pkg is
  -- declare contents
    function myadd(opa, opb : unsigned) return unsigned;
end package play_pkg;

package body play_pkg is
 
    function myadd(opa, opb : unsigned) return unsigned is
    variable result : unsigned(7 downto 0);
    begin
        result := opa + opb; 
        return result;
    end;
 
end package body;