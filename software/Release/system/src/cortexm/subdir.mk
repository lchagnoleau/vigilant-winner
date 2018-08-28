################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../system/src/cortexm/_initialize_hardware.c \
../system/src/cortexm/_reset_hardware.c \
../system/src/cortexm/exception_handlers.c 

OBJS += \
./system/src/cortexm/_initialize_hardware.o \
./system/src/cortexm/_reset_hardware.o \
./system/src/cortexm/exception_handlers.o 

C_DEPS += \
./system/src/cortexm/_initialize_hardware.d \
./system/src/cortexm/_reset_hardware.d \
./system/src/cortexm/exception_handlers.d 


# Each subdirectory must supply rules for building sources it contributes
system/src/cortexm/%.o: ../system/src/cortexm/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-move-loop-invariants -Wall -Wextra  -g -DSTM32F042x6 -I"/home/cbeauduffe/git/vigilant-winner/software/include" -I"/home/cbeauduffe/git/vigilant-winner/software/system/include" -I"/home/cbeauduffe/git/vigilant-winner/software/system/include/cmsis" -I"/home/cbeauduffe/git/vigilant-winner/software/system/include/stm32f0xx" -I"/home/cbeauduffe/git/vigilant-winner/software/Middlewares" -I"/home/cbeauduffe/git/vigilant-winner/software/Middlewares/Inc" -I"/home/cbeauduffe/git/vigilant-winner/software/Drivers" -I"/home/cbeauduffe/git/vigilant-winner/software/Drivers/USB/Inc" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


