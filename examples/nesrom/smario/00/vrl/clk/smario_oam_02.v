//- Autcmatically generated verilog ROM from a NES memory file----
//-   SPRITEs MEMORY (OAM)
// https://wiki.nesdev.com/w/index.php/PPU_OAM


//-  Original memory dump file name: smario_oam_02.dmp --
//---- Felipe Machado -----------------------------------
//---- Area de Tecnologia Electronica -----------
//---- Universidad Rey Juan Carlos ----------------------
//---- https://github.com/felipe-m ----------------------
//-------------------------------------------------------
//--- Memory with clock ------

//--- Ports ---------------------------------------------
// Inputs   ---------------------------------------------
//    clk  :  clock signal
//    addr :  memory address
// Outputs  ---------------------------------------------
//    dout :  memory data out  (a clock cycle later)




module ROM_OAM_SMARIO
  (
     input     clk,   // clock
     input      [8-1:0] addr,  //256 memory positions
     output reg  [8-1:0] dout  // memory data width
  );


  always @(posedge clk)
  begin
    case (addr)
                               //  address:   value 
                               //    dec  : dec - hex
      8'h0: dout <= 8'b00011000; //    0 :  24 - 0x18 -- Sprite 0x0
      8'h1: dout <= 8'b11111111; //    1 : 255 - 0xff
      8'h2: dout <= 8'b00100011; //    2 :  35 - 0x23
      8'h3: dout <= 8'b01011000; //    3 :  88 - 0x58
      8'h4: dout <= 8'b10010111; //    4 : 151 - 0x97 -- Sprite 0x1
      8'h5: dout <= 8'b11111100; //    5 : 252 - 0xfc
      8'h6: dout <= 8'b01000000; //    6 :  64 - 0x40
      8'h7: dout <= 8'b01101111; //    7 : 111 - 0x6f
      8'h8: dout <= 8'b10010111; //    8 : 151 - 0x97 -- Sprite 0x2
      8'h9: dout <= 8'b11111100; //    9 : 252 - 0xfc
      8'hA: dout <= 8'b01000000; //   10 :  64 - 0x40
      8'hB: dout <= 8'b01110111; //   11 : 119 - 0x77
      8'hC: dout <= 8'b10011111; //   12 : 159 - 0x9f -- Sprite 0x3
      8'hD: dout <= 8'b11111100; //   13 : 252 - 0xfc
      8'hE: dout <= 8'b01000000; //   14 :  64 - 0x40
      8'hF: dout <= 8'b01101111; //   15 : 111 - 0x6f
      8'h10: dout <= 8'b10011111; //   16 : 159 - 0x9f -- Sprite 0x4
      8'h11: dout <= 8'b11111100; //   17 : 252 - 0xfc
      8'h12: dout <= 8'b01000000; //   18 :  64 - 0x40
      8'h13: dout <= 8'b01110111; //   19 : 119 - 0x77
      8'h14: dout <= 8'b10100111; //   20 : 167 - 0xa7 -- Sprite 0x5
      8'h15: dout <= 8'b01000001; //   21 :  65 - 0x41
      8'h16: dout <= 8'b01000000; //   22 :  64 - 0x40
      8'h17: dout <= 8'b01101111; //   23 : 111 - 0x6f
      8'h18: dout <= 8'b10100111; //   24 : 167 - 0xa7 -- Sprite 0x6
      8'h19: dout <= 8'b00110010; //   25 :  50 - 0x32
      8'h1A: dout <= 8'b01000000; //   26 :  64 - 0x40
      8'h1B: dout <= 8'b01110111; //   27 : 119 - 0x77
      8'h1C: dout <= 8'b10101111; //   28 : 175 - 0xaf -- Sprite 0x7
      8'h1D: dout <= 8'b01000011; //   29 :  67 - 0x43
      8'h1E: dout <= 8'b01000000; //   30 :  64 - 0x40
      8'h1F: dout <= 8'b01101111; //   31 : 111 - 0x6f
      8'h20: dout <= 8'b10101111; //   32 : 175 - 0xaf -- Sprite 0x8
      8'h21: dout <= 8'b01000010; //   33 :  66 - 0x42
      8'h22: dout <= 8'b01000000; //   34 :  64 - 0x40
      8'h23: dout <= 8'b01110111; //   35 : 119 - 0x77
      8'h24: dout <= 8'b11111000; //   36 : 248 - 0xf8 -- Sprite 0x9
      8'h25: dout <= 8'b00000000; //   37 :   0 - 0x0
      8'h26: dout <= 8'b00000000; //   38 :   0 - 0x0
      8'h27: dout <= 8'b00000000; //   39 :   0 - 0x0
      8'h28: dout <= 8'b11111000; //   40 : 248 - 0xf8 -- Sprite 0xa
      8'h29: dout <= 8'b00000000; //   41 :   0 - 0x0
      8'h2A: dout <= 8'b00000000; //   42 :   0 - 0x0
      8'h2B: dout <= 8'b00000000; //   43 :   0 - 0x0
      8'h2C: dout <= 8'b11111000; //   44 : 248 - 0xf8 -- Sprite 0xb
      8'h2D: dout <= 8'b00000000; //   45 :   0 - 0x0
      8'h2E: dout <= 8'b00000000; //   46 :   0 - 0x0
      8'h2F: dout <= 8'b00000000; //   47 :   0 - 0x0
      8'h30: dout <= 8'b11111000; //   48 : 248 - 0xf8 -- Sprite 0xc
      8'h31: dout <= 8'b11110110; //   49 : 246 - 0xf6
      8'h32: dout <= 8'b00000010; //   50 :   2 - 0x2
      8'h33: dout <= 8'b01101110; //   51 : 110 - 0x6e
      8'h34: dout <= 8'b11111000; //   52 : 248 - 0xf8 -- Sprite 0xd
      8'h35: dout <= 8'b11111011; //   53 : 251 - 0xfb
      8'h36: dout <= 8'b00000010; //   54 :   2 - 0x2
      8'h37: dout <= 8'b01110110; //   55 : 118 - 0x76
      8'h38: dout <= 8'b11111000; //   56 : 248 - 0xf8 -- Sprite 0xe
      8'h39: dout <= 8'b11111100; //   57 : 252 - 0xfc
      8'h3A: dout <= 8'b10000011; //   58 : 131 - 0x83
      8'h3B: dout <= 8'b01100110; //   59 : 102 - 0x66
      8'h3C: dout <= 8'b11111000; //   60 : 248 - 0xf8 -- Sprite 0xf
      8'h3D: dout <= 8'b11111100; //   61 : 252 - 0xfc
      8'h3E: dout <= 8'b11000011; //   62 : 195 - 0xc3
      8'h3F: dout <= 8'b01101110; //   63 : 110 - 0x6e
      8'h40: dout <= 8'b11111000; //   64 : 248 - 0xf8 -- Sprite 0x10
      8'h41: dout <= 8'b11101111; //   65 : 239 - 0xef
      8'h42: dout <= 8'b10000011; //   66 : 131 - 0x83
      8'h43: dout <= 8'b01100110; //   67 : 102 - 0x66
      8'h44: dout <= 8'b11111000; //   68 : 248 - 0xf8 -- Sprite 0x11
      8'h45: dout <= 8'b11101111; //   69 : 239 - 0xef
      8'h46: dout <= 8'b11000011; //   70 : 195 - 0xc3
      8'h47: dout <= 8'b01101110; //   71 : 110 - 0x6e
      8'h48: dout <= 8'b11111000; //   72 : 248 - 0xf8 -- Sprite 0x12
      8'h49: dout <= 8'b00000000; //   73 :   0 - 0x0
      8'h4A: dout <= 8'b00000000; //   74 :   0 - 0x0
      8'h4B: dout <= 8'b00000000; //   75 :   0 - 0x0
      8'h4C: dout <= 8'b11111000; //   76 : 248 - 0xf8 -- Sprite 0x13
      8'h4D: dout <= 8'b00000000; //   77 :   0 - 0x0
      8'h4E: dout <= 8'b00000000; //   78 :   0 - 0x0
      8'h4F: dout <= 8'b00000000; //   79 :   0 - 0x0
      8'h50: dout <= 8'b01101010; //   80 : 106 - 0x6a -- Sprite 0x14
      8'h51: dout <= 8'b11110111; //   81 : 247 - 0xf7
      8'h52: dout <= 8'b00000010; //   82 :   2 - 0x2
      8'h53: dout <= 8'b01011000; //   83 :  88 - 0x58
      8'h54: dout <= 8'b01101010; //   84 : 106 - 0x6a -- Sprite 0x15
      8'h55: dout <= 8'b11111011; //   85 : 251 - 0xfb
      8'h56: dout <= 8'b00000010; //   86 :   2 - 0x2
      8'h57: dout <= 8'b01100000; //   87 :  96 - 0x60
      8'h58: dout <= 8'b11111000; //   88 : 248 - 0xf8 -- Sprite 0x16
      8'h59: dout <= 8'b10000111; //   89 : 135 - 0x87
      8'h5A: dout <= 8'b00000011; //   90 :   3 - 0x3
      8'h5B: dout <= 8'b01011101; //   91 :  93 - 0x5d
      8'h5C: dout <= 8'b11111000; //   92 : 248 - 0xf8 -- Sprite 0x17
      8'h5D: dout <= 8'b10000111; //   93 : 135 - 0x87
      8'h5E: dout <= 8'b01000011; //   94 :  67 - 0x43
      8'h5F: dout <= 8'b01100101; //   95 : 101 - 0x65
      8'h60: dout <= 8'b11111000; //   96 : 248 - 0xf8 -- Sprite 0x18
      8'h61: dout <= 8'b10000111; //   97 : 135 - 0x87
      8'h62: dout <= 8'b10000011; //   98 : 131 - 0x83
      8'h63: dout <= 8'b01011101; //   99 :  93 - 0x5d
      8'h64: dout <= 8'b11111000; //  100 : 248 - 0xf8 -- Sprite 0x19
      8'h65: dout <= 8'b10000111; //  101 : 135 - 0x87
      8'h66: dout <= 8'b11000011; //  102 : 195 - 0xc3
      8'h67: dout <= 8'b01100101; //  103 : 101 - 0x65
      8'h68: dout <= 8'b11111000; //  104 : 248 - 0xf8 -- Sprite 0x1a
      8'h69: dout <= 8'b00000000; //  105 :   0 - 0x0
      8'h6A: dout <= 8'b00000000; //  106 :   0 - 0x0
      8'h6B: dout <= 8'b00000000; //  107 :   0 - 0x0
      8'h6C: dout <= 8'b11111000; //  108 : 248 - 0xf8 -- Sprite 0x1b
      8'h6D: dout <= 8'b00000000; //  109 :   0 - 0x0
      8'h6E: dout <= 8'b00000000; //  110 :   0 - 0x0
      8'h6F: dout <= 8'b00000000; //  111 :   0 - 0x0
      8'h70: dout <= 8'b11111000; //  112 : 248 - 0xf8 -- Sprite 0x1c
      8'h71: dout <= 8'b00000000; //  113 :   0 - 0x0
      8'h72: dout <= 8'b00000000; //  114 :   0 - 0x0
      8'h73: dout <= 8'b00000000; //  115 :   0 - 0x0
      8'h74: dout <= 8'b11111000; //  116 : 248 - 0xf8 -- Sprite 0x1d
      8'h75: dout <= 8'b00000000; //  117 :   0 - 0x0
      8'h76: dout <= 8'b00000000; //  118 :   0 - 0x0
      8'h77: dout <= 8'b00000000; //  119 :   0 - 0x0
      8'h78: dout <= 8'b11111000; //  120 : 248 - 0xf8 -- Sprite 0x1e
      8'h79: dout <= 8'b00000000; //  121 :   0 - 0x0
      8'h7A: dout <= 8'b00000000; //  122 :   0 - 0x0
      8'h7B: dout <= 8'b00000000; //  123 :   0 - 0x0
      8'h7C: dout <= 8'b11111000; //  124 : 248 - 0xf8 -- Sprite 0x1f
      8'h7D: dout <= 8'b00000000; //  125 :   0 - 0x0
      8'h7E: dout <= 8'b00000000; //  126 :   0 - 0x0
      8'h7F: dout <= 8'b00000000; //  127 :   0 - 0x0
      8'h80: dout <= 8'b11111000; //  128 : 248 - 0xf8 -- Sprite 0x20
      8'h81: dout <= 8'b00000000; //  129 :   0 - 0x0
      8'h82: dout <= 8'b00000000; //  130 :   0 - 0x0
      8'h83: dout <= 8'b00000000; //  131 :   0 - 0x0
      8'h84: dout <= 8'b11111000; //  132 : 248 - 0xf8 -- Sprite 0x21
      8'h85: dout <= 8'b00000000; //  133 :   0 - 0x0
      8'h86: dout <= 8'b00000000; //  134 :   0 - 0x0
      8'h87: dout <= 8'b00000000; //  135 :   0 - 0x0
      8'h88: dout <= 8'b10100110; //  136 : 166 - 0xa6 -- Sprite 0x22
      8'h89: dout <= 8'b11110110; //  137 : 246 - 0xf6
      8'h8A: dout <= 8'b00000010; //  138 :   2 - 0x2
      8'h8B: dout <= 8'b01101110; //  139 : 110 - 0x6e
      8'h8C: dout <= 8'b10100110; //  140 : 166 - 0xa6 -- Sprite 0x23
      8'h8D: dout <= 8'b11111011; //  141 : 251 - 0xfb
      8'h8E: dout <= 8'b00000010; //  142 :   2 - 0x2
      8'h8F: dout <= 8'b01110110; //  143 : 118 - 0x76
      8'h90: dout <= 8'b11000001; //  144 : 193 - 0xc1 -- Sprite 0x24
      8'h91: dout <= 8'b11111100; //  145 : 252 - 0xfc
      8'h92: dout <= 8'b10000011; //  146 : 131 - 0x83
      8'h93: dout <= 8'b01100101; //  147 : 101 - 0x65
      8'h94: dout <= 8'b11000001; //  148 : 193 - 0xc1 -- Sprite 0x25
      8'h95: dout <= 8'b11111100; //  149 : 252 - 0xfc
      8'h96: dout <= 8'b11000011; //  150 : 195 - 0xc3
      8'h97: dout <= 8'b01101101; //  151 : 109 - 0x6d
      8'h98: dout <= 8'b11001001; //  152 : 201 - 0xc9 -- Sprite 0x26
      8'h99: dout <= 8'b11101111; //  153 : 239 - 0xef
      8'h9A: dout <= 8'b10000011; //  154 : 131 - 0x83
      8'h9B: dout <= 8'b01100101; //  155 : 101 - 0x65
      8'h9C: dout <= 8'b11001001; //  156 : 201 - 0xc9 -- Sprite 0x27
      8'h9D: dout <= 8'b11101111; //  157 : 239 - 0xef
      8'h9E: dout <= 8'b11000011; //  158 : 195 - 0xc3
      8'h9F: dout <= 8'b01101101; //  159 : 109 - 0x6d
      8'hA0: dout <= 8'b11111000; //  160 : 248 - 0xf8 -- Sprite 0x28
      8'hA1: dout <= 8'b10000111; //  161 : 135 - 0x87
      8'hA2: dout <= 8'b00000011; //  162 :   3 - 0x3
      8'hA3: dout <= 8'b01011100; //  163 :  92 - 0x5c
      8'hA4: dout <= 8'b11111000; //  164 : 248 - 0xf8 -- Sprite 0x29
      8'hA5: dout <= 8'b10000111; //  165 : 135 - 0x87
      8'hA6: dout <= 8'b01000011; //  166 :  67 - 0x43
      8'hA7: dout <= 8'b01100100; //  167 : 100 - 0x64
      8'hA8: dout <= 8'b11111000; //  168 : 248 - 0xf8 -- Sprite 0x2a
      8'hA9: dout <= 8'b10000111; //  169 : 135 - 0x87
      8'hAA: dout <= 8'b10000011; //  170 : 131 - 0x83
      8'hAB: dout <= 8'b01011100; //  171 :  92 - 0x5c
      8'hAC: dout <= 8'b11111000; //  172 : 248 - 0xf8 -- Sprite 0x2b
      8'hAD: dout <= 8'b10000111; //  173 : 135 - 0x87
      8'hAE: dout <= 8'b11000011; //  174 : 195 - 0xc3
      8'hAF: dout <= 8'b01100100; //  175 : 100 - 0x64
      8'hB0: dout <= 8'b11111000; //  176 : 248 - 0xf8 -- Sprite 0x2c
      8'hB1: dout <= 8'b00000000; //  177 :   0 - 0x0
      8'hB2: dout <= 8'b00000000; //  178 :   0 - 0x0
      8'hB3: dout <= 8'b00000000; //  179 :   0 - 0x0
      8'hB4: dout <= 8'b11111000; //  180 : 248 - 0xf8 -- Sprite 0x2d
      8'hB5: dout <= 8'b00000000; //  181 :   0 - 0x0
      8'hB6: dout <= 8'b00000000; //  182 :   0 - 0x0
      8'hB7: dout <= 8'b00000000; //  183 :   0 - 0x0
      8'hB8: dout <= 8'b11111000; //  184 : 248 - 0xf8 -- Sprite 0x2e
      8'hB9: dout <= 8'b00000000; //  185 :   0 - 0x0
      8'hBA: dout <= 8'b00000000; //  186 :   0 - 0x0
      8'hBB: dout <= 8'b00000000; //  187 :   0 - 0x0
      8'hBC: dout <= 8'b11111000; //  188 : 248 - 0xf8 -- Sprite 0x2f
      8'hBD: dout <= 8'b00000000; //  189 :   0 - 0x0
      8'hBE: dout <= 8'b00000000; //  190 :   0 - 0x0
      8'hBF: dout <= 8'b00000000; //  191 :   0 - 0x0
      8'hC0: dout <= 8'b11111000; //  192 : 248 - 0xf8 -- Sprite 0x30
      8'hC1: dout <= 8'b00000000; //  193 :   0 - 0x0
      8'hC2: dout <= 8'b00000000; //  194 :   0 - 0x0
      8'hC3: dout <= 8'b00000000; //  195 :   0 - 0x0
      8'hC4: dout <= 8'b11111000; //  196 : 248 - 0xf8 -- Sprite 0x31
      8'hC5: dout <= 8'b00000000; //  197 :   0 - 0x0
      8'hC6: dout <= 8'b00000000; //  198 :   0 - 0x0
      8'hC7: dout <= 8'b00000000; //  199 :   0 - 0x0
      8'hC8: dout <= 8'b11111000; //  200 : 248 - 0xf8 -- Sprite 0x32
      8'hC9: dout <= 8'b00000000; //  201 :   0 - 0x0
      8'hCA: dout <= 8'b00000000; //  202 :   0 - 0x0
      8'hCB: dout <= 8'b00000000; //  203 :   0 - 0x0
      8'hCC: dout <= 8'b11111000; //  204 : 248 - 0xf8 -- Sprite 0x33
      8'hCD: dout <= 8'b00000000; //  205 :   0 - 0x0
      8'hCE: dout <= 8'b00000000; //  206 :   0 - 0x0
      8'hCF: dout <= 8'b00000000; //  207 :   0 - 0x0
      8'hD0: dout <= 8'b11111000; //  208 : 248 - 0xf8 -- Sprite 0x34
      8'hD1: dout <= 8'b11110111; //  209 : 247 - 0xf7
      8'hD2: dout <= 8'b00000010; //  210 :   2 - 0x2
      8'hD3: dout <= 8'b01011000; //  211 :  88 - 0x58
      8'hD4: dout <= 8'b11111000; //  212 : 248 - 0xf8 -- Sprite 0x35
      8'hD5: dout <= 8'b11111011; //  213 : 251 - 0xfb
      8'hD6: dout <= 8'b00000010; //  214 :   2 - 0x2
      8'hD7: dout <= 8'b01100000; //  215 :  96 - 0x60
      8'hD8: dout <= 8'b11111000; //  216 : 248 - 0xf8 -- Sprite 0x36
      8'hD9: dout <= 8'b11111100; //  217 : 252 - 0xfc
      8'hDA: dout <= 8'b10000011; //  218 : 131 - 0x83
      8'hDB: dout <= 8'b01100111; //  219 : 103 - 0x67
      8'hDC: dout <= 8'b11111000; //  220 : 248 - 0xf8 -- Sprite 0x37
      8'hDD: dout <= 8'b11111100; //  221 : 252 - 0xfc
      8'hDE: dout <= 8'b11000011; //  222 : 195 - 0xc3
      8'hDF: dout <= 8'b01101111; //  223 : 111 - 0x6f
      8'hE0: dout <= 8'b11111000; //  224 : 248 - 0xf8 -- Sprite 0x38
      8'hE1: dout <= 8'b11101111; //  225 : 239 - 0xef
      8'hE2: dout <= 8'b10000011; //  226 : 131 - 0x83
      8'hE3: dout <= 8'b01100111; //  227 : 103 - 0x67
      8'hE4: dout <= 8'b11111000; //  228 : 248 - 0xf8 -- Sprite 0x39
      8'hE5: dout <= 8'b11101111; //  229 : 239 - 0xef
      8'hE6: dout <= 8'b11000011; //  230 : 195 - 0xc3
      8'hE7: dout <= 8'b01101111; //  231 : 111 - 0x6f
      8'hE8: dout <= 8'b11111000; //  232 : 248 - 0xf8 -- Sprite 0x3a
      8'hE9: dout <= 8'b00000000; //  233 :   0 - 0x0
      8'hEA: dout <= 8'b00000000; //  234 :   0 - 0x0
      8'hEB: dout <= 8'b00000000; //  235 :   0 - 0x0
      8'hEC: dout <= 8'b11111000; //  236 : 248 - 0xf8 -- Sprite 0x3b
      8'hED: dout <= 8'b00000000; //  237 :   0 - 0x0
      8'hEE: dout <= 8'b00000000; //  238 :   0 - 0x0
      8'hEF: dout <= 8'b00000000; //  239 :   0 - 0x0
      8'hF0: dout <= 8'b11111000; //  240 : 248 - 0xf8 -- Sprite 0x3c
      8'hF1: dout <= 8'b00000000; //  241 :   0 - 0x0
      8'hF2: dout <= 8'b00000000; //  242 :   0 - 0x0
      8'hF3: dout <= 8'b00000000; //  243 :   0 - 0x0
      8'hF4: dout <= 8'b11111000; //  244 : 248 - 0xf8 -- Sprite 0x3d
      8'hF5: dout <= 8'b00000000; //  245 :   0 - 0x0
      8'hF6: dout <= 8'b00000000; //  246 :   0 - 0x0
      8'hF7: dout <= 8'b00000000; //  247 :   0 - 0x0
      8'hF8: dout <= 8'b11111000; //  248 : 248 - 0xf8 -- Sprite 0x3e
      8'hF9: dout <= 8'b00000000; //  249 :   0 - 0x0
      8'hFA: dout <= 8'b00000000; //  250 :   0 - 0x0
      8'hFB: dout <= 8'b00000000; //  251 :   0 - 0x0
      8'hFC: dout <= 8'b11111000; //  252 : 248 - 0xf8 -- Sprite 0x3f
      8'hFD: dout <= 8'b00000000; //  253 :   0 - 0x0
      8'hFE: dout <= 8'b00000000; //  254 :   0 - 0x0
      8'hFF: dout <= 8'b00000000; //  255 :   0 - 0x0
    endcase
  end

endmodule
