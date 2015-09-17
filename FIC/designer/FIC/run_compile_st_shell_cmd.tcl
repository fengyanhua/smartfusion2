save
set has_violations {D:\Practice\FIC\designer\FIC\FIC_pre_layout_has_violations}
set fp [open $has_violations w]
puts $fp [has_violations -short]
close $fp
report -type combinational_loops -format xml {D:\Practice\FIC\designer\FIC\FIC_combinational_loops.xml}
if { [catch "file delete -force -- {D:\Practice\FIC\designer\FIC\pinslacks.txt}"] } {
   ;
}
report -type slack {D:\Practice\FIC\designer\FIC\pinslacks.txt}
