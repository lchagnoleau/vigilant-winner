################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/init.c \
../src/main.c \
../src/stm32f0xx_hal_msp.c \
../src/stm32f0xx_it.c \
../src/usb.c 

OBJS += \
./src/init.o \
./src/main.o \
./src/stm32f0xx_hal_msp.o \
./src/stm32f0xx_it.o \
./src/usb.o 

C_DEPS += \
./src/init.d \
./src/main.d \
./src/stm32f0xx_hal_msp.d \
./src/stm32f0xx_it.d \
./src/usb.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-move-loop-invariants -Wall -Wextra  -g -DSTM32F042x6 -I"/home/lchagnoleau/git/vigilant-winner/software/include" -I"/home/lchagnoleau/git/vigilant-winner/software/system/include" -I"/home/lchagnoleau/git/vigilant-winner/software/system/include/cmsis" -I"/home/lchagnoleau/git/vigilant-winner/software/system/include/stm32f0xx" -I"/home/lchagnoleau/git/vigilant-winner/software/Middlewares" -I"/home/lchagnoleau/git/vigilant-winner/software/Middlewares/Inc" -I"/home/lchagnoleau/git/vigilant-winner/software/Drivers" -I"/home/lchagnoleau/git/vigilant-winner/software/Drivers/USB/Inc" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


