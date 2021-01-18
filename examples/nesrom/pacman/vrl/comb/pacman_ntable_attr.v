//- Autcmatically generated verilog ROM from a NES memory file----
//-   ATTRIBUTE TABLE SEPARATED FROM NAME TABLE
// https://wiki.nesdev.com/w/index.php/PPU_attribute_tables


//-  Original memory dump file name: pacman_ntable.dmp --
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




module ROM_ATABLE_PACMAN_00
  (
     //input     clk,   // clock
     input      [7-1:0] addr,  //128 memory positions
     output reg  [8-1:0] dout  // memory data width
  );


  always @*
  begin
    case (addr)
                               //  address:   value 
                               //    dec  : dec - hex
      7'h0: dout  = 8'b01010101; //    0 :  85 - 0x55
      7'h1: dout  = 8'b01010101; //    1 :  85 - 0x55
      7'h2: dout  = 8'b01010101; //    2 :  85 - 0x55
      7'h3: dout  = 8'b01010101; //    3 :  85 - 0x55
      7'h4: dout  = 8'b01010101; //    4 :  85 - 0x55
      7'h5: dout  = 8'b00010001; //    5 :  17 - 0x11
      7'h6: dout  = 8'b00000000; //    6 :   0 - 0x0
      7'h7: dout  = 8'b00000000; //    7 :   0 - 0x0
      7'h8: dout  = 8'b01010101; //    8 :  85 - 0x55
      7'h9: dout  = 8'b01010101; //    9 :  85 - 0x55
      7'hA: dout  = 8'b01010101; //   10 :  85 - 0x55
      7'hB: dout  = 8'b01010101; //   11 :  85 - 0x55
      7'hC: dout  = 8'b01010101; //   12 :  85 - 0x55
      7'hD: dout  = 8'b00010001; //   13 :  17 - 0x11
      7'hE: dout  = 8'b00000000; //   14 :   0 - 0x0
      7'hF: dout  = 8'b00000000; //   15 :   0 - 0x0
      7'h10: dout  = 8'b01010101; //   16 :  85 - 0x55
      7'h11: dout  = 8'b01010101; //   17 :  85 - 0x55
      7'h12: dout  = 8'b01010101; //   18 :  85 - 0x55
      7'h13: dout  = 8'b01010101; //   19 :  85 - 0x55
      7'h14: dout  = 8'b01010101; //   20 :  85 - 0x55
      7'h15: dout  = 8'b00010001; //   21 :  17 - 0x11
      7'h16: dout  = 8'b00000000; //   22 :   0 - 0x0
      7'h17: dout  = 8'b00000000; //   23 :   0 - 0x0
      7'h18: dout  = 8'b01010101; //   24 :  85 - 0x55
      7'h19: dout  = 8'b01010101; //   25 :  85 - 0x55
      7'h1A: dout  = 8'b01010101; //   26 :  85 - 0x55
      7'h1B: dout  = 8'b01010101; //   27 :  85 - 0x55
      7'h1C: dout  = 8'b01010101; //   28 :  85 - 0x55
      7'h1D: dout  = 8'b01010001; //   29 :  81 - 0x51
      7'h1E: dout  = 8'b01010000; //   30 :  80 - 0x50
      7'h1F: dout  = 8'b01010000; //   31 :  80 - 0x50
      7'h20: dout  = 8'b01010101; //   32 :  85 - 0x55
      7'h21: dout  = 8'b01010101; //   33 :  85 - 0x55
      7'h22: dout  = 8'b01010101; //   34 :  85 - 0x55
      7'h23: dout  = 8'b01010101; //   35 :  85 - 0x55
      7'h24: dout  = 8'b01010101; //   36 :  85 - 0x55
      7'h25: dout  = 8'b10010101; //   37 : 149 - 0x95
      7'h26: dout  = 8'b00000101; //   38 :   5 - 0x5
      7'h27: dout  = 8'b00000101; //   39 :   5 - 0x5
      7'h28: dout  = 8'b01010101; //   40 :  85 - 0x55
      7'h29: dout  = 8'b01010101; //   41 :  85 - 0x55
      7'h2A: dout  = 8'b01010101; //   42 :  85 - 0x55
      7'h2B: dout  = 8'b01010101; //   43 :  85 - 0x55
      7'h2C: dout  = 8'b01010101; //   44 :  85 - 0x55
      7'h2D: dout  = 8'b00010001; //   45 :  17 - 0x11
      7'h2E: dout  = 8'b00000000; //   46 :   0 - 0x0
      7'h2F: dout  = 8'b00000000; //   47 :   0 - 0x0
      7'h30: dout  = 8'b01010101; //   48 :  85 - 0x55
      7'h31: dout  = 8'b01010101; //   49 :  85 - 0x55
      7'h32: dout  = 8'b01010101; //   50 :  85 - 0x55
      7'h33: dout  = 8'b01010101; //   51 :  85 - 0x55
      7'h34: dout  = 8'b01010101; //   52 :  85 - 0x55
      7'h35: dout  = 8'b01010101; //   53 :  85 - 0x55
      7'h36: dout  = 8'b01010101; //   54 :  85 - 0x55
      7'h37: dout  = 8'b01010101; //   55 :  85 - 0x55
      7'h38: dout  = 8'b01010101; //   56 :  85 - 0x55
      7'h39: dout  = 8'b01010101; //   57 :  85 - 0x55
      7'h3A: dout  = 8'b01010101; //   58 :  85 - 0x55
      7'h3B: dout  = 8'b01010101; //   59 :  85 - 0x55
      7'h3C: dout  = 8'b01010101; //   60 :  85 - 0x55
      7'h3D: dout  = 8'b01010101; //   61 :  85 - 0x55
      7'h3E: dout  = 8'b01010101; //   62 :  85 - 0x55
      7'h3F: dout  = 8'b01010101; //   63 :  85 - 0x55
      7'h40: dout  = 8'b01010101; //   64 :  85 - 0x55
      7'h41: dout  = 8'b01010101; //   65 :  85 - 0x55
      7'h42: dout  = 8'b01010101; //   66 :  85 - 0x55
      7'h43: dout  = 8'b01010101; //   67 :  85 - 0x55
      7'h44: dout  = 8'b01010101; //   68 :  85 - 0x55
      7'h45: dout  = 8'b00010001; //   69 :  17 - 0x11
      7'h46: dout  = 8'b00000000; //   70 :   0 - 0x0
      7'h47: dout  = 8'b00000000; //   71 :   0 - 0x0
      7'h48: dout  = 8'b01010101; //   72 :  85 - 0x55
      7'h49: dout  = 8'b01010101; //   73 :  85 - 0x55
      7'h4A: dout  = 8'b01010101; //   74 :  85 - 0x55
      7'h4B: dout  = 8'b01010101; //   75 :  85 - 0x55
      7'h4C: dout  = 8'b01010101; //   76 :  85 - 0x55
      7'h4D: dout  = 8'b00010001; //   77 :  17 - 0x11
      7'h4E: dout  = 8'b00000000; //   78 :   0 - 0x0
      7'h4F: dout  = 8'b00000000; //   79 :   0 - 0x0
      7'h50: dout  = 8'b01010101; //   80 :  85 - 0x55
      7'h51: dout  = 8'b01010101; //   81 :  85 - 0x55
      7'h52: dout  = 8'b01010101; //   82 :  85 - 0x55
      7'h53: dout  = 8'b01010101; //   83 :  85 - 0x55
      7'h54: dout  = 8'b01010101; //   84 :  85 - 0x55
      7'h55: dout  = 8'b00010001; //   85 :  17 - 0x11
      7'h56: dout  = 8'b00000000; //   86 :   0 - 0x0
      7'h57: dout  = 8'b00000000; //   87 :   0 - 0x0
      7'h58: dout  = 8'b01010101; //   88 :  85 - 0x55
      7'h59: dout  = 8'b01010101; //   89 :  85 - 0x55
      7'h5A: dout  = 8'b01010101; //   90 :  85 - 0x55
      7'h5B: dout  = 8'b01010101; //   91 :  85 - 0x55
      7'h5C: dout  = 8'b01010101; //   92 :  85 - 0x55
      7'h5D: dout  = 8'b01010001; //   93 :  81 - 0x51
      7'h5E: dout  = 8'b01010000; //   94 :  80 - 0x50
      7'h5F: dout  = 8'b01010000; //   95 :  80 - 0x50
      7'h60: dout  = 8'b01010101; //   96 :  85 - 0x55
      7'h61: dout  = 8'b01010101; //   97 :  85 - 0x55
      7'h62: dout  = 8'b01010101; //   98 :  85 - 0x55
      7'h63: dout  = 8'b01010101; //   99 :  85 - 0x55
      7'h64: dout  = 8'b01010101; //  100 :  85 - 0x55
      7'h65: dout  = 8'b00010001; //  101 :  17 - 0x11
      7'h66: dout  = 8'b00000101; //  102 :   5 - 0x5
      7'h67: dout  = 8'b00000101; //  103 :   5 - 0x5
      7'h68: dout  = 8'b01010101; //  104 :  85 - 0x55
      7'h69: dout  = 8'b01010101; //  105 :  85 - 0x55
      7'h6A: dout  = 8'b01010101; //  106 :  85 - 0x55
      7'h6B: dout  = 8'b01010101; //  107 :  85 - 0x55
      7'h6C: dout  = 8'b01010101; //  108 :  85 - 0x55
      7'h6D: dout  = 8'b00010001; //  109 :  17 - 0x11
      7'h6E: dout  = 8'b00000000; //  110 :   0 - 0x0
      7'h6F: dout  = 8'b00000000; //  111 :   0 - 0x0
      7'h70: dout  = 8'b01010101; //  112 :  85 - 0x55
      7'h71: dout  = 8'b01010101; //  113 :  85 - 0x55
      7'h72: dout  = 8'b01010101; //  114 :  85 - 0x55
      7'h73: dout  = 8'b01010101; //  115 :  85 - 0x55
      7'h74: dout  = 8'b01010101; //  116 :  85 - 0x55
      7'h75: dout  = 8'b01010101; //  117 :  85 - 0x55
      7'h76: dout  = 8'b01010101; //  118 :  85 - 0x55
      7'h77: dout  = 8'b01010101; //  119 :  85 - 0x55
      7'h78: dout  = 8'b01010101; //  120 :  85 - 0x55
      7'h79: dout  = 8'b01010101; //  121 :  85 - 0x55
      7'h7A: dout  = 8'b01010101; //  122 :  85 - 0x55
      7'h7B: dout  = 8'b01010101; //  123 :  85 - 0x55
      7'h7C: dout  = 8'b01010101; //  124 :  85 - 0x55
      7'h7D: dout  = 8'b01010101; //  125 :  85 - 0x55
      7'h7E: dout  = 8'b01010101; //  126 :  85 - 0x55
      7'h7F: dout  = 8'b01010101; //  127 :  85 - 0x55
    endcase
  end

endmodule
