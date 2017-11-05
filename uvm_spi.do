set UVM_HOME D:/Modelsim/verilog_src/uvm-1.1d

set MODEL_TECH D:/Modelsim/win32

C:/Users/Administrator/Desktop/UVM/gcc-4.2.1-mingw32vc9/bin/g++.exe -g -DQUESTA -W -shared -Bsymbolic -I $MODEL_TECH/../include  $UVM_HOME/src/dpi/uvm_dpi.cc -o  $UVM_HOME/lib/uvm_dpi.dll $MODEL_TECH/mtipli.dll -lregex 

