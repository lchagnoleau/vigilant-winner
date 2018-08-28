################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/USB/Src/usb_device.c \
../Drivers/USB/Src/usbd_conf.c \
../Drivers/USB/Src/usbd_desc.c 

OBJS += \
./Drivers/USB/Src/usb_device.o \
./Drivers/USB/Src/usbd_conf.o \
./Drivers/USB/Src/usbd_desc.o 

C_DEPS += \
./Drivers/USB/Src/usb_device.d \
./Drivers/USB/Src/usbd_conf.d \
./Drivers/USB/Src/usbd_desc.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/USB/Src/%.o: ../Drivers/USB/Src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-move-loop-invariants -Wall -Wextra  -g -DSTM32F042x6 -I"/home/cbeauduffe/git/vigilant-winner/software/include" -I"/home/cbeauduffe/git/vigilant-winner/software/system/include" -I"/home/cbeauduffe/git/vigilant-winner/software/system/include/cmsis" -I"/home/cbeauduffe/git/vigilant-winner/software/system/include/stm32f0xx" -I"/home/cbeauduffe/git/vigilant-winner/software/Middlewares" -I"/home/cbeauduffe/git/vigilant-winner/software/Middlewares/Inc" -I"/home/cbeauduffe/git/vigilant-winner/software/Drivers" -I"/home/cbeauduffe/git/vigilant-winner/software/Drivers/USB/Inc" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


