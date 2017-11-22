library ieee;
use ieee.std_logic_1164.all;

entity tb_washer_output_logic is
end tb_washer_output_logic;

architecture tb of tb_washer_output_logic is

    component washer_output_logic
        port (state       : in std_logic_vector (2 downto 0);
              door_lock   : out std_logic;
              water_pump  : out std_logic;
              soap        : out std_logic;
              rotate_drum : out std_logic;
              drain       : out std_logic);
    end component;

    signal state       : std_logic_vector (2 downto 0) := (others =>'0');
    signal door_lock   : std_logic;
    signal water_pump  : std_logic;
    signal soap        : std_logic;
    signal rotate_drum : std_logic;
    signal drain       : std_logic;

begin

    dut : washer_output_logic
    port map (state       => state,
              door_lock   => door_lock,
              water_pump  => water_pump,
              soap        => soap,
              rotate_drum => rotate_drum,
              drain       => drain);

    stimuli : process
    begin
      wait for 100 ns;


      state <= "000";

      wait for 100 ns;
      assert (door_lock = '0') report "case 1";
      assert (water_pump = '0') report "case 1";
      assert (soap = '0') report "case 1";
      assert (rotate_drum = '0') report "case 1";
      assert (drain = '0') report "case 1";


      state <= "001";



      wait for 100 ns;
      assert (door_lock = '1') report "case 2";
      assert (water_pump = '1') report "case 2";
      assert (soap = '1') report "case 2";
      assert (rotate_drum = '0') report "case 2";
      assert (drain = '0') report "case 2";

      state <= "010";



      wait for 100 ns;
      assert (door_lock = '1') report "case 3";
      assert (water_pump = '0') report "case 3";
      assert (soap = '0') report "case 3";
      assert (rotate_drum = '1') report "case 3";
      assert (drain = '0') report "case 3";

      state <= "011";



      wait for 100 ns;
      assert (door_lock = '1') report "case 4";
      assert (water_pump = '0') report "case 4";
      assert (soap = '0') report "case 4";
      assert (rotate_drum = '0') report "case 4";
      assert (drain = '1') report "case 4";
      state <= "100";



      wait for 100 ns;
      assert (door_lock = '1') report "case 5";
      assert (water_pump = '1') report "case 5";
      assert (soap = '0') report "case 5";
      assert (rotate_drum = '0') report "case 5";
      assert (drain = '0') report "case 5";

      state <= "101";



      wait for 100 ns;
      assert (door_lock = '1') report "case 6";
      assert (water_pump = '0') report "case 6";
      assert (soap = '0') report "case 6";
      assert (rotate_drum = '1') report "case 6";
      assert (drain = '0') report "case 6";
      state <= "110";

      wait for 100 ns;
      assert (door_lock = '1') report "case 7";
      assert (water_pump = '0') report "case 7";
      assert (soap = '0') report "case 7";
      assert (rotate_drum = '0') report "case 7";
      assert (drain = '1') report "case 7";

      state <= "111";

      wait for 100 ns;
      assert (door_lock = '1') report "case 8";
      assert (water_pump = '0') report "case 8";
      assert (soap = '0') report "case 8";
      assert (rotate_drum = '1') report "case 8";
      assert (drain = '1') report "case 8";
      -- EDIT Add stimuli here

        wait;
    end process;

end tb;
