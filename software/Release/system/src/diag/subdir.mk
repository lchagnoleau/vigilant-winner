################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../system/src/diag/Trace.c \
../system/src/diag/trace_impl.c 

OBJS += \
./system/src/diag/Trace.o \
./system/src/diag/trace_impl.o 

C_DEPS += \
./system/src/diag/Trace.d \
./system/src/diag/trace_impl.d 


# Each subdirectory must supply rules for building sources it contributes
system/src/diag/%.o: ../system/src/diag/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-move-loop-invariants -Wall -Wextra  -g -DSTM32F042x6 -I"/home/lchagnoleau/git/vigilant-winner/software/include" -I"/home/lchagnoleau/git/vigilant-winner/software/system/include" -I"/home/lchagnoleau/git/vigilant-winner/software/system/include/cmsis" -I"/home/lchagnoleau/git/vigilant-winner/software/system/include/stm32f0xx" -I"/home/lchagnoleau/git/vigilant-winner/software/Middlewares" -I"/home/lchagnoleau/git/vigilant-winner/software/Middlewares/Inc" -I"/home/lchagnoleau/git/vigilant-winner/software/Drivers" -I"/home/lchagnoleau/git/vigilant-winner/software/Drivers/USB/Inc" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


