################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../system/src/cmsis/system_stm32f0xx.c 

S_UPPER_SRCS += \
../system/src/cmsis/startup_stm32f042x6.S 

OBJS += \
./system/src/cmsis/startup_stm32f042x6.o \
./system/src/cmsis/system_stm32f0xx.o 

S_UPPER_DEPS += \
./system/src/cmsis/startup_stm32f042x6.d 

C_DEPS += \
./system/src/cmsis/system_stm32f0xx.d 


# Each subdirectory must supply rules for building sources it contributes
system/src/cmsis/%.o: ../system/src/cmsis/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Cross Assembler'
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-move-loop-invariants -Wall -Wextra  -g -x assembler-with-cpp -DNDEBUG -I"../include" -I"../system/include" -I"../system/include/cmsis" -I"../system/include/stm32f0xx" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

system/src/cmsis/%.o: ../system/src/cmsis/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-move-loop-invariants -Wall -Wextra  -g -DSTM32F042x6 -I"/home/cbeauduffe/git/vigilant-winner/software/include" -I"/home/cbeauduffe/git/vigilant-winner/software/system/include" -I"/home/cbeauduffe/git/vigilant-winner/software/system/include/cmsis" -I"/home/cbeauduffe/git/vigilant-winner/software/system/include/stm32f0xx" -I"/home/cbeauduffe/git/vigilant-winner/software/Middlewares" -I"/home/cbeauduffe/git/vigilant-winner/software/Middlewares/Inc" -I"/home/cbeauduffe/git/vigilant-winner/software/Drivers" -I"/home/cbeauduffe/git/vigilant-winner/software/Drivers/USB/Inc" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


