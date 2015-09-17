set_device \
    -fam SmartFusion2 \
    -die PA4M1000_N \
    -pkg fg484
set_input_cfg \
	-path {D:/Practice/FIC/component/work/FIC_MSS/ENVM.cfg}
set_output_efc \
    -path {D:\Practice\FIC\designer\FIC\FIC.efc}
gen_prg -use_init false
