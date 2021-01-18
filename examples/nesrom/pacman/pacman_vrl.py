import os
import sys
import math

filepath = os.getcwd()
sys.path.append(filepath +  "/../../../src/")
from nesmem2vrl import nesmem2vrl, nesmem2vrlattr
from nesmem2vrl import patterntable2vrlsplit, patterntable2vrlsplit2
from nesmem2vrl import patterntable2vrlsplit_spr_bg
from nesmem2vrl import palcolor2vrl

# exec(open("./pacman_vrl.py").read())

# choose if you want a clock in the memories
clk = True

if clk==True:
    cpath = 'clk/'
else:
    cpath = 'comb/'

nesmem2vrl(dumpfilename = "./dmp/pacman_ntable.dmp",
              nesmemtype = 0, # Name Table
              rom_name = "ROM_NTABLE_PACMAN_00",
              dest_path = "./vrl/"+cpath,
              clk = clk)


# This is racetrack 1 (see bottom)
#nesmem2vrl(dumpfilename = "./dmp/pacman_ntable.dmp",
#              nesmemtype = 0, # Name Table
#              rom_name = "ROM_NTABLE0_PACMAN_00", #only nametable 0
#              dest_path = "./vrl/"+cpath,
#              halfnametable = True,
#              clk = clk)

nesmem2vrl(dumpfilename = "./dmp/pacman_ptable.dmp",
              nesmemtype = 1, # Pattern Table
              rom_name = "ROM_PTABLE_PACMAN",
              dest_path = "./vrl/"+cpath,
              clk = clk)

nesmem2vrl(dumpfilename = "./dmp/pacman_oam_00.dmp",
              nesmemtype = 6, # OAM
              rom_name = "ROM_OAM_PACMAN_00",
              dest_path = "./vrl/"+cpath,
              #clk = True)
              clk = clk)

# creates attribute table (separated)
nesmem2vrlattr(dumpfilename = "./dmp/pacman_ntable.dmp",
              rom_name = "ROM_ATABLE_PACMAN_00",
              dest_path = "./vrl/"+cpath,
              clk = clk)

nesmem2vrl(dumpfilename = "./dmp/pacman_palette.dmp",
              nesmemtype = 4, # Palette Memory
              rom_name = "ROM_PALETTE_PACMAN",
              dest_path = "./vrl/"+cpath,
              universal_bgcolor = True,
              clk = clk)

# creates separate pattern tables into 2 planes
patterntable2vrlsplit (dumpfilename = "./dmp/pacman_ptable.dmp",
                       rom_name = "ROM_PTABLE_PACMAN",
                       dest_path = "./vrl/"+cpath,
                       clk = clk)

# creates separate pattern tables into sprites and background
# Total of 2 memories
patterntable2vrlsplit_spr_bg (dumpfilename = "./dmp/pacman_ptable.dmp",
                        rom_name = "ROM_PTABLE_PACMAN",
                        dest_path = "./vrl/"+cpath,
                        clk = clk)


# creates separate pattern tables into 2 planes
# and separates sprites and background into 2 memories
# Total of 4 memories
patterntable2vrlsplit2 (dumpfilename = "./dmp/pacman_ptable.dmp",
                        rom_name = "ROM_PTABLE_PACMAN",
                        dest_path = "./vrl/"+cpath,
                        clk = clk)


# The NES palette is the same for all
#palcolor2vrl (palfilename = "../nespalette.pal",
#                 mem_width=12,
#                 rom_name = "ROM_COLORS",
#                 dest_path = '../',
#                 clk = False)


# NameTable instroscreeb 1KiB
nesmem2vrl(dumpfilename = "./dmp/pacman_ntable_start.dmp",
              nesmemtype = 0, # Name Table
              rom_name = "ROM_NTABLE0_PACMAN_START", # Intro screen
              dest_path = "./vrl/"+cpath,
              halfnametable = True,
              clk = clk)

