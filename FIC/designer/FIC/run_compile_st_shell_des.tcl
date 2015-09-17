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
set_name FIC
set_workdir {D:\Practice\FIC\designer\FIC}
set_log     {D:\Practice\FIC\designer\FIC\FIC_sdc.log}
set_design_state pre_layout
