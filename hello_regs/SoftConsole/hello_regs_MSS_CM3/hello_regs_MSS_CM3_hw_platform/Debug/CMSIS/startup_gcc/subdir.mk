################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../CMSIS/startup_gcc/newlib_stubs.c 

S_UPPER_SRCS += \
../CMSIS/startup_gcc/startup_m2sxxx.S 

OBJS += \
./CMSIS/startup_gcc/newlib_stubs.o \
./CMSIS/startup_gcc/startup_m2sxxx.o 

C_DEPS += \
./CMSIS/startup_gcc/newlib_stubs.d 


# Each subdirectory must supply rules for building sources it contributes
CMSIS/startup_gcc/%.o: ../CMSIS/startup_gcc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU C Compiler'
	arm-none-eabi-gcc -mthumb -mcpu=cortex-m3 -IE:\Practice\hello_regs\SoftConsole\hello_regs_MSS_CM3\hello_regs_MSS_CM3_hw_platform -IE:\Practice\hello_regs\SoftConsole\hello_regs_MSS_CM3\hello_regs_MSS_CM3_hw_platform\CMSIS -IE:\Practice\hello_regs\SoftConsole\hello_regs_MSS_CM3\hello_regs_MSS_CM3_hw_platform\CMSIS\startup_gcc -IE:\Practice\hello_regs\SoftConsole\hello_regs_MSS_CM3\hello_regs_MSS_CM3_hw_platform\drivers -IE:\Practice\hello_regs\SoftConsole\hello_regs_MSS_CM3\hello_regs_MSS_CM3_hw_platform\drivers\mss_hpdma -IE:\Practice\hello_regs\SoftConsole\hello_regs_MSS_CM3\hello_regs_MSS_CM3_hw_platform\drivers\mss_nvm -IE:\Practice\hello_regs\SoftConsole\hello_regs_MSS_CM3\hello_regs_MSS_CM3_hw_platform\drivers\mss_sys_services -IE:\Practice\hello_regs\SoftConsole\hello_regs_MSS_CM3\hello_regs_MSS_CM3_hw_platform\drivers\mss_timer -IE:\Practice\hello_regs\SoftConsole\hello_regs_MSS_CM3\hello_regs_MSS_CM3_hw_platform\drivers\mss_uart -IE:\Practice\hello_regs\SoftConsole\hello_regs_MSS_CM3\hello_regs_MSS_CM3_hw_platform\drivers_config -IE:\Practice\hello_regs\SoftConsole\hello_regs_MSS_CM3\hello_regs_MSS_CM3_hw_platform\drivers_config\sys_config -IE:\Practice\hello_regs\SoftConsole\hello_regs_MSS_CM3\hello_regs_MSS_CM3_hw_platform\hal -IE:\Practice\hello_regs\SoftConsole\hello_regs_MSS_CM3\hello_regs_MSS_CM3_hw_platform\hal\CortexM3 -IE:\Practice\hello_regs\SoftConsole\hello_regs_MSS_CM3\hello_regs_MSS_CM3_hw_platform\hal\CortexM3\GNU -O0 -ffunction-sections -fdata-sections -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

CMSIS/startup_gcc/%.o: ../CMSIS/startup_gcc/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Assembler'
	arm-none-eabi-gcc -c -mthumb -mcpu=cortex-m3 -specs=bare.specs  -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


