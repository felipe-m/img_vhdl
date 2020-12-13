//- Autcmatically generated verilog ROM from a NES memory file----
//-   SPRITEs MEMORY (OAM)
// https://wiki.nesdev.com/w/index.php/PPU_OAM


//-  Original memory dump file name: sprilo_oam_00.dmp --
//---- Felipe Machado -----------------------------------
//---- Area de Tecnologia Electronica -----------
//---- Universidad Rey Juan Carlos ----------------------
//---- https://github.com/felipe-m ----------------------
//-------------------------------------------------------
//--- Memory without clock -----

//--- Ports ---------------------------------------------
// Inputs   ---------------------------------------------
//   // clk  :  clock signal
//    addr :  memory address
// Outputs  ---------------------------------------------
//    dout :  memory data out  (no clock: in the same clock cycle)




module ROM_OAM_SPRILO_00
  (
     //input     clk,   // clock
     input      [8-1:0] addr,  //256 memory positions
     output reg  [8-1:0] dout  // memory data width
  );


  always @*
  begin
    case (addr)
                               //  address:   value 
                               //    dec  : dec - hex
      8'h0: dout  = 8'b00110000; //    0 :  48 - 0x30 -- Sprite 0x0
      8'h1: dout  = 8'b00001001; //    1 :   9 - 0x9
      8'h2: dout  = 8'b00000001; //    2 :   1 - 0x1
      8'h3: dout  = 8'b10010001; //    3 : 145 - 0x91
      8'h4: dout  = 8'b11111110; //    4 : 254 - 0xfe -- Sprite 0x1
      8'h5: dout  = 8'b11111110; //    5 : 254 - 0xfe
      8'h6: dout  = 8'b11100010; //    6 : 226 - 0xe2
      8'h7: dout  = 8'b11111110; //    7 : 254 - 0xfe
      8'h8: dout  = 8'b11111110; //    8 : 254 - 0xfe -- Sprite 0x2
      8'h9: dout  = 8'b11111110; //    9 : 254 - 0xfe
      8'hA: dout  = 8'b11100010; //   10 : 226 - 0xe2
      8'hB: dout  = 8'b11111110; //   11 : 254 - 0xfe
      8'hC: dout  = 8'b11111110; //   12 : 254 - 0xfe -- Sprite 0x3
      8'hD: dout  = 8'b11111110; //   13 : 254 - 0xfe
      8'hE: dout  = 8'b11100010; //   14 : 226 - 0xe2
      8'hF: dout  = 8'b11111110; //   15 : 254 - 0xfe
      8'h10: dout  = 8'b11111110; //   16 : 254 - 0xfe -- Sprite 0x4
      8'h11: dout  = 8'b11111110; //   17 : 254 - 0xfe
      8'h12: dout  = 8'b11100010; //   18 : 226 - 0xe2
      8'h13: dout  = 8'b11111110; //   19 : 254 - 0xfe
      8'h14: dout  = 8'b11111110; //   20 : 254 - 0xfe -- Sprite 0x5
      8'h15: dout  = 8'b11111110; //   21 : 254 - 0xfe
      8'h16: dout  = 8'b11100010; //   22 : 226 - 0xe2
      8'h17: dout  = 8'b11111110; //   23 : 254 - 0xfe
      8'h18: dout  = 8'b11111110; //   24 : 254 - 0xfe -- Sprite 0x6
      8'h19: dout  = 8'b11111110; //   25 : 254 - 0xfe
      8'h1A: dout  = 8'b11100010; //   26 : 226 - 0xe2
      8'h1B: dout  = 8'b11111110; //   27 : 254 - 0xfe
      8'h1C: dout  = 8'b11111110; //   28 : 254 - 0xfe -- Sprite 0x7
      8'h1D: dout  = 8'b11111110; //   29 : 254 - 0xfe
      8'h1E: dout  = 8'b11100010; //   30 : 226 - 0xe2
      8'h1F: dout  = 8'b11111110; //   31 : 254 - 0xfe
      8'h20: dout  = 8'b11111110; //   32 : 254 - 0xfe -- Sprite 0x8
      8'h21: dout  = 8'b11111110; //   33 : 254 - 0xfe
      8'h22: dout  = 8'b11100010; //   34 : 226 - 0xe2
      8'h23: dout  = 8'b11111110; //   35 : 254 - 0xfe
      8'h24: dout  = 8'b11111110; //   36 : 254 - 0xfe -- Sprite 0x9
      8'h25: dout  = 8'b11111110; //   37 : 254 - 0xfe
      8'h26: dout  = 8'b11100010; //   38 : 226 - 0xe2
      8'h27: dout  = 8'b11111110; //   39 : 254 - 0xfe
      8'h28: dout  = 8'b11111110; //   40 : 254 - 0xfe -- Sprite 0xa
      8'h29: dout  = 8'b11111110; //   41 : 254 - 0xfe
      8'h2A: dout  = 8'b11100010; //   42 : 226 - 0xe2
      8'h2B: dout  = 8'b11111110; //   43 : 254 - 0xfe
      8'h2C: dout  = 8'b11111110; //   44 : 254 - 0xfe -- Sprite 0xb
      8'h2D: dout  = 8'b11111110; //   45 : 254 - 0xfe
      8'h2E: dout  = 8'b11100010; //   46 : 226 - 0xe2
      8'h2F: dout  = 8'b11111110; //   47 : 254 - 0xfe
      8'h30: dout  = 8'b11111110; //   48 : 254 - 0xfe -- Sprite 0xc
      8'h31: dout  = 8'b11111110; //   49 : 254 - 0xfe
      8'h32: dout  = 8'b11100010; //   50 : 226 - 0xe2
      8'h33: dout  = 8'b11111110; //   51 : 254 - 0xfe
      8'h34: dout  = 8'b11111110; //   52 : 254 - 0xfe -- Sprite 0xd
      8'h35: dout  = 8'b11111110; //   53 : 254 - 0xfe
      8'h36: dout  = 8'b11100010; //   54 : 226 - 0xe2
      8'h37: dout  = 8'b11111110; //   55 : 254 - 0xfe
      8'h38: dout  = 8'b11111110; //   56 : 254 - 0xfe -- Sprite 0xe
      8'h39: dout  = 8'b11111110; //   57 : 254 - 0xfe
      8'h3A: dout  = 8'b11100010; //   58 : 226 - 0xe2
      8'h3B: dout  = 8'b11111110; //   59 : 254 - 0xfe
      8'h3C: dout  = 8'b11111110; //   60 : 254 - 0xfe -- Sprite 0xf
      8'h3D: dout  = 8'b11111110; //   61 : 254 - 0xfe
      8'h3E: dout  = 8'b11100010; //   62 : 226 - 0xe2
      8'h3F: dout  = 8'b11111110; //   63 : 254 - 0xfe
      8'h40: dout  = 8'b11111110; //   64 : 254 - 0xfe -- Sprite 0x10
      8'h41: dout  = 8'b11111110; //   65 : 254 - 0xfe
      8'h42: dout  = 8'b11100010; //   66 : 226 - 0xe2
      8'h43: dout  = 8'b11111110; //   67 : 254 - 0xfe
      8'h44: dout  = 8'b11111110; //   68 : 254 - 0xfe -- Sprite 0x11
      8'h45: dout  = 8'b11111110; //   69 : 254 - 0xfe
      8'h46: dout  = 8'b11100010; //   70 : 226 - 0xe2
      8'h47: dout  = 8'b11111110; //   71 : 254 - 0xfe
      8'h48: dout  = 8'b11111110; //   72 : 254 - 0xfe -- Sprite 0x12
      8'h49: dout  = 8'b11111110; //   73 : 254 - 0xfe
      8'h4A: dout  = 8'b11100010; //   74 : 226 - 0xe2
      8'h4B: dout  = 8'b11111110; //   75 : 254 - 0xfe
      8'h4C: dout  = 8'b11111110; //   76 : 254 - 0xfe -- Sprite 0x13
      8'h4D: dout  = 8'b11111110; //   77 : 254 - 0xfe
      8'h4E: dout  = 8'b11100010; //   78 : 226 - 0xe2
      8'h4F: dout  = 8'b11111110; //   79 : 254 - 0xfe
      8'h50: dout  = 8'b11111110; //   80 : 254 - 0xfe -- Sprite 0x14
      8'h51: dout  = 8'b11111110; //   81 : 254 - 0xfe
      8'h52: dout  = 8'b11100010; //   82 : 226 - 0xe2
      8'h53: dout  = 8'b11111110; //   83 : 254 - 0xfe
      8'h54: dout  = 8'b11111110; //   84 : 254 - 0xfe -- Sprite 0x15
      8'h55: dout  = 8'b11111110; //   85 : 254 - 0xfe
      8'h56: dout  = 8'b11100010; //   86 : 226 - 0xe2
      8'h57: dout  = 8'b11111110; //   87 : 254 - 0xfe
      8'h58: dout  = 8'b11111110; //   88 : 254 - 0xfe -- Sprite 0x16
      8'h59: dout  = 8'b11111110; //   89 : 254 - 0xfe
      8'h5A: dout  = 8'b11100010; //   90 : 226 - 0xe2
      8'h5B: dout  = 8'b11111110; //   91 : 254 - 0xfe
      8'h5C: dout  = 8'b11111110; //   92 : 254 - 0xfe -- Sprite 0x17
      8'h5D: dout  = 8'b11111110; //   93 : 254 - 0xfe
      8'h5E: dout  = 8'b11100010; //   94 : 226 - 0xe2
      8'h5F: dout  = 8'b11111110; //   95 : 254 - 0xfe
      8'h60: dout  = 8'b11111110; //   96 : 254 - 0xfe -- Sprite 0x18
      8'h61: dout  = 8'b11111110; //   97 : 254 - 0xfe
      8'h62: dout  = 8'b11100010; //   98 : 226 - 0xe2
      8'h63: dout  = 8'b11111110; //   99 : 254 - 0xfe
      8'h64: dout  = 8'b11111110; //  100 : 254 - 0xfe -- Sprite 0x19
      8'h65: dout  = 8'b11111110; //  101 : 254 - 0xfe
      8'h66: dout  = 8'b11100010; //  102 : 226 - 0xe2
      8'h67: dout  = 8'b11111110; //  103 : 254 - 0xfe
      8'h68: dout  = 8'b11111110; //  104 : 254 - 0xfe -- Sprite 0x1a
      8'h69: dout  = 8'b11111110; //  105 : 254 - 0xfe
      8'h6A: dout  = 8'b11100010; //  106 : 226 - 0xe2
      8'h6B: dout  = 8'b11111110; //  107 : 254 - 0xfe
      8'h6C: dout  = 8'b11111110; //  108 : 254 - 0xfe -- Sprite 0x1b
      8'h6D: dout  = 8'b11111110; //  109 : 254 - 0xfe
      8'h6E: dout  = 8'b11100010; //  110 : 226 - 0xe2
      8'h6F: dout  = 8'b11111110; //  111 : 254 - 0xfe
      8'h70: dout  = 8'b11111110; //  112 : 254 - 0xfe -- Sprite 0x1c
      8'h71: dout  = 8'b11111110; //  113 : 254 - 0xfe
      8'h72: dout  = 8'b11100010; //  114 : 226 - 0xe2
      8'h73: dout  = 8'b11111110; //  115 : 254 - 0xfe
      8'h74: dout  = 8'b11111110; //  116 : 254 - 0xfe -- Sprite 0x1d
      8'h75: dout  = 8'b11111110; //  117 : 254 - 0xfe
      8'h76: dout  = 8'b11100010; //  118 : 226 - 0xe2
      8'h77: dout  = 8'b11111110; //  119 : 254 - 0xfe
      8'h78: dout  = 8'b11111110; //  120 : 254 - 0xfe -- Sprite 0x1e
      8'h79: dout  = 8'b11111110; //  121 : 254 - 0xfe
      8'h7A: dout  = 8'b11100010; //  122 : 226 - 0xe2
      8'h7B: dout  = 8'b11111110; //  123 : 254 - 0xfe
      8'h7C: dout  = 8'b11111110; //  124 : 254 - 0xfe -- Sprite 0x1f
      8'h7D: dout  = 8'b11111110; //  125 : 254 - 0xfe
      8'h7E: dout  = 8'b11100010; //  126 : 226 - 0xe2
      8'h7F: dout  = 8'b11111110; //  127 : 254 - 0xfe
      8'h80: dout  = 8'b11111110; //  128 : 254 - 0xfe -- Sprite 0x20
      8'h81: dout  = 8'b11111110; //  129 : 254 - 0xfe
      8'h82: dout  = 8'b11100010; //  130 : 226 - 0xe2
      8'h83: dout  = 8'b11111110; //  131 : 254 - 0xfe
      8'h84: dout  = 8'b11111110; //  132 : 254 - 0xfe -- Sprite 0x21
      8'h85: dout  = 8'b11111110; //  133 : 254 - 0xfe
      8'h86: dout  = 8'b11100010; //  134 : 226 - 0xe2
      8'h87: dout  = 8'b11111110; //  135 : 254 - 0xfe
      8'h88: dout  = 8'b11111110; //  136 : 254 - 0xfe -- Sprite 0x22
      8'h89: dout  = 8'b11111110; //  137 : 254 - 0xfe
      8'h8A: dout  = 8'b11100010; //  138 : 226 - 0xe2
      8'h8B: dout  = 8'b11111110; //  139 : 254 - 0xfe
      8'h8C: dout  = 8'b11111110; //  140 : 254 - 0xfe -- Sprite 0x23
      8'h8D: dout  = 8'b11111110; //  141 : 254 - 0xfe
      8'h8E: dout  = 8'b11100010; //  142 : 226 - 0xe2
      8'h8F: dout  = 8'b11111110; //  143 : 254 - 0xfe
      8'h90: dout  = 8'b11111110; //  144 : 254 - 0xfe -- Sprite 0x24
      8'h91: dout  = 8'b11111110; //  145 : 254 - 0xfe
      8'h92: dout  = 8'b11100010; //  146 : 226 - 0xe2
      8'h93: dout  = 8'b11111110; //  147 : 254 - 0xfe
      8'h94: dout  = 8'b11111110; //  148 : 254 - 0xfe -- Sprite 0x25
      8'h95: dout  = 8'b11111110; //  149 : 254 - 0xfe
      8'h96: dout  = 8'b11100010; //  150 : 226 - 0xe2
      8'h97: dout  = 8'b11111110; //  151 : 254 - 0xfe
      8'h98: dout  = 8'b11111110; //  152 : 254 - 0xfe -- Sprite 0x26
      8'h99: dout  = 8'b11111110; //  153 : 254 - 0xfe
      8'h9A: dout  = 8'b11100010; //  154 : 226 - 0xe2
      8'h9B: dout  = 8'b11111110; //  155 : 254 - 0xfe
      8'h9C: dout  = 8'b11111110; //  156 : 254 - 0xfe -- Sprite 0x27
      8'h9D: dout  = 8'b11111110; //  157 : 254 - 0xfe
      8'h9E: dout  = 8'b11100010; //  158 : 226 - 0xe2
      8'h9F: dout  = 8'b11111110; //  159 : 254 - 0xfe
      8'hA0: dout  = 8'b11111110; //  160 : 254 - 0xfe -- Sprite 0x28
      8'hA1: dout  = 8'b11111110; //  161 : 254 - 0xfe
      8'hA2: dout  = 8'b11100010; //  162 : 226 - 0xe2
      8'hA3: dout  = 8'b11111110; //  163 : 254 - 0xfe
      8'hA4: dout  = 8'b11111110; //  164 : 254 - 0xfe -- Sprite 0x29
      8'hA5: dout  = 8'b11111110; //  165 : 254 - 0xfe
      8'hA6: dout  = 8'b11100010; //  166 : 226 - 0xe2
      8'hA7: dout  = 8'b11111110; //  167 : 254 - 0xfe
      8'hA8: dout  = 8'b11111110; //  168 : 254 - 0xfe -- Sprite 0x2a
      8'hA9: dout  = 8'b11111110; //  169 : 254 - 0xfe
      8'hAA: dout  = 8'b11100010; //  170 : 226 - 0xe2
      8'hAB: dout  = 8'b11111110; //  171 : 254 - 0xfe
      8'hAC: dout  = 8'b11111110; //  172 : 254 - 0xfe -- Sprite 0x2b
      8'hAD: dout  = 8'b11111110; //  173 : 254 - 0xfe
      8'hAE: dout  = 8'b11100010; //  174 : 226 - 0xe2
      8'hAF: dout  = 8'b11111110; //  175 : 254 - 0xfe
      8'hB0: dout  = 8'b11111110; //  176 : 254 - 0xfe -- Sprite 0x2c
      8'hB1: dout  = 8'b11111110; //  177 : 254 - 0xfe
      8'hB2: dout  = 8'b11100010; //  178 : 226 - 0xe2
      8'hB3: dout  = 8'b11111110; //  179 : 254 - 0xfe
      8'hB4: dout  = 8'b11111110; //  180 : 254 - 0xfe -- Sprite 0x2d
      8'hB5: dout  = 8'b11111110; //  181 : 254 - 0xfe
      8'hB6: dout  = 8'b11100010; //  182 : 226 - 0xe2
      8'hB7: dout  = 8'b11111110; //  183 : 254 - 0xfe
      8'hB8: dout  = 8'b11111110; //  184 : 254 - 0xfe -- Sprite 0x2e
      8'hB9: dout  = 8'b11111110; //  185 : 254 - 0xfe
      8'hBA: dout  = 8'b11100010; //  186 : 226 - 0xe2
      8'hBB: dout  = 8'b11111110; //  187 : 254 - 0xfe
      8'hBC: dout  = 8'b11111110; //  188 : 254 - 0xfe -- Sprite 0x2f
      8'hBD: dout  = 8'b11111110; //  189 : 254 - 0xfe
      8'hBE: dout  = 8'b11100010; //  190 : 226 - 0xe2
      8'hBF: dout  = 8'b11111110; //  191 : 254 - 0xfe
      8'hC0: dout  = 8'b11111110; //  192 : 254 - 0xfe -- Sprite 0x30
      8'hC1: dout  = 8'b11111110; //  193 : 254 - 0xfe
      8'hC2: dout  = 8'b11100010; //  194 : 226 - 0xe2
      8'hC3: dout  = 8'b11111110; //  195 : 254 - 0xfe
      8'hC4: dout  = 8'b11111110; //  196 : 254 - 0xfe -- Sprite 0x31
      8'hC5: dout  = 8'b11111110; //  197 : 254 - 0xfe
      8'hC6: dout  = 8'b11100010; //  198 : 226 - 0xe2
      8'hC7: dout  = 8'b11111110; //  199 : 254 - 0xfe
      8'hC8: dout  = 8'b11111110; //  200 : 254 - 0xfe -- Sprite 0x32
      8'hC9: dout  = 8'b11111110; //  201 : 254 - 0xfe
      8'hCA: dout  = 8'b11100010; //  202 : 226 - 0xe2
      8'hCB: dout  = 8'b11111110; //  203 : 254 - 0xfe
      8'hCC: dout  = 8'b11111110; //  204 : 254 - 0xfe -- Sprite 0x33
      8'hCD: dout  = 8'b11111110; //  205 : 254 - 0xfe
      8'hCE: dout  = 8'b11100010; //  206 : 226 - 0xe2
      8'hCF: dout  = 8'b11111110; //  207 : 254 - 0xfe
      8'hD0: dout  = 8'b11111110; //  208 : 254 - 0xfe -- Sprite 0x34
      8'hD1: dout  = 8'b11111110; //  209 : 254 - 0xfe
      8'hD2: dout  = 8'b11100010; //  210 : 226 - 0xe2
      8'hD3: dout  = 8'b11111110; //  211 : 254 - 0xfe
      8'hD4: dout  = 8'b11111110; //  212 : 254 - 0xfe -- Sprite 0x35
      8'hD5: dout  = 8'b11111110; //  213 : 254 - 0xfe
      8'hD6: dout  = 8'b11100010; //  214 : 226 - 0xe2
      8'hD7: dout  = 8'b11111110; //  215 : 254 - 0xfe
      8'hD8: dout  = 8'b11111110; //  216 : 254 - 0xfe -- Sprite 0x36
      8'hD9: dout  = 8'b11111110; //  217 : 254 - 0xfe
      8'hDA: dout  = 8'b11100010; //  218 : 226 - 0xe2
      8'hDB: dout  = 8'b11111110; //  219 : 254 - 0xfe
      8'hDC: dout  = 8'b11111110; //  220 : 254 - 0xfe -- Sprite 0x37
      8'hDD: dout  = 8'b11111110; //  221 : 254 - 0xfe
      8'hDE: dout  = 8'b11100010; //  222 : 226 - 0xe2
      8'hDF: dout  = 8'b11111110; //  223 : 254 - 0xfe
      8'hE0: dout  = 8'b11111110; //  224 : 254 - 0xfe -- Sprite 0x38
      8'hE1: dout  = 8'b11111110; //  225 : 254 - 0xfe
      8'hE2: dout  = 8'b11100010; //  226 : 226 - 0xe2
      8'hE3: dout  = 8'b11111110; //  227 : 254 - 0xfe
      8'hE4: dout  = 8'b11111110; //  228 : 254 - 0xfe -- Sprite 0x39
      8'hE5: dout  = 8'b11111110; //  229 : 254 - 0xfe
      8'hE6: dout  = 8'b11100010; //  230 : 226 - 0xe2
      8'hE7: dout  = 8'b11111110; //  231 : 254 - 0xfe
      8'hE8: dout  = 8'b11111110; //  232 : 254 - 0xfe -- Sprite 0x3a
      8'hE9: dout  = 8'b11111110; //  233 : 254 - 0xfe
      8'hEA: dout  = 8'b11100010; //  234 : 226 - 0xe2
      8'hEB: dout  = 8'b11111110; //  235 : 254 - 0xfe
      8'hEC: dout  = 8'b11111110; //  236 : 254 - 0xfe -- Sprite 0x3b
      8'hED: dout  = 8'b11111110; //  237 : 254 - 0xfe
      8'hEE: dout  = 8'b11100010; //  238 : 226 - 0xe2
      8'hEF: dout  = 8'b11111110; //  239 : 254 - 0xfe
      8'hF0: dout  = 8'b11111110; //  240 : 254 - 0xfe -- Sprite 0x3c
      8'hF1: dout  = 8'b11111110; //  241 : 254 - 0xfe
      8'hF2: dout  = 8'b11100010; //  242 : 226 - 0xe2
      8'hF3: dout  = 8'b11111110; //  243 : 254 - 0xfe
      8'hF4: dout  = 8'b11111110; //  244 : 254 - 0xfe -- Sprite 0x3d
      8'hF5: dout  = 8'b11111110; //  245 : 254 - 0xfe
      8'hF6: dout  = 8'b11100010; //  246 : 226 - 0xe2
      8'hF7: dout  = 8'b11111110; //  247 : 254 - 0xfe
      8'hF8: dout  = 8'b11111110; //  248 : 254 - 0xfe -- Sprite 0x3e
      8'hF9: dout  = 8'b11111110; //  249 : 254 - 0xfe
      8'hFA: dout  = 8'b11100010; //  250 : 226 - 0xe2
      8'hFB: dout  = 8'b11111110; //  251 : 254 - 0xfe
      8'hFC: dout  = 8'b11111110; //  252 : 254 - 0xfe -- Sprite 0x3f
      8'hFD: dout  = 8'b11111110; //  253 : 254 - 0xfe
      8'hFE: dout  = 8'b11100010; //  254 : 226 - 0xe2
      8'hFF: dout  = 8'b11111110; //  255 : 254 - 0xfe
    endcase
  end

endmodule
