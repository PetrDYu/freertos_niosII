
module niosII_sys (
	clk_clk,
	key_export,
	lcd_data_export,
	lcd_e_export,
	lcd_rs_export,
	lcd_rw_export,
	led_export,
	reset_reset_n,
	sdram_addr,
	sdram_ba,
	sdram_cas_n,
	sdram_cke,
	sdram_cs_n,
	sdram_dq,
	sdram_dqm,
	sdram_ras_n,
	sdram_we_n,
	sdram_clk_clk,
	sw_export);	

	input		clk_clk;
	input	[3:0]	key_export;
	inout	[7:0]	lcd_data_export;
	output		lcd_e_export;
	output		lcd_rs_export;
	output		lcd_rw_export;
	output	[9:0]	led_export;
	input		reset_reset_n;
	output	[11:0]	sdram_addr;
	output	[1:0]	sdram_ba;
	output		sdram_cas_n;
	output		sdram_cke;
	output		sdram_cs_n;
	inout	[15:0]	sdram_dq;
	output	[1:0]	sdram_dqm;
	output		sdram_ras_n;
	output		sdram_we_n;
	output		sdram_clk_clk;
	input	[9:0]	sw_export;
endmodule
