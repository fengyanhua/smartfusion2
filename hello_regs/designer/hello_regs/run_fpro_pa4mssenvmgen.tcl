set_device \
    -fam SmartFusion2 \
    -die PA4M1000_N \
    -pkg fg484
set_input_cfg \
	-path {E:/Practice/hello_regs/component/work/hello_regs_MSS/ENVM.cfg}
set_output_efc \
    -path {E:\Practice\hello_regs\designer\hello_regs\hello_regs.efc}
gen_prg -use_init false
