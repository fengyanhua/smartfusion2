quietly set ACTELLIBNAME SmartFusion2
quietly set PROJECT_DIR "D:/Practice/FIC"
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

vlog  -work presynth "${PROJECT_DIR}/component/Actel/DirectCore/CoreGPIO/3.0.120/rtl/vlog/core/coregpio.v"
vlog  -work presynth "${PROJECT_DIR}/component/work/FIC/FCCC_0/FIC_FCCC_0_FCCC.v"
vlog  -work presynth "${PROJECT_DIR}/component/work/FIC_MSS/FIC_MSS.v"
vlog  -work presynth "${PROJECT_DIR}/component/work/FIC/OSC_0/FIC_OSC_0_OSC.v"
vlog  -work presynth "${PROJECT_DIR}/hdl/reg16x8.v"
vlog  -work presynth "${PROJECT_DIR}/hdl/reg_apb_wrp.v"
vlog  -work COREAPB3_LIB "${PROJECT_DIR}/component/Actel/DirectCore/CoreAPB3/4.1.100/rtl/vlog/core/coreapb3_muxptob3.v"
vlog  -work COREAPB3_LIB "${PROJECT_DIR}/component/Actel/DirectCore/CoreAPB3/4.1.100/rtl/vlog/core/coreapb3_iaddr_reg.v"
vlog  -work COREAPB3_LIB "${PROJECT_DIR}/component/Actel/DirectCore/CoreAPB3/4.1.100/rtl/vlog/core/coreapb3.v"
vlog  -work presynth "${PROJECT_DIR}/component/work/FIC/FIC.v"

vsim -L SmartFusion2 -L presynth -L COREAPB3_LIB  -t 1fs presynth.FIC
# The following lines are commented because no testbench is associated with the project
# do "${PROJECT_DIR}/simulation/wave.do"
# add log -r /*
# run 50us
