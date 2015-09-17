quietly set ACTELLIBNAME SmartFusion2
quietly set PROJECT_DIR "D:/Practice/hello_regs"
source "${PROJECT_DIR}/simulation/CM3_compile_bfm.tcl";source "${PROJECT_DIR}/simulation/bfmtovec_compile.tcl";

if {[file exists presynth/_info]} {
   echo "INFO: Simulation library presynth already exists"
} else {
   file delete -force presynth 
   vlib presynth
}
vmap presynth presynth
vmap SmartFusion2 "D:/Microsemi/Libero_v11.5/Designer/lib/modelsim/precompiled/vlog/SmartFusion2"
if {[file exists COREAPB3_LIB/_info]} {
   echo "INFO: Simulation library COREAPB3_LIB already exists"
} else {
   file delete -force COREAPB3_LIB 
   vlib COREAPB3_LIB
}
vmap COREAPB3_LIB "COREAPB3_LIB"

vlog  -work presynth "${PROJECT_DIR}/component/Actel/DirectCore/CoreGPIO/3.1.101/rtl/vlog/core/coregpio.v"
vlog  -work presynth "${PROJECT_DIR}/component/work/hello_regs/FCCC_0/hello_regs_FCCC_0_FCCC.v"
vlog  -work presynth "${PROJECT_DIR}/component/work/hello_regs_MSS/hello_regs_MSS.v"
vlog  -work presynth "${PROJECT_DIR}/component/work/hello_regs/OSC_0/hello_regs_OSC_0_OSC.v"
vlog  -work presynth "${PROJECT_DIR}/hdl/reg32x8.v"
vlog  -work presynth "${PROJECT_DIR}/hdl/reg_apb_wrp.v"
vlog  -work COREAPB3_LIB "${PROJECT_DIR}/component/Actel/DirectCore/CoreAPB3/4.1.100/rtl/vlog/core/coreapb3_muxptob3.v"
vlog  -work COREAPB3_LIB "${PROJECT_DIR}/component/Actel/DirectCore/CoreAPB3/4.1.100/rtl/vlog/core/coreapb3_iaddr_reg.v"
vlog  -work COREAPB3_LIB "${PROJECT_DIR}/component/Actel/DirectCore/CoreAPB3/4.1.100/rtl/vlog/core/coreapb3.v"
vlog  -work presynth "${PROJECT_DIR}/component/work/hello_regs/hello_regs.v"
vlog "+incdir+${PROJECT_DIR}/stimulus"  -work presynth "${PROJECT_DIR}/stimulus/test_regs.v"

vsim -L SmartFusion2 -L presynth -L COREAPB3_LIB  -t 1ps presynth.test_regs
do "wave.do"
add log -r /*
run 100us
