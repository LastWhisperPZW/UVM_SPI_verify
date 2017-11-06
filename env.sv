`ifndef SPI_ENV__SV
`define SPI_ENV__SV


class spi_env extends uvm_env;

	spi_driver drv;
	spi_monitor o_mon;
	
	function new(string name = "spi_env",uvm_component parent);
		super.new(name, parent);
	endfunction
	
	virtual function void build_phase(uvm_phase phase);
		super.build_phase(phase);
	//	drv = spi_driver::type_id::create("drv",this);
	//	o_mon = spi_monitor::type_id::create("o_mon",this);
	endfunction
	
	`uvm_component_utils(spi_env)

endclass

`endif