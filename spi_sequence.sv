class spi_sequence extend uvm_sequence #(spi_transaction);

	function new(string name="spi_sequence");
		super.new(name);
	endfunction
	
	virtual task body();
		#1000;
	endtask
	
	`uvm_object_utils(spi_sequence)
endclass