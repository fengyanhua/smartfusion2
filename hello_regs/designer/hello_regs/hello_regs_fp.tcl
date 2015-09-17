new_project \
         -name {hello_regs} \
         -location {D:\Practice\hello_regs\designer\hello_regs\hello_regs_fp} \
         -mode {chain} \
         -connect_programmers {FALSE}
add_actel_device \
         -device {M2S010} \
         -name {M2S010}
enable_device \
         -name {M2S010} \
         -enable {TRUE}
save_project
close_project
