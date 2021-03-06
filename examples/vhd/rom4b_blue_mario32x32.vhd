------- ROM creada automaticamente por ppm2rom -----------
------- Felipe Machado -----------------------------------
------- Departamento de Tecnologia Electronica -----------
------- Universidad Rey Juan Carlos ----------------------
------- http://gtebim.es ---------------------------------
----------------------------------------------------------
--------Datos de la imagen -------------------------------
--- Fichero original    : mario32x32.ppm 
--- Filas    : 32 
--- Columnas : 32 
--- Color    :  4 bits



------ Puertos -------------------------------------------
-- Entradas ----------------------------------------------
--    clk  :  senal de reloj
--    addr :  direccion de la memoria
-- Salidas  ----------------------------------------------
--    dout :  dato de 4 bits de la direccion addr (un ciclo despues)


library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;
  use IEEE.NUMERIC_STD.ALL;


entity ROM4b_blue_mario32x32 is
  port (
    clk  : in  std_logic;   -- reloj
    addr : in  std_logic_vector(10-1 downto 0);
    dout : out std_logic_vector(4-1 downto 0) 
  );
end ROM4b_blue_mario32x32;


architecture BEHAVIORAL of ROM4b_blue_mario32x32 is
  signal addr_int  : natural range 0 to 2**10-1;
  type memostruct is array (natural range<>) of std_logic_vector(4-1 downto 0);
  constant filaimg : memostruct := (
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1101",
       "1000",
       "0101",
       "1001",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1011",
       "0010",
       "0000",
       "0001",
       "0000",
       "1000",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "0101",
       "0000",
       "0000",
       "0010",
       "0010",
       "0000",
       "0001",
       "1110",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1000",
       "0000",
       "0011",
       "0010",
       "0010",
       "0010",
       "0011",
       "0000",
       "1001",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1101",
       "0000",
       "0011",
       "0010",
       "0010",
       "0010",
       "0010",
       "0011",
       "0000",
       "0011",
       "1010",
       "0110",
       "0100",
       "0000",
       "1110",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "0001",
       "0000",
       "0010",
       "0010",
       "0010",
       "0010",
       "0010",
       "0010",
       "0010",
       "0001",
       "0000",
       "0000",
       "0000",
       "0011",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1011",
       "0000",
       "0011",
       "0010",
       "0010",
       "0010",
       "0010",
       "0010",
       "0001",
       "0000",
       "0000",
       "0010",
       "0000",
       "0011",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "0011",
       "0000",
       "0010",
       "0010",
       "0010",
       "0010",
       "0010",
       "0001",
       "0010",
       "0101",
       "1001",
       "1000",
       "0111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "0000",
       "0010",
       "0010",
       "0001",
       "0000",
       "0010",
       "0000",
       "0110",
       "1100",
       "1011",
       "1111",
       "1010",
       "1111",
       "1111",
       "1100",
       "1100",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1101",
       "0000",
       "0001",
       "0010",
       "0000",
       "0001",
       "0110",
       "0000",
       "0000",
       "0001",
       "1000",
       "1101",
       "1111",
       "1010",
       "1101",
       "1001",
       "1000",
       "1100",
       "1100",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "0000",
       "0000",
       "0010",
       "0001",
       "0000",
       "1101",
       "1101",
       "1010",
       "0000",
       "0000",
       "0000",
       "1101",
       "1010",
       "0011",
       "0110",
       "0110",
       "1000",
       "1010",
       "1000",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "0000",
       "0000",
       "0011",
       "0000",
       "0011",
       "1111",
       "1001",
       "0111",
       "1000",
       "0000",
       "1000",
       "1110",
       "1101",
       "0000",
       "0000",
       "0000",
       "0101",
       "0110",
       "1010",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1100",
       "0000",
       "0000",
       "0001",
       "0000",
       "1100",
       "1110",
       "1010",
       "1101",
       "1010",
       "1011",
       "1010",
       "1011",
       "1011",
       "0100",
       "0000",
       "0000",
       "1101",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1101",
       "0011",
       "0000",
       "0000",
       "0010",
       "1011",
       "1101",
       "1000",
       "0111",
       "1000",
       "1000",
       "1000",
       "1000",
       "1001",
       "1001",
       "1011",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1010",
       "0010",
       "0000",
       "0000",
       "0000",
       "0001",
       "0101",
       "0101",
       "0110",
       "0111",
       "1000",
       "0111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "0010",
       "0000",
       "0001",
       "0011",
       "0100",
       "0011",
       "0001",
       "0010",
       "1010",
       "1111",
       "1111",
       "1110",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1101",
       "1110",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1101",
       "0000",
       "0011",
       "0010",
       "0011",
       "1100",
       "1110",
       "0010",
       "0011",
       "0000",
       "1011",
       "1110",
       "1111",
       "1110",
       "1101",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1011",
       "1100",
       "1110",
       "1110",
       "1111",
       "1111",
       "1111",
       "1111",
       "0000",
       "0010",
       "0010",
       "0001",
       "0000",
       "1111",
       "1110",
       "1111",
       "1010",
       "0111",
       "1110",
       "1111",
       "1100",
       "1100",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1011",
       "1011",
       "1100",
       "1101",
       "1111",
       "1100",
       "1111",
       "1001",
       "0000",
       "0010",
       "0001",
       "0000",
       "0000",
       "1011",
       "0101",
       "0001",
       "1111",
       "1000",
       "1000",
       "1111",
       "1111",
       "1011",
       "1100",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1100",
       "1011",
       "1011",
       "1101",
       "1011",
       "1111",
       "1001",
       "0000",
       "0000",
       "0000",
       "0100",
       "1101",
       "1111",
       "1010",
       "0001",
       "1110",
       "1100",
       "0110",
       "1010",
       "1101",
       "1001",
       "0111",
       "1110",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1100",
       "1010",
       "1110",
       "1111",
       "1111",
       "1011",
       "1010",
       "1100",
       "1111",
       "1111",
       "1110",
       "1110",
       "1110",
       "1110",
       "1101",
       "1111",
       "1111",
       "1001",
       "0000",
       "0000",
       "0100",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1100",
       "1101",
       "1111",
       "1010",
       "1010",
       "1011",
       "1100",
       "1100",
       "1100",
       "1101",
       "1110",
       "1110",
       "1110",
       "1111",
       "1111",
       "0000",
       "0010",
       "0011",
       "0000",
       "1101",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "0000",
       "0000",
       "1000",
       "1100",
       "1001",
       "1010",
       "1100",
       "1011",
       "1100",
       "1110",
       "1110",
       "1110",
       "1111",
       "1111",
       "1011",
       "0000",
       "0011",
       "0000",
       "0001",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1010",
       "0000",
       "0011",
       "1000",
       "1100",
       "1010",
       "1001",
       "1010",
       "1100",
       "1101",
       "1101",
       "1101",
       "1101",
       "1101",
       "1111",
       "1110",
       "0000",
       "0010",
       "0000",
       "1010",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "0100",
       "0000",
       "1000",
       "0110",
       "1010",
       "1100",
       "1010",
       "1010",
       "1010",
       "1010",
       "1011",
       "1100",
       "1100",
       "1101",
       "1101",
       "1110",
       "0000",
       "0000",
       "0000",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "0011",
       "0000",
       "1010",
       "1001",
       "0110",
       "1001",
       "1010",
       "1011",
       "1011",
       "1010",
       "1001",
       "1010",
       "1010",
       "1011",
       "1101",
       "1101",
       "0000",
       "0000",
       "1011",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1110",
       "0000",
       "0000",
       "1010",
       "1010",
       "1010",
       "1000",
       "0111",
       "0111",
       "0111",
       "1011",
       "1100",
       "1010",
       "1001",
       "1001",
       "1100",
       "1001",
       "0000",
       "0000",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "0111",
       "0000",
       "0000",
       "0111",
       "1100",
       "1001",
       "1001",
       "1001",
       "1000",
       "1011",
       "1111",
       "1111",
       "1111",
       "1110",
       "1011",
       "1011",
       "0010",
       "0000",
       "1010",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "0001",
       "0000",
       "0001",
       "0001",
       "1010",
       "1100",
       "1100",
       "1110",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1011",
       "0000",
       "0000",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1110",
       "0000",
       "0000",
       "0010",
       "0000",
       "1101",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "0101",
       "0000",
       "0000",
       "0110",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1110",
       "0110",
       "0110",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111",
       "1111"
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

