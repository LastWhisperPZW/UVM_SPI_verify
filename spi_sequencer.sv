`ifndef SPI_SEQUENCER__SV
`define SPI_SEQUENCER__SV


class spi_sequencer extends uvm_sequencer #(spi_transaction);

`uvm_component_utils(spi_sequencer)	

	function new(string name, uvm_component parent);
		super.new(name, parent);
	endfunction
	extern virtual task main_phase(uvm_phase phase);
endclass
	
	task spi_sequencer::main_phase(uvm_phase phase);
		`uvm_info("spi_sequencer","main_phase is called",UVM_LOW);
	endtask
	

`endif