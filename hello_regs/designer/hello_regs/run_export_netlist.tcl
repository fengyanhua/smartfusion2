set_device -fam SmartFusion2
read_edif  \
    -file {E:\Practice\hello_regs\synthesis\hello_regs.edn}
write_verilog -file {E:\Practice\hello_regs\synthesis\hello_regs.v}
