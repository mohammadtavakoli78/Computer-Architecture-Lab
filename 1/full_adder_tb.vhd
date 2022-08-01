library ieee;
use ieee.std_logic_1164.all;
entity full_adder_tb is
end entity full_adder_tb;
architecture test of full_adder_tb is
component full_adder is
Port(
i0,i1,cin: in std_logic;
s,cout : out std_logic
);
End component full_adder;
signal in0: std_logic:='0';
signal in1: std_logic:='0';
signal c_in: std_logic:='0';
signal sum ,c_out :std_logic;
begin
UUT : full_adder port map (i0 => in0, i1 => in1, cin => c_in, s => sum,cout=>c_out);

process 
begin
in0 <='0';
in1 <='0';
c_in <='0';
wait for 100 ns;

in0 <='1';
in1 <='0';
c_in <='0';
wait for 100 ns;

in0 <='0';
in1 <='1';
c_in <='0';
wait for 100 ns;

in0 <='0';
in1 <='0';
c_in <='1';
wait for 100 ns;

in0 <='1';
in1 <='1';
c_in <='0';
wait for 100 ns;

in0 <='0';
in1 <='1';
c_in <='1';
wait for 100 ns;

in0 <='1';
in1 <='0';
c_in <='1';
wait for 100 ns;

in0 <='1';
in1 <='1';
c_in <='1';
wait;

end process;
end test;
