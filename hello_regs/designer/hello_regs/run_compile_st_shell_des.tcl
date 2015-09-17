set_device \
    -family  SmartFusion2 \
    -die     PA4M1000_N \
    -package fg484 \
    -speed   -1 \
    -tempr   {COM} \
    -voltr   {COM}
set_def {VOLTAGE} {1.2}
set_def {VCCI_1.2_VOLTR} {COM}
set_def {VCCI_1.5_VOLTR} {COM}
set_def {VCCI_1.8_VOLTR} {COM}
set_def {VCCI_2.5_VOLTR} {COM}
set_def {VCCI_3.3_VOLTR} {COM}
set_def NETLIST_TYPE EDIF
set_name hello_regs
set_workdir {E:\Practice\hello_regs\designer\hello_regs}
set_log     {E:\Practice\hello_regs\designer\hello_regs\hello_regs_sdc.log}
set_design_state pre_layout
