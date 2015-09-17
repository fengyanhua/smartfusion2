open_project -project {D:\Practice\FIC\designer\FIC\FIC_fp\FIC.pro}
set_programming_file -name {M2S010} -file {D:\Practice\FIC\designer\FIC\FIC.ipd}
enable_device -name {M2S010} -enable 1
set_programming_action -action {PROGRAM} -name {M2S010} 
run_selected_actions
set_programming_file -name {M2S010} -no_file
save_project
close_project
