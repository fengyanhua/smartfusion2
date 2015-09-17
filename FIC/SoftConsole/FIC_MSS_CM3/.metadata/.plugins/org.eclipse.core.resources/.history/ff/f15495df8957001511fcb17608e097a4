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
	arm-none-eabi-gcc -mthumb -mcpu=cortex-m3 -DNDEBUG -ID:\Practice\FIC\SoftConsole\FIC_MSS_CM3\FIC_MSS_CM3_hw_platform -ID:\Practice\FIC\SoftConsole\FIC_MSS_CM3\FIC_MSS_CM3_hw_platform\CMSIS -ID:\Practice\FIC\SoftConsole\FIC_MSS_CM3\FIC_MSS_CM3_hw_platform\CMSIS\startup_gcc -ID:\Practice\FIC\SoftConsole\FIC_MSS_CM3\FIC_MSS_CM3_hw_platform\drivers -ID:\Practice\FIC\SoftConsole\FIC_MSS_CM3\FIC_MSS_CM3_hw_platform\drivers\mss_hpdma -ID:\Practice\FIC\SoftConsole\FIC_MSS_CM3\FIC_MSS_CM3_hw_platform\drivers\mss_sys_services -ID:\Practice\FIC\SoftConsole\FIC_MSS_CM3\FIC_MSS_CM3_hw_platform\drivers\mss_timer -ID:\Practice\FIC\SoftConsole\FIC_MSS_CM3\FIC_MSS_CM3_hw_platform\drivers\mss_uart -ID:\Practice\FIC\SoftConsole\FIC_MSS_CM3\FIC_MSS_CM3_hw_platform\drivers_config -ID:\Practice\FIC\SoftConsole\FIC_MSS_CM3\FIC_MSS_CM3_hw_platform\drivers_config\sys_config -ID:\Practice\FIC\SoftConsole\FIC_MSS_CM3\FIC_MSS_CM3_hw_platform\hal -ID:\Practice\FIC\SoftConsole\FIC_MSS_CM3\FIC_MSS_CM3_hw_platform\hal\CortexM3 -ID:\Practice\FIC\SoftConsole\FIC_MSS_CM3\FIC_MSS_CM3_hw_platform\hal\CortexM3\GNU -O2 -ffunction-sections -fdata-sections -g -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

CMSIS/startup_gcc/%.o: ../CMSIS/startup_gcc/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Assembler'
	arm-none-eabi-gcc -c -mthumb -mcpu=cortex-m3 -specs=bare.specs  -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


