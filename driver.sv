class my_driver extend uvm_driver;
	function new(string name = "my_driver", uvm_component = null);
		super.new(name, parent);
	endfunction
	extern virtual task main_phase(uvm_phase phase);
endclass

task my_driver::main_phase(uvn_phase phase)

endtask
