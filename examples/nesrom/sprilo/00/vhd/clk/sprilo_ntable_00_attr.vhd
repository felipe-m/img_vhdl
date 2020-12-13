--- Autcmatically generated VHDL ROM from a NES memory file----
---   ATTRIBUTE TABLE SEPARATED FROM NAME TABLE
-- https://wiki.nesdev.com/w/index.php/PPU_attribute_tables


---  Original memory dump file name: sprilo_ntable_00.dmp --
------ Felipe Machado -----------------------------------
------ Area de Tecnologia Electronica -----------
------ Universidad Rey Juan Carlos ----------------------
------ https://github.com/felipe-m ----------------------
---------------------------------------------------------
----- Memory with clock ------

----- Ports ---------------------------------------------
-- Inputs   ---------------------------------------------
--    clk  :  clock signal
--    addr :  memory address
-- Salidas  ---------------------------------------------
--    dout :  memory data out  (a clock cycle later)


library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;
  use IEEE.NUMERIC_STD.ALL;


entity ROM_ATABLE_SPRILO_00 is
  port (
    clk  : in  std_logic;   -- clock
    addr : in  std_logic_vector(7-1 downto 0);  --128 memory positions
    dout : out std_logic_vector(8-1 downto 0) -- memory data width
  );
end ROM_ATABLE_SPRILO_00;

