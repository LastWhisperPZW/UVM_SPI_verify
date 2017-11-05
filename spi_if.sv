interface spi_if(
				input wb_clk_i,
				input wb_rst_i
				);
	logic [3:0] wb_sel;
	logic [31:0] wb_dat_i;
	logic wb_stb_i;
	logic miso_pad_i;
	logic [4:0] wb_adr_i;
	logic wb_we_i;
	logic wb_cyc_i;
	logic [31:0] wb_dat_o;
	logic [7:0]  ss_pad_o;
	logic wb_int_o;
	logic wb_err_o;
	logic mosi_pad_o;
	logic sclk_pad_o;
	logic wb_ack_o;
endinterface