save
set has_violations {E:\Practice\hello_regs\designer\hello_regs\hello_regs_pre_layout_has_violations}
set fp [open $has_violations w]
puts $fp [has_violations -short]
close $fp
report -type combinational_loops -format xml {E:\Practice\hello_regs\designer\hello_regs\hello_regs_combinational_loops.xml}
if { [catch "file delete -force -- {E:\Practice\hello_regs\designer\hello_regs\pinslacks.txt}"] } {
   ;
}
report -type slack {E:\Practice\hello_regs\designer\hello_regs\pinslacks.txt}
