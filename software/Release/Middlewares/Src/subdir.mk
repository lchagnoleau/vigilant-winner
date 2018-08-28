################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Src/usbd_core.c \
../Middlewares/Src/usbd_ctlreq.c \
../Middlewares/Src/usbd_hid.c \
../Middlewares/Src/usbd_ioreq.c 

OBJS += \
./Middlewares/Src/usbd_core.o \
./Middlewares/Src/usbd_ctlreq.o \
./Middlewares/Src/usbd_hid.o \
./Middlewares/Src/usbd_ioreq.o 

C_DEPS += \
./Middlewares/Src/usbd_core.d \
./Middlewares/Src/usbd_ctlreq.d \
./Middlewares/Src/usbd_hid.d \
./Middlewares/Src/usbd_ioreq.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Src/%.o: ../Middlewares/Src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Cross C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-move-loop-invariants -Wall -Wextra  -g -DSTM32F042x6 -I"/home/lchagnoleau/git/vigilant-winner/software/include" -I"/home/lchagnoleau/git/vigilant-winner/software/system/include" -I"/home/lchagnoleau/git/vigilant-winner/software/system/include/cmsis" -I"/home/lchagnoleau/git/vigilant-winner/software/system/include/stm32f0xx" -I"/home/lchagnoleau/git/vigilant-winner/software/Middlewares" -I"/home/lchagnoleau/git/vigilant-winner/software/Middlewares/Inc" -I"/home/lchagnoleau/git/vigilant-winner/software/Drivers" -I"/home/lchagnoleau/git/vigilant-winner/software/Drivers/USB/Inc" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


