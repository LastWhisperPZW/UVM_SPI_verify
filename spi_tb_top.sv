`timescale 1ns/10ps
`include "uvm_macros.svh"
import uvm_pkg::*;
`include "spi_if.sv"
`include "spi_sequencer.sv"
`include "spi_sequence.sv"
`include "driver.sv"
`include "monitor.sv"
`include "env.sv"
`include "spi_transaction.sv"

module spi_top_tb;




spi_if input_if(wb_clk_i,wb_rst_i);
spi_if output_if(wb_clk_i,wb_rst_i);

  reg                            wb_clk_i0;         // master clock input
  reg                            wb_rst_i0;         // synchronous active high reset
  wire                  [4:0]    wb_adr_i;         // lower address bits
  wire                  [32-1:0] wb_dat_i;         // databus input
  wire                  [32-1:0] wb_dat_o;         // databus output
  wire                  [3:0]    wb_sel_i;         // byte select inputs
  wire                           wb_we_i;          // write enable input
  wire                           wb_stb_i;         // stobe/core select signal
  wire                           wb_cyc_i;         // valid bus cycle input
  wire                           wb_ack_o;         // bus cycle acknowledge output
  wire                           wb_err_o;         // termination w/ error
  wire                           wb_int_o;         // interrupt request signal output
                                                     
  // SPI signals                                     
  wire                     [7:0] ss_pad_o;         // slave select
  wire                           sclk_pad_o;       // serial clock
  wire                           mosi_pad_o;       // master out slave in
  wire                           miso_pad_i;       // master in slave out

  spi_top dut();//instant dut
  
  initial begin
	run_test("spi_sequence");
  end
  
  initial begin
	uvm_config_db#(virtual spi_if)::set(null,"uvm_test_top.env.drv","vif",input_if);
	uvm_config_db#(virtual spi_if)::set(null,"uvm_test_top.env.o_mon","vif",output_if);
  end
  
endmodule

