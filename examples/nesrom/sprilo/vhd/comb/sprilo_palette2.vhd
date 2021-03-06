--- Autcmatically generated VHDL ROM from a NES memory file----
---   PALETTE MEMORY
-- https://wiki.nesdev.com/w/index.php/PPU_palettes


---  Original memory dump file name: sprilo_palette2.dmp --
------ Felipe Machado -----------------------------------
------ Area de Tecnologia Electronica -----------
------ Universidad Rey Juan Carlos ----------------------
------ https://github.com/felipe-m ----------------------
---------------------------------------------------------
----- Memory without clock -----

----- Ports ---------------------------------------------
-- Inputs   ---------------------------------------------
--   -- clk  :  clock signal
--    addr :  memory address
-- Salidas  ---------------------------------------------
--    dout :  memory data out  (no clock: in the same clock cycle)


library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;
  use IEEE.NUMERIC_STD.ALL;


entity ROM_PALETTE_SPRILO is
  port (
    --clk  : in  std_logic;   -- clock
    addr : in  std_logic_vector(5-1 downto 0);  --32 memory positions
    dout : out std_logic_vector(8-1 downto 0) -- memory data width
  );
end ROM_PALETTE_SPRILO;

architecture BEHAVIORAL of ROM_PALETTE_SPRILO is
  signal addr_int  : natural range 0 to 2**5-1;
  type memostruct is array (natural range<>) of std_logic_vector(8-1 downto 0);
  constant table_mem : memostruct := (
                --    address   :    value 
                --  dec -  hex  :  dec - hex
    "00010101", --    0 -  0x0  :   21 - 0x15
    "00101101", --    1 -  0x1  :   45 - 0x2d
    "00100111", --    2 -  0x2  :   39 - 0x27
    "00110000", --    3 -  0x3  :   48 - 0x30
    "00010101", --    4 -  0x4  :   21 - 0x15
    "00110000", --    5 -  0x5  :   48 - 0x30
    "00011010", --    6 -  0x6  :   26 - 0x1a
    "00001001", --    7 -  0x7  :    9 - 0x9
    "00010101", --    8 -  0x8  :   21 - 0x15
    "00101101", --    9 -  0x9  :   45 - 0x2d
    "00100111", --   10 -  0xa  :   39 - 0x27
    "00110000", --   11 -  0xb  :   48 - 0x30
    "00010101", --   12 -  0xc  :   21 - 0x15
    "00100111", --   13 -  0xd  :   39 - 0x27
    "00010111", --   14 -  0xe  :   23 - 0x17
    "00001111", --   15 -  0xf  :   15 - 0xf
    "00010101", --   16 - 0x10  :   21 - 0x15
    "00111100", --   17 - 0x11  :   60 - 0x3c
    "00111000", --   18 - 0x12  :   56 - 0x38
    "00110000", --   19 - 0x13  :   48 - 0x30
    "00010101", --   20 - 0x14  :   21 - 0x15
    "00100001", --   21 - 0x15  :   33 - 0x21
    "00100110", --   22 - 0x16  :   38 - 0x26
    "00100000", --   23 - 0x17  :   32 - 0x20
    "00010101", --   24 - 0x18  :   21 - 0x15
    "00100110", --   25 - 0x19  :   38 - 0x26
    "00101100", --   26 - 0x1a  :   44 - 0x2c
    "00110000", --   27 - 0x1b  :   48 - 0x30
    "00010101", --   28 - 0x1c  :   21 - 0x15
    "00110111", --   29 - 0x1d  :   55 - 0x37
    "00111010", --   30 - 0x1e  :   58 - 0x3a
    "00110000"  --   31 - 0x1f  :   48 - 0x30
    );
begin
  addr_int <= to_integer(unsigned(addr));
  --P_ROM: process(clk)
  --begin
  --  if clk'event and clk='1' then
      dout <= table_mem(addr_int);
  --  end if;
  --end process;
end BEHAVIORAL;
