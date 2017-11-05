`ifndef SPI_DRIVER__SV
`define SPI_DRIVER__SV

class spi_driver extends uvm_driver#(spi_transaction);
	
	virtual spi_if vif;

	function new(string name = "my_driver", uvm_component parent = null);
		super.new(name, parent);
			`uvm_info("my_driver","main_phase is called",UVM_LOW);
	endfunction

virtual function void build_phase(uvm_phase phase);
	super.build_phase(phase);
	`uvm_info("my_driver","build_phase is called",UVM_LOW);
	if(!uvm_config_db#(virtual spi_if)::get(this,"","vif",vif))
		`uvm_fatal("spi_if","virtual interface must beset for vif!!")
endfunction

	extern virtual task main_phase(uvm_phase phase);
endclass

 

task spi_driver::main_phase(uvm_phase phase);
	while(1) begin
	seq_item_port.get_next_item(req);  //connect seq_item_port with seq_item_export
	//functional code                  //seq_item_export is a element of uvm_sequencer
	seq_item_port.item_done();
end
endtask

`endif