architecture BEHAVIORAL of ROM_ATABLE_SPRILO_00 is
  signal addr_int  : natural range 0 to 2**7-1;
  type memostruct is array (natural range<>) of std_logic_vector(8-1 downto 0);
  constant table_mem : memostruct := (
                --    address   :    value 
                --  dec -  hex  :  dec - hex
    "00010101", --    0 -  0x0  :   21 - 0x15
    "00000101", --    1 -  0x1  :    5 - 0x5
    "00000101", --    2 -  0x2  :    5 - 0x5
    "00000101", --    3 -  0x3  :    5 - 0x5
    "00000101", --    4 -  0x4  :    5 - 0x5
    "01000101", --    5 -  0x5  :   69 - 0x45
    "01010101", --    6 -  0x6  :   85 - 0x55
    "01010101", --    7 -  0x7  :   85 - 0x55
    "00010001", --    8 -  0x8  :   17 - 0x11
    "01000000", --    9 -  0x9  :   64 - 0x40
    "01010000", --   10 -  0xa  :   80 - 0x50
    "01010000", --   11 -  0xb  :   80 - 0x50
    "00010000", --   12 -  0xc  :   16 - 0x10
    "00000100", --   13 -  0xd  :    4 - 0x4
    "00000101", --   14 -  0xe  :    5 - 0x5
    "01000101", --   15 -  0xf  :   69 - 0x45
    "00010001", --   16 - 0x10  :   17 - 0x11
    "01000100", --   17 - 0x11  :   68 - 0x44
    "01010101", --   18 - 0x12  :   85 - 0x55
    "01010101", --   19 - 0x13  :   85 - 0x55
    "01010001", --   20 - 0x14  :   81 - 0x51
    "01010000", --   21 - 0x15  :   80 - 0x50
    "00010000", --   22 - 0x16  :   16 - 0x10
    "01000100", --   23 - 0x17  :   68 - 0x44
    "00010001", --   24 - 0x18  :   17 - 0x11
    "01000100", --   25 - 0x19  :   68 - 0x44
    "01010101", --   26 - 0x1a  :   85 - 0x55
    "01010101", --   27 - 0x1b  :   85 - 0x55
    "01010101", --   28 - 0x1c  :   85 - 0x55
    "00000101", --   29 - 0x1d  :    5 - 0x5
    "00000001", --   30 - 0x1e  :    1 - 0x1
    "01000100", --   31 - 0x1f  :   68 - 0x44
    "00010001", --   32 - 0x20  :   17 - 0x11
    "00000000", --   33 - 0x21  :    0 - 0x0
    "00000000", --   34 - 0x22  :    0 - 0x0
    "01010101", --   35 - 0x23  :   85 - 0x55
    "01010101", --   36 - 0x24  :   85 - 0x55
    "00000000", --   37 - 0x25  :    0 - 0x0
    "01010000", --   38 - 0x26  :   80 - 0x50
    "01010100", --   39 - 0x27  :   84 - 0x54
    "01010101", --   40 - 0x28  :   85 - 0x55
    "01010101", --   41 - 0x29  :   85 - 0x55
    "00000000", --   42 - 0x2a  :    0 - 0x0
    "01010101", --   43 - 0x2b  :   85 - 0x55
    "01010101", --   44 - 0x2c  :   85 - 0x55
    "01010000", --   45 - 0x2d  :   80 - 0x50
    "00010000", --   46 - 0x2e  :   16 - 0x10
    "01000100", --   47 - 0x2f  :   68 - 0x44
    "01010101", --   48 - 0x30  :   85 - 0x55
    "01010101", --   49 - 0x31  :   85 - 0x55
    "00000000", --   50 - 0x32  :    0 - 0x0
    "00000000", --   51 - 0x33  :    0 - 0x0
    "00000000", --   52 - 0x34  :    0 - 0x0
    "00000000", --   53 - 0x35  :    0 - 0x0
    "00000000", --   54 - 0x36  :    0 - 0x0
    "01000100", --   55 - 0x37  :   68 - 0x44
    "00000101", --   56 - 0x38  :    5 - 0x5
    "00000101", --   57 - 0x39  :    5 - 0x5
    "00000101", --   58 - 0x3a  :    5 - 0x5
    "00000101", --   59 - 0x3b  :    5 - 0x5
    "00000101", --   60 - 0x3c  :    5 - 0x5
    "00000101", --   61 - 0x3d  :    5 - 0x5
    "00000101", --   62 - 0x3e  :    5 - 0x5
    "00000101", --   63 - 0x3f  :    5 - 0x5
    "00000000", --   64 - 0x40  :    0 - 0x0
    "00000000", --   65 - 0x41  :    0 - 0x0
    "00000000", --   66 - 0x42  :    0 - 0x0
    "00000000", --   67 - 0x43  :    0 - 0x0
    "00000000", --   68 - 0x44  :    0 - 0x0
    "00000000", --   69 - 0x45  :    0 - 0x0
    "00000000", --   70 - 0x46  :    0 - 0x0
    "00000000", --   71 - 0x47  :    0 - 0x0
    "00000000", --   72 - 0x48  :    0 - 0x0
    "00000000", --   73 - 0x49  :    0 - 0x0
    "00000000", --   74 - 0x4a  :    0 - 0x0
    "00000000", --   75 - 0x4b  :    0 - 0x0
    "00000000", --   76 - 0x4c  :    0 - 0x0
    "00000000", --   77 - 0x4d  :    0 - 0x0
    "00000000", --   78 - 0x4e  :    0 - 0x0
    "00000000", --   79 - 0x4f  :    0 - 0x0
    "00000000", --   80 - 0x50  :    0 - 0x0
    "00000000", --   81 - 0x51  :    0 - 0x0
    "00000000", --   82 - 0x52  :    0 - 0x0
    "00000000", --   83 - 0x53  :    0 - 0x0
    "00000000", --   84 - 0x54  :    0 - 0x0
    "00000000", --   85 - 0x55  :    0 - 0x0
    "00000000", --   86 - 0x56  :    0 - 0x0
    "00000000", --   87 - 0x57  :    0 - 0x0
    "00000000", --   88 - 0x58  :    0 - 0x0
    "00000000", --   89 - 0x59  :    0 - 0x0
    "00000000", --   90 - 0x5a  :    0 - 0x0
    "00000000", --   91 - 0x5b  :    0 - 0x0
    "00000000", --   92 - 0x5c  :    0 - 0x0
    "00000000", --   93 - 0x5d  :    0 - 0x0
    "00000000", --   94 - 0x5e  :    0 - 0x0
    "00000000", --   95 - 0x5f  :    0 - 0x0
    "00000000", --   96 - 0x60  :    0 - 0x0
    "00000000", --   97 - 0x61  :    0 - 0x0
    "00000000", --   98 - 0x62  :    0 - 0x0
    "00000000", --   99 - 0x63  :    0 - 0x0
    "00000000", --  100 - 0x64  :    0 - 0x0
    "00000000", --  101 - 0x65  :    0 - 0x0
    "00000000", --  102 - 0x66  :    0 - 0x0
    "00000000", --  103 - 0x67  :    0 - 0x0
    "00000000", --  104 - 0x68  :    0 - 0x0
    "00000000", --  105 - 0x69  :    0 - 0x0
    "00000000", --  106 - 0x6a  :    0 - 0x0
    "00000000", --  107 - 0x6b  :    0 - 0x0
    "00000000", --  108 - 0x6c  :    0 - 0x0
    "00000000", --  109 - 0x6d  :    0 - 0x0
    "00000000", --  110 - 0x6e  :    0 - 0x0
    "00000000", --  111 - 0x6f  :    0 - 0x0
    "00000000", --  112 - 0x70  :    0 - 0x0
    "00000000", --  113 - 0x71  :    0 - 0x0
    "00000000", --  114 - 0x72  :    0 - 0x0
    "00000000", --  115 - 0x73  :    0 - 0x0
    "00000000", --  116 - 0x74  :    0 - 0x0
    "00000000", --  117 - 0x75  :    0 - 0x0
    "00000000", --  118 - 0x76  :    0 - 0x0
    "00000000", --  119 - 0x77  :    0 - 0x0
    "00000000", --  120 - 0x78  :    0 - 0x0
    "00000000", --  121 - 0x79  :    0 - 0x0
    "00000000", --  122 - 0x7a  :    0 - 0x0
    "00000000", --  123 - 0x7b  :    0 - 0x0
    "00000000", --  124 - 0x7c  :    0 - 0x0
    "00000000", --  125 - 0x7d  :    0 - 0x0
    "00000000", --  126 - 0x7e  :    0 - 0x0
    "00000000"  --  127 - 0x7f  :    0 - 0x0
    );
begin
  addr_int <= to_integer(unsigned(addr));
  P_ROM: process(clk)
  begin
    if clk'event and clk='1' then
      dout <= table_mem(addr_int);
    end if;
  end process;
end BEHAVIORAL;
