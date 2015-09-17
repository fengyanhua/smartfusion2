open_project -project {E:\Practice\hello_regs\designer\hello_regs\hello_regs_fp\hello_regs.pro}
set_programming_file -name {M2S010} -file {E:\Practice\hello_regs\designer\hello_regs\hello_regs.ipd}
enable_device -name {M2S010} -enable 1
set_programming_action -action {PROGRAM} -name {M2S010} 
run_selected_actions
set_programming_file -name {M2S010} -no_file
save_project
close_project
