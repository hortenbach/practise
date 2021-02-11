library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.env.finish;

entity play_tb is 
-- port();
end;

architecture test of play_tb is

signal s_clk : std_logic; 
signal s_a   : std_logic_vector(7 downto 0) := (others => '0'); 
signal s_b   : std_logic_vector(7 downto 0) := (others => '0'); 
signal s_c   : std_logic_vector(7 downto 0); 

begin

  inst_play : entity work.play
  port map (
    clk => s_clk,
    a   => s_a,
    b   => s_b,
    c   => s_c
  );

  process
  begin
    s_clk <= '1'; wait for 5 ns;
    s_clk <= '0'; wait for 5 ns;
  end process;

  process
  begin
    if rising_edge(s_clk) then
      s_a <= std_logic_vector(unsigned(s_a) + 1); 
      s_b <= std_logic_vector(unsigned(s_a) + 3); 
    end if;
  end process;

  SEQUENCER_PROC : process
  begin
    wait for 100 ns;
    report "Calling 'finish'";
    finish;
  end process;

end test;