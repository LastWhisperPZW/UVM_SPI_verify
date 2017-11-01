class spi_sequencer extends uvm_sequencer #(spi_transaction);

	function new(string name, uvm_component parent);
		super.new(name, parent);
	endfunction
	
	`uvm_component_utils(spi_sequencer)
	
	task spi_sequencer::main_phase(uvm_phase phase);
		spi_sequence seq;
		phase.raise_objection(this);
		seq=spi_sequence::type_id::create("seq");
		seq.start(this);            //start sequence
		phase.drop_objection(this);
	endtask
		
endclass