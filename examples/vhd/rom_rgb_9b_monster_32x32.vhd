------- ROM creada automaticamente por ppm2rom -----------
------- Felipe Machado -----------------------------------
------- Departamento de Tecnologia Electronica -----------
------- Universidad Rey Juan Carlos ----------------------
------- http://gtebim.es ---------------------------------
----------------------------------------------------------
--------Datos de la imagen -------------------------------
--- Fichero original    : pacman32x32.ppm 
--- Filas    : 32 
--- Columnas : 32 
----------------------------------------------------------
--------Codificacion de la memoria------------------------
--- Palabras de 9 bits
--- De cada palabra hay 3 bits para cada color : "RRRGGGBBB" 512 colores



------ Puertos -------------------------------------------
-- Entradas ----------------------------------------------
--    clk  :  senal de reloj
--    addr :  direccion de la memoria
-- Salidas  ----------------------------------------------
--    dout :  dato de 9 bits de la direccion addr (un ciclo despues)


library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;
  use IEEE.NUMERIC_STD.ALL;
entity ROM_RGB_9b_pacman32x32 is
  port (
    clk  : in  std_logic;   -- reloj
    addr : in  std_logic_vector(10-1 downto 0);
    dout : out std_logic_vector(9-1 downto 0) 
  );
end ROM_RGB_9b_pacman32x32;


architecture BEHAVIORAL of ROM_RGB_9b_pacman32x32 is
  signal addr_int  : natural range 0 to 2**10-1;
  type memostruct is array (natural range<>) of std_logic_vector(9-1 downto 0);
  constant filaimg : memostruct := (
     --"RRRGGGBBB"
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111110110",
       "111101101",
       "111101101",
       "111110110",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111110110",
       "111011011",
       "111001001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111001001",
       "111011011",
       "111101110",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111110110",
       "111010010",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111010010",
       "111110110",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111100100",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111100100",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111011011",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111011011",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111100100",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111100100",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111110110",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111101101",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111010011",
       "111101101",
       "111111111",
       "111111111",
       "111110110",
       "111011011",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111001010",
       "111101101",
       "111111111",
       "111111111",
       "111110110",
       "111011011",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111001001",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111110110",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111100100",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111010010",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111100100",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111100100",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111010010",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111110110",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111010010",
       "111000001",
       "111000001",
       "111000001",
       "111001001",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "110111111",
       "110111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111100100",
       "111000001",
       "111000001",
       "111000001",
       "111001010",
       "111111111",
       "110111111",
       "110111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111100100",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111101110",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111110110",
       "010100110",
       "000011101",
       "000011101",
       "011101110",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111110110",
       "111000001",
       "111000001",
       "111000001",
       "111011011",
       "010100110",
       "000011101",
       "000011101",
       "011101110",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111110110",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111011011",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "101011100",
       "000011101",
       "000011101",
       "000011101",
       "000011101",
       "110111111",
       "111111111",
       "111111111",
       "111111111",
       "111110110",
       "111000001",
       "111000001",
       "111000001",
       "101010011",
       "000011101",
       "000011101",
       "000011101",
       "000011101",
       "110111111",
       "111111111",
       "111111111",
       "111111111",
       "111110110",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111001010",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "100010011",
       "000011101",
       "000011101",
       "000011101",
       "000011101",
       "101110111",
       "111111111",
       "111111111",
       "111111111",
       "111110110",
       "111000001",
       "111000001",
       "111000001",
       "100001010",
       "000011101",
       "000011101",
       "000011101",
       "000011101",
       "101110111",
       "111111111",
       "111111111",
       "111111111",
       "111110110",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111111111",
       "111111111",
       "111111111",
       "111110110",
       "101001010",
       "000011101",
       "000011101",
       "000011101",
       "000011101",
       "110111111",
       "111111111",
       "111111111",
       "111111111",
       "111101101",
       "111000001",
       "111000001",
       "111000001",
       "101001010",
       "000011101",
       "000011101",
       "000011101",
       "000011101",
       "110111111",
       "111111111",
       "111111111",
       "111111111",
       "111101101",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111110110",
       "111111111",
       "111111111",
       "111101110",
       "111001001",
       "011100110",
       "000011101",
       "000011101",
       "011101110",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111011011",
       "111000001",
       "111000001",
       "111000001",
       "111001001",
       "011100110",
       "000011101",
       "000011101",
       "011101110",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111011011",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111101101",
       "111111111",
       "111111111",
       "111101101",
       "111000001",
       "111100100",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111110110",
       "111001001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111100100",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111110110",
       "111001001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111101101",
       "111111111",
       "111111111",
       "111100100",
       "111000001",
       "111000001",
       "111100100",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111110110",
       "111001001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111100100",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111110110",
       "111001010",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111100100",
       "111111111",
       "111111111",
       "111011011",
       "111000001",
       "111000001",
       "111000001",
       "111001010",
       "111011011",
       "111011100",
       "111010010",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111001010",
       "111011011",
       "111011100",
       "111010010",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111011011",
       "111111111",
       "111111111",
       "111011011",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111011011",
       "111111111",
       "111111111",
       "111010010",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111010010",
       "111111111",
       "111111111",
       "111010010",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111010010",
       "111111111",
       "111111111",
       "111001001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111001001",
       "111111111",
       "111111111",
       "111001001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111001001",
       "111111111",
       "111111111",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111111111",
       "111111111",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111111111",
       "111111111",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111111111",
       "111110110",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111110110",
       "111110110",
       "111000001",
       "111000001",
       "111001010",
       "111101110",
       "111111111",
       "111110110",
       "111010010",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111011011",
       "111111111",
       "111111111",
       "111011100",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111010010",
       "111110110",
       "111111111",
       "111110110",
       "111010010",
       "111000001",
       "111000001",
       "111110110",
       "111110110",
       "111000001",
       "111010010",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111011011",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111100100",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111100100",
       "111000001",
       "111000001",
       "111000001",
       "111000001",
       "111010011",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111010010",
       "111000001",
       "111110110",
       "111110110",
       "111010011",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111100100",
       "111001001",
       "111001010",
       "111101101",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111101101",
       "111001010",
       "111001001",
       "111100100",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111011011",
       "111110110",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111",
       "111111111"
        );

begin

  addr_int <= TO_INTEGER(unsigned(addr));

  P_ROM: process (clk)
  begin
    if clk'event and clk='1' then
      dout <= filaimg(addr_int);
    end if;
  end process;

end BEHAVIORAL;

