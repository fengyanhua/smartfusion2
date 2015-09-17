report \
    -type     timing \
    -analysis max \
    -format   xml \
    {D:\Practice\hello_regs\designer\hello_regs\hello_regs_maxdelay_timing_report.xml}
report \
    -type     timing \
    -analysis min \
    -format   xml \
    {D:\Practice\hello_regs\designer\hello_regs\hello_regs_mindelay_timing_report.xml}
report \
    -type     timing_violations \
    -analysis max \
    -format   xml \
    {D:\Practice\hello_regs\designer\hello_regs\hello_regs_maxdelay_timing_violations_report.xml}
report \
    -type     timing_violations \
    -analysis min \
    -format   xml \
    {D:\Practice\hello_regs\designer\hello_regs\hello_regs_mindelay_timing_violations_report.xml}
set has_violations {D:\Practice\hello_regs\designer\hello_regs\hello_regs_has_violations}
set fp [open $has_violations w]
puts $fp [has_violations -short]
close $fp
