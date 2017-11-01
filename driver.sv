class spi_driver extend uvm_driver#(spi_transaction);
	
	virtual spi_if vif;
	`uvm_info("my_driver","main_phase is called",UVM_LOW);

	function new(string name = "my_driver", uvm_component = null);
		super.new(name, parent);
	endfunction
	extern virtual task main_phase(uvm_phase phase);
endclass

virtual function void build_phase(uvm_phase phase);
	super.build_phase(phase);
	`uvm_info("my_driver","build_phase is called",UVM_LOW);
	if(!uvm_config_db#(virtual spi_if)::get(this,"","vif",vif))
		`uvm_fatal("spi_if","virtual interface must beset for vif!!")
endfunction

task my_driver::main_phase(uvm_phase phase)
	while(1) begin
	seq_item_port.get_next_item(req);
	//functional code
	seq_item_port.item_done();

endtask
