library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity NUM_to_BCD is
	generic(N:positive := 19);
	port 
	(
		i_clk : in std_logic;
		i_rst : in std_logic;
		i_num	: in std_logic_vector(N-1 downto 0);
		o_bcd0, o_bcd1, o_bcd2, o_bcd3, o_bcd4, o_bcd5	: out std_logic_vector(3 downto 0)
	);
end NUM_to_BCD;

architecture rtl of NUM_to_BCD is

	-- FSM needed to keep track of the "shift-and-add-3" algorithm
	 type states is (start, shift, done);
    signal r_state, r_next_state: states;

	--signals required for binary and BCD numbers
	signal r_binary, r_binary_next: std_logic_vector(N-1 downto 0);
	signal r_bcd, r_bcd_reg, r_bcd_next: std_logic_vector(23 downto 0); --24 (6x4)
	
	-- output registers
	signal r_bcd_out, r_bcd_out_next: std_logic_vector(23 downto 0);
	
	-- need to keep track of shifts
	signal r_shift_counter, r_shift_counter_next: natural range 0 to N;
	
	-- Clock process which updates the state machine as well as enables reset
	begin
		clock_proc: process(i_clk, i_rst)
		begin
		if (i_rst = '1') then
			r_binary <= (others => '0');
			r_bcd <= (others => '0');
			r_state <= start;
			r_bcd_out <= (others => '0');
			r_shift_counter <= 0;
			
		elsif(rising_edge(i_clk)) then
			r_binary <= r_binary_next;
			r_bcd <= r_bcd_next;
			r_state <= r_next_state;
			r_bcd_out <= r_bcd_out_next;
			r_shift_counter <= r_shift_counter_next;
			
		end if;
	end process clock_proc;
	
	convert: process(r_state, i_num, r_binary, r_bcd, r_bcd_reg, r_shift_counter)
	begin
		r_next_state <= r_state;
		r_bcd_next <= r_bcd;
		r_binary_next <= r_binary;
		r_shift_counter_next <= r_shift_counter;
		
		case r_state is
				when start =>
					r_next_state <= shift;
					r_binary_next <= i_num;
					r_bcd_next <= (others => '0');
					r_shift_counter_next <= 0;
					
				when shift =>
					if r_shift_counter = N then
						r_next_state <= done;
					else
						r_binary_next <= r_binary(N-2 downto 0) & 'L';
						r_bcd_next <= r_bcd_reg(22 downto 0) & r_binary(N-1); -- "22 downto 0" is 1 less than "23 downto 0"
						r_shift_counter_next <= r_shift_counter + 1;
					end if;
					
				when done =>
					r_next_state <= start;
			end case;
	end process convert;
	
	r_bcd_reg(23 downto 20) <= r_bcd(23 downto 20) + 3 when r_bcd(23 downto 20) > 4 else r_bcd(23 downto 20);
	
	r_bcd_reg(19 downto 16) <= r_bcd(19 downto 16) + 3 when r_bcd(19 downto 16) > 4 else r_bcd(19 downto 16);

	r_bcd_reg(15 downto 12) <= r_bcd(15 downto 12) + 3 when r_bcd(15 downto 12) > 4 else r_bcd(15 downto 12);
	
	r_bcd_reg(11 downto 8) <= r_bcd(11 downto 8) + 3 when r_bcd(11 downto 8) > 4 else r_bcd(11 downto 8);
	
	r_bcd_reg(7 downto 4) <= r_bcd(7 downto 4) + 3 when r_bcd(7 downto 4) > 4 else r_bcd(7 downto 4);
	
	r_bcd_reg(3 downto 0) <= r_bcd(3 downto 0) + 3 when r_bcd(3 downto 0) > 4 else r_bcd(3 downto 0);
	
	r_bcd_out_next <= r_bcd when r_state = done else r_bcd_out;
	
	o_bcd5 <= r_bcd_out(23 downto 20);
	o_bcd4 <= r_bcd_out(19 downto 16);
	o_bcd3 <= r_bcd_out(15 downto 12);
	o_bcd2 <= r_bcd_out(11 downto 8);
	o_bcd1 <= r_bcd_out(7 downto 4);
	o_bcd0 <= r_bcd_out(3 downto 0);
	
end rtl;