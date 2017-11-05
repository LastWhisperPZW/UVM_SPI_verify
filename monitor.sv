class spi_monitor extends uvm_monitor;
	
	virtual spi_if vif;
	
	`uvm_component_utils(spi_monitor)
	function new(string name="spi_monitor",uvm_component parent = null);
		super.new(name,parent);
	endfunction
	
	virtual function void build_phase(uvm_phase phase);
		super.build_phase(phase);
		if(!uvm_config_db#(virtual spi_if)::get(this,"","vif",vif))
			`uvm_fatal("spi_monitor","virtual interface must set for vif!!")
	endfunction
	
	extern virtual task main_phase(uvm_phase phase);
	
endclass
	
	
	
	task spi_monitor::main_phase(uvm_phase phase);
		spi_transaction tr;
		while(1) begin;
		end
	endtask
	
