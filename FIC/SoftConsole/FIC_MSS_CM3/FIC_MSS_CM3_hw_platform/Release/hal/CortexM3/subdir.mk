################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../hal/CortexM3/cortex_nvic.c 

OBJS += \
./hal/CortexM3/cortex_nvic.o 

C_DEPS += \
./hal/CortexM3/cortex_nvic.d 


# Each subdirectory must supply rules for building sources it contributes
hal/CortexM3/%.o: ../hal/CortexM3/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU C Compiler'
	arm-none-eabi-gcc -mthumb -mcpu=cortex-m3 -DNDEBUG -ID:\Practice\FIC\SoftConsole\FIC_MSS_CM3\FIC_MSS_CM3_hw_platform -ID:\Practice\FIC\SoftConsole\FIC_MSS_CM3\FIC_MSS_CM3_hw_platform\CMSIS -ID:\Practice\FIC\SoftConsole\FIC_MSS_CM3\FIC_MSS_CM3_hw_platform\CMSIS\startup_gcc -ID:\Practice\FIC\SoftConsole\FIC_MSS_CM3\FIC_MSS_CM3_hw_platform\drivers -ID:\Practice\FIC\SoftConsole\FIC_MSS_CM3\FIC_MSS_CM3_hw_platform\drivers\mss_hpdma -ID:\Practice\FIC\SoftConsole\FIC_MSS_CM3\FIC_MSS_CM3_hw_platform\drivers\mss_sys_services -ID:\Practice\FIC\SoftConsole\FIC_MSS_CM3\FIC_MSS_CM3_hw_platform\drivers\mss_timer -ID:\Practice\FIC\SoftConsole\FIC_MSS_CM3\FIC_MSS_CM3_hw_platform\drivers\mss_uart -ID:\Practice\FIC\SoftConsole\FIC_MSS_CM3\FIC_MSS_CM3_hw_platform\drivers_config -ID:\Practice\FIC\SoftConsole\FIC_MSS_CM3\FIC_MSS_CM3_hw_platform\drivers_config\sys_config -ID:\Practice\FIC\SoftConsole\FIC_MSS_CM3\FIC_MSS_CM3_hw_platform\hal -ID:\Practice\FIC\SoftConsole\FIC_MSS_CM3\FIC_MSS_CM3_hw_platform\hal\CortexM3 -ID:\Practice\FIC\SoftConsole\FIC_MSS_CM3\FIC_MSS_CM3_hw_platform\hal\CortexM3\GNU -O2 -ffunction-sections -fdata-sections -g -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


