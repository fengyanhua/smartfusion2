################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers_config/sys_config/sys_config.c 

OBJS += \
./drivers_config/sys_config/sys_config.o 

C_DEPS += \
./drivers_config/sys_config/sys_config.d 


# Each subdirectory must supply rules for building sources it contributes
drivers_config/sys_config/%.o: ../drivers_config/sys_config/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU C Compiler'
	arm-none-eabi-gcc -mthumb -mcpu=cortex-m3 -IE:\Practice\hello_regs\SoftConsole\hello_regs_MSS_CM3\hello_regs_MSS_CM3_hw_platform -IE:\Practice\hello_regs\SoftConsole\hello_regs_MSS_CM3\hello_regs_MSS_CM3_hw_platform\CMSIS -IE:\Practice\hello_regs\SoftConsole\hello_regs_MSS_CM3\hello_regs_MSS_CM3_hw_platform\CMSIS\startup_gcc -IE:\Practice\hello_regs\SoftConsole\hello_regs_MSS_CM3\hello_regs_MSS_CM3_hw_platform\drivers -IE:\Practice\hello_regs\SoftConsole\hello_regs_MSS_CM3\hello_regs_MSS_CM3_hw_platform\drivers\mss_hpdma -IE:\Practice\hello_regs\SoftConsole\hello_regs_MSS_CM3\hello_regs_MSS_CM3_hw_platform\drivers\mss_nvm -IE:\Practice\hello_regs\SoftConsole\hello_regs_MSS_CM3\hello_regs_MSS_CM3_hw_platform\drivers\mss_sys_services -IE:\Practice\hello_regs\SoftConsole\hello_regs_MSS_CM3\hello_regs_MSS_CM3_hw_platform\drivers\mss_timer -IE:\Practice\hello_regs\SoftConsole\hello_regs_MSS_CM3\hello_regs_MSS_CM3_hw_platform\drivers\mss_uart -IE:\Practice\hello_regs\SoftConsole\hello_regs_MSS_CM3\hello_regs_MSS_CM3_hw_platform\drivers_config -IE:\Practice\hello_regs\SoftConsole\hello_regs_MSS_CM3\hello_regs_MSS_CM3_hw_platform\drivers_config\sys_config -IE:\Practice\hello_regs\SoftConsole\hello_regs_MSS_CM3\hello_regs_MSS_CM3_hw_platform\hal -IE:\Practice\hello_regs\SoftConsole\hello_regs_MSS_CM3\hello_regs_MSS_CM3_hw_platform\hal\CortexM3 -IE:\Practice\hello_regs\SoftConsole\hello_regs_MSS_CM3\hello_regs_MSS_CM3_hw_platform\hal\CortexM3\GNU -O0 -ffunction-sections -fdata-sections -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


