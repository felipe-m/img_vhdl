--- Autcmatically generated VHDL ROM from a NES memory file----
---   SPRITEs MEMORY (OAM)
-- https://wiki.nesdev.com/w/index.php/PPU_OAM


---  Original memory dump file name: smario_oam_02.dmp --
------ Felipe Machado -----------------------------------
------ Area de Tecnologia Electronica -----------
------ Universidad Rey Juan Carlos ----------------------
------ https://github.com/felipe-m ----------------------
---------------------------------------------------------

----- Ports ---------------------------------------------
-- Inputs   ---------------------------------------------
--    clk  :  clock signal
--    addr :  memory address
-- Salidas  ---------------------------------------------
--    dout :  memory data out (a clock cycle later)


library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;
  use IEEE.NUMERIC_STD.ALL;


entity ROM_OAM_SMARIO is
  port (
    clk  : in  std_logic;   -- clock
    addr : in  std_logic_vector(8-1 downto 0);  --256 memory positions
    dout : out std_logic_vector(8-1 downto 0) -- memory data width
  );
end ROM_OAM_SMARIO;

architecture BEHAVIORAL of ROM_OAM_SMARIO is
  signal addr_int  : natural range 0 to 2**8-1;
  type memostruct is array (natural range<>) of std_logic_vector(8-1 downto 0);
  constant table_mem : memostruct := (
                --    address   :    value 
                --  dec -  hex  :  dec - hex
    "00011000", --    0 -  0x0  :   24 - 0x18 -- Sprite 0x0
    "11111111", --    1 -  0x1  :  255 - 0xff
    "00100011", --    2 -  0x2  :   35 - 0x23
    "01011000", --    3 -  0x3  :   88 - 0x58
    "10010111", --    4 -  0x4  :  151 - 0x97 -- Sprite 0x1
    "11111100", --    5 -  0x5  :  252 - 0xfc
    "01000000", --    6 -  0x6  :   64 - 0x40
    "01101111", --    7 -  0x7  :  111 - 0x6f
    "10010111", --    8 -  0x8  :  151 - 0x97 -- Sprite 0x2
    "11111100", --    9 -  0x9  :  252 - 0xfc
    "01000000", --   10 -  0xa  :   64 - 0x40
    "01110111", --   11 -  0xb  :  119 - 0x77
    "10011111", --   12 -  0xc  :  159 - 0x9f -- Sprite 0x3
    "11111100", --   13 -  0xd  :  252 - 0xfc
    "01000000", --   14 -  0xe  :   64 - 0x40
    "01101111", --   15 -  0xf  :  111 - 0x6f
    "10011111", --   16 - 0x10  :  159 - 0x9f -- Sprite 0x4
    "11111100", --   17 - 0x11  :  252 - 0xfc
    "01000000", --   18 - 0x12  :   64 - 0x40
    "01110111", --   19 - 0x13  :  119 - 0x77
    "10100111", --   20 - 0x14  :  167 - 0xa7 -- Sprite 0x5
    "01000001", --   21 - 0x15  :   65 - 0x41
    "01000000", --   22 - 0x16  :   64 - 0x40
    "01101111", --   23 - 0x17  :  111 - 0x6f
    "10100111", --   24 - 0x18  :  167 - 0xa7 -- Sprite 0x6
    "00110010", --   25 - 0x19  :   50 - 0x32
    "01000000", --   26 - 0x1a  :   64 - 0x40
    "01110111", --   27 - 0x1b  :  119 - 0x77
    "10101111", --   28 - 0x1c  :  175 - 0xaf -- Sprite 0x7
    "01000011", --   29 - 0x1d  :   67 - 0x43
    "01000000", --   30 - 0x1e  :   64 - 0x40
    "01101111", --   31 - 0x1f  :  111 - 0x6f
    "10101111", --   32 - 0x20  :  175 - 0xaf -- Sprite 0x8
    "01000010", --   33 - 0x21  :   66 - 0x42
    "01000000", --   34 - 0x22  :   64 - 0x40
    "01110111", --   35 - 0x23  :  119 - 0x77
    "11111000", --   36 - 0x24  :  248 - 0xf8 -- Sprite 0x9
    "00000000", --   37 - 0x25  :    0 - 0x0
    "00000000", --   38 - 0x26  :    0 - 0x0
    "00000000", --   39 - 0x27  :    0 - 0x0
    "11111000", --   40 - 0x28  :  248 - 0xf8 -- Sprite 0xa
    "00000000", --   41 - 0x29  :    0 - 0x0
    "00000000", --   42 - 0x2a  :    0 - 0x0
    "00000000", --   43 - 0x2b  :    0 - 0x0
    "11111000", --   44 - 0x2c  :  248 - 0xf8 -- Sprite 0xb
    "00000000", --   45 - 0x2d  :    0 - 0x0
    "00000000", --   46 - 0x2e  :    0 - 0x0
    "00000000", --   47 - 0x2f  :    0 - 0x0
    "11111000", --   48 - 0x30  :  248 - 0xf8 -- Sprite 0xc
    "11110110", --   49 - 0x31  :  246 - 0xf6
    "00000010", --   50 - 0x32  :    2 - 0x2
    "01101110", --   51 - 0x33  :  110 - 0x6e
    "11111000", --   52 - 0x34  :  248 - 0xf8 -- Sprite 0xd
    "11111011", --   53 - 0x35  :  251 - 0xfb
    "00000010", --   54 - 0x36  :    2 - 0x2
    "01110110", --   55 - 0x37  :  118 - 0x76
    "11111000", --   56 - 0x38  :  248 - 0xf8 -- Sprite 0xe
    "11111100", --   57 - 0x39  :  252 - 0xfc
    "10000011", --   58 - 0x3a  :  131 - 0x83
    "01100110", --   59 - 0x3b  :  102 - 0x66
    "11111000", --   60 - 0x3c  :  248 - 0xf8 -- Sprite 0xf
    "11111100", --   61 - 0x3d  :  252 - 0xfc
    "11000011", --   62 - 0x3e  :  195 - 0xc3
    "01101110", --   63 - 0x3f  :  110 - 0x6e
    "11111000", --   64 - 0x40  :  248 - 0xf8 -- Sprite 0x10
    "11101111", --   65 - 0x41  :  239 - 0xef
    "10000011", --   66 - 0x42  :  131 - 0x83
    "01100110", --   67 - 0x43  :  102 - 0x66
    "11111000", --   68 - 0x44  :  248 - 0xf8 -- Sprite 0x11
    "11101111", --   69 - 0x45  :  239 - 0xef
    "11000011", --   70 - 0x46  :  195 - 0xc3
    "01101110", --   71 - 0x47  :  110 - 0x6e
    "11111000", --   72 - 0x48  :  248 - 0xf8 -- Sprite 0x12
    "00000000", --   73 - 0x49  :    0 - 0x0
    "00000000", --   74 - 0x4a  :    0 - 0x0
    "00000000", --   75 - 0x4b  :    0 - 0x0
    "11111000", --   76 - 0x4c  :  248 - 0xf8 -- Sprite 0x13
    "00000000", --   77 - 0x4d  :    0 - 0x0
    "00000000", --   78 - 0x4e  :    0 - 0x0
    "00000000", --   79 - 0x4f  :    0 - 0x0
    "01101010", --   80 - 0x50  :  106 - 0x6a -- Sprite 0x14
    "11110111", --   81 - 0x51  :  247 - 0xf7
    "00000010", --   82 - 0x52  :    2 - 0x2
    "01011000", --   83 - 0x53  :   88 - 0x58
    "01101010", --   84 - 0x54  :  106 - 0x6a -- Sprite 0x15
    "11111011", --   85 - 0x55  :  251 - 0xfb
    "00000010", --   86 - 0x56  :    2 - 0x2
    "01100000", --   87 - 0x57  :   96 - 0x60
    "11111000", --   88 - 0x58  :  248 - 0xf8 -- Sprite 0x16
    "10000111", --   89 - 0x59  :  135 - 0x87
    "00000011", --   90 - 0x5a  :    3 - 0x3
    "01011101", --   91 - 0x5b  :   93 - 0x5d
    "11111000", --   92 - 0x5c  :  248 - 0xf8 -- Sprite 0x17
    "10000111", --   93 - 0x5d  :  135 - 0x87
    "01000011", --   94 - 0x5e  :   67 - 0x43
    "01100101", --   95 - 0x5f  :  101 - 0x65
    "11111000", --   96 - 0x60  :  248 - 0xf8 -- Sprite 0x18
    "10000111", --   97 - 0x61  :  135 - 0x87
    "10000011", --   98 - 0x62  :  131 - 0x83
    "01011101", --   99 - 0x63  :   93 - 0x5d
    "11111000", --  100 - 0x64  :  248 - 0xf8 -- Sprite 0x19
    "10000111", --  101 - 0x65  :  135 - 0x87
    "11000011", --  102 - 0x66  :  195 - 0xc3
    "01100101", --  103 - 0x67  :  101 - 0x65
    "11111000", --  104 - 0x68  :  248 - 0xf8 -- Sprite 0x1a
    "00000000", --  105 - 0x69  :    0 - 0x0
    "00000000", --  106 - 0x6a  :    0 - 0x0
    "00000000", --  107 - 0x6b  :    0 - 0x0
    "11111000", --  108 - 0x6c  :  248 - 0xf8 -- Sprite 0x1b
    "00000000", --  109 - 0x6d  :    0 - 0x0
    "00000000", --  110 - 0x6e  :    0 - 0x0
    "00000000", --  111 - 0x6f  :    0 - 0x0
    "11111000", --  112 - 0x70  :  248 - 0xf8 -- Sprite 0x1c
    "00000000", --  113 - 0x71  :    0 - 0x0
    "00000000", --  114 - 0x72  :    0 - 0x0
    "00000000", --  115 - 0x73  :    0 - 0x0
    "11111000", --  116 - 0x74  :  248 - 0xf8 -- Sprite 0x1d
    "00000000", --  117 - 0x75  :    0 - 0x0
    "00000000", --  118 - 0x76  :    0 - 0x0
    "00000000", --  119 - 0x77  :    0 - 0x0
    "11111000", --  120 - 0x78  :  248 - 0xf8 -- Sprite 0x1e
    "00000000", --  121 - 0x79  :    0 - 0x0
    "00000000", --  122 - 0x7a  :    0 - 0x0
    "00000000", --  123 - 0x7b  :    0 - 0x0
    "11111000", --  124 - 0x7c  :  248 - 0xf8 -- Sprite 0x1f
    "00000000", --  125 - 0x7d  :    0 - 0x0
    "00000000", --  126 - 0x7e  :    0 - 0x0
    "00000000", --  127 - 0x7f  :    0 - 0x0
    "11111000", --  128 - 0x80  :  248 - 0xf8 -- Sprite 0x20
    "00000000", --  129 - 0x81  :    0 - 0x0
    "00000000", --  130 - 0x82  :    0 - 0x0
    "00000000", --  131 - 0x83  :    0 - 0x0
    "11111000", --  132 - 0x84  :  248 - 0xf8 -- Sprite 0x21
    "00000000", --  133 - 0x85  :    0 - 0x0
    "00000000", --  134 - 0x86  :    0 - 0x0
    "00000000", --  135 - 0x87  :    0 - 0x0
    "10100110", --  136 - 0x88  :  166 - 0xa6 -- Sprite 0x22
    "11110110", --  137 - 0x89  :  246 - 0xf6
    "00000010", --  138 - 0x8a  :    2 - 0x2
    "01101110", --  139 - 0x8b  :  110 - 0x6e
    "10100110", --  140 - 0x8c  :  166 - 0xa6 -- Sprite 0x23
    "11111011", --  141 - 0x8d  :  251 - 0xfb
    "00000010", --  142 - 0x8e  :    2 - 0x2
    "01110110", --  143 - 0x8f  :  118 - 0x76
    "11000001", --  144 - 0x90  :  193 - 0xc1 -- Sprite 0x24
    "11111100", --  145 - 0x91  :  252 - 0xfc
    "10000011", --  146 - 0x92  :  131 - 0x83
    "01100101", --  147 - 0x93  :  101 - 0x65
    "11000001", --  148 - 0x94  :  193 - 0xc1 -- Sprite 0x25
    "11111100", --  149 - 0x95  :  252 - 0xfc
    "11000011", --  150 - 0x96  :  195 - 0xc3
    "01101101", --  151 - 0x97  :  109 - 0x6d
    "11001001", --  152 - 0x98  :  201 - 0xc9 -- Sprite 0x26
    "11101111", --  153 - 0x99  :  239 - 0xef
    "10000011", --  154 - 0x9a  :  131 - 0x83
    "01100101", --  155 - 0x9b  :  101 - 0x65
    "11001001", --  156 - 0x9c  :  201 - 0xc9 -- Sprite 0x27
    "11101111", --  157 - 0x9d  :  239 - 0xef
    "11000011", --  158 - 0x9e  :  195 - 0xc3
    "01101101", --  159 - 0x9f  :  109 - 0x6d
    "11111000", --  160 - 0xa0  :  248 - 0xf8 -- Sprite 0x28
    "10000111", --  161 - 0xa1  :  135 - 0x87
    "00000011", --  162 - 0xa2  :    3 - 0x3
    "01011100", --  163 - 0xa3  :   92 - 0x5c
    "11111000", --  164 - 0xa4  :  248 - 0xf8 -- Sprite 0x29
    "10000111", --  165 - 0xa5  :  135 - 0x87
    "01000011", --  166 - 0xa6  :   67 - 0x43
    "01100100", --  167 - 0xa7  :  100 - 0x64
    "11111000", --  168 - 0xa8  :  248 - 0xf8 -- Sprite 0x2a
    "10000111", --  169 - 0xa9  :  135 - 0x87
    "10000011", --  170 - 0xaa  :  131 - 0x83
    "01011100", --  171 - 0xab  :   92 - 0x5c
    "11111000", --  172 - 0xac  :  248 - 0xf8 -- Sprite 0x2b
    "10000111", --  173 - 0xad  :  135 - 0x87
    "11000011", --  174 - 0xae  :  195 - 0xc3
    "01100100", --  175 - 0xaf  :  100 - 0x64
    "11111000", --  176 - 0xb0  :  248 - 0xf8 -- Sprite 0x2c
    "00000000", --  177 - 0xb1  :    0 - 0x0
    "00000000", --  178 - 0xb2  :    0 - 0x0
    "00000000", --  179 - 0xb3  :    0 - 0x0
    "11111000", --  180 - 0xb4  :  248 - 0xf8 -- Sprite 0x2d
    "00000000", --  181 - 0xb5  :    0 - 0x0
    "00000000", --  182 - 0xb6  :    0 - 0x0
    "00000000", --  183 - 0xb7  :    0 - 0x0
    "11111000", --  184 - 0xb8  :  248 - 0xf8 -- Sprite 0x2e
    "00000000", --  185 - 0xb9  :    0 - 0x0
    "00000000", --  186 - 0xba  :    0 - 0x0
    "00000000", --  187 - 0xbb  :    0 - 0x0
    "11111000", --  188 - 0xbc  :  248 - 0xf8 -- Sprite 0x2f
    "00000000", --  189 - 0xbd  :    0 - 0x0
    "00000000", --  190 - 0xbe  :    0 - 0x0
    "00000000", --  191 - 0xbf  :    0 - 0x0
    "11111000", --  192 - 0xc0  :  248 - 0xf8 -- Sprite 0x30
    "00000000", --  193 - 0xc1  :    0 - 0x0
    "00000000", --  194 - 0xc2  :    0 - 0x0
    "00000000", --  195 - 0xc3  :    0 - 0x0
    "11111000", --  196 - 0xc4  :  248 - 0xf8 -- Sprite 0x31
    "00000000", --  197 - 0xc5  :    0 - 0x0
    "00000000", --  198 - 0xc6  :    0 - 0x0
    "00000000", --  199 - 0xc7  :    0 - 0x0
    "11111000", --  200 - 0xc8  :  248 - 0xf8 -- Sprite 0x32
    "00000000", --  201 - 0xc9  :    0 - 0x0
    "00000000", --  202 - 0xca  :    0 - 0x0
    "00000000", --  203 - 0xcb  :    0 - 0x0
    "11111000", --  204 - 0xcc  :  248 - 0xf8 -- Sprite 0x33
    "00000000", --  205 - 0xcd  :    0 - 0x0
    "00000000", --  206 - 0xce  :    0 - 0x0
    "00000000", --  207 - 0xcf  :    0 - 0x0
    "11111000", --  208 - 0xd0  :  248 - 0xf8 -- Sprite 0x34
    "11110111", --  209 - 0xd1  :  247 - 0xf7
    "00000010", --  210 - 0xd2  :    2 - 0x2
    "01011000", --  211 - 0xd3  :   88 - 0x58
    "11111000", --  212 - 0xd4  :  248 - 0xf8 -- Sprite 0x35
    "11111011", --  213 - 0xd5  :  251 - 0xfb
    "00000010", --  214 - 0xd6  :    2 - 0x2
    "01100000", --  215 - 0xd7  :   96 - 0x60
    "11111000", --  216 - 0xd8  :  248 - 0xf8 -- Sprite 0x36
    "11111100", --  217 - 0xd9  :  252 - 0xfc
    "10000011", --  218 - 0xda  :  131 - 0x83
    "01100111", --  219 - 0xdb  :  103 - 0x67
    "11111000", --  220 - 0xdc  :  248 - 0xf8 -- Sprite 0x37
    "11111100", --  221 - 0xdd  :  252 - 0xfc
    "11000011", --  222 - 0xde  :  195 - 0xc3
    "01101111", --  223 - 0xdf  :  111 - 0x6f
    "11111000", --  224 - 0xe0  :  248 - 0xf8 -- Sprite 0x38
    "11101111", --  225 - 0xe1  :  239 - 0xef
    "10000011", --  226 - 0xe2  :  131 - 0x83
    "01100111", --  227 - 0xe3  :  103 - 0x67
    "11111000", --  228 - 0xe4  :  248 - 0xf8 -- Sprite 0x39
    "11101111", --  229 - 0xe5  :  239 - 0xef
    "11000011", --  230 - 0xe6  :  195 - 0xc3
    "01101111", --  231 - 0xe7  :  111 - 0x6f
    "11111000", --  232 - 0xe8  :  248 - 0xf8 -- Sprite 0x3a
    "00000000", --  233 - 0xe9  :    0 - 0x0
    "00000000", --  234 - 0xea  :    0 - 0x0
    "00000000", --  235 - 0xeb  :    0 - 0x0
    "11111000", --  236 - 0xec  :  248 - 0xf8 -- Sprite 0x3b
    "00000000", --  237 - 0xed  :    0 - 0x0
    "00000000", --  238 - 0xee  :    0 - 0x0
    "00000000", --  239 - 0xef  :    0 - 0x0
    "11111000", --  240 - 0xf0  :  248 - 0xf8 -- Sprite 0x3c
    "00000000", --  241 - 0xf1  :    0 - 0x0
    "00000000", --  242 - 0xf2  :    0 - 0x0
    "00000000", --  243 - 0xf3  :    0 - 0x0
    "11111000", --  244 - 0xf4  :  248 - 0xf8 -- Sprite 0x3d
    "00000000", --  245 - 0xf5  :    0 - 0x0
    "00000000", --  246 - 0xf6  :    0 - 0x0
    "00000000", --  247 - 0xf7  :    0 - 0x0
    "11111000", --  248 - 0xf8  :  248 - 0xf8 -- Sprite 0x3e
    "00000000", --  249 - 0xf9  :    0 - 0x0
    "00000000", --  250 - 0xfa  :    0 - 0x0
    "00000000", --  251 - 0xfb  :    0 - 0x0
    "11111000", --  252 - 0xfc  :  248 - 0xf8 -- Sprite 0x3f
    "00000000", --  253 - 0xfd  :    0 - 0x0
    "00000000", --  254 - 0xfe  :    0 - 0x0
    "00000000"  --  255 - 0xff  :    0 - 0x0
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
