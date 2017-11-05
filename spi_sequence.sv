`ifndef SPI_SEQUENCE__SV
`define SPI_SEQUENCE__SV

import uvm_pkg::*;

class spi_sequence extends uvm_sequence #(spi_transaction);
	spi_transaction spi_trans;

	function new(string name="spi_sequence");
		super.new(name);
	endfunction
	
	virtual task body();
	repeat (10) begin
		`uvm_do(spi_trans)
	end
		#1000;
	endtask
	
	`uvm_object_utils(spi_sequence)
endclass

`endif