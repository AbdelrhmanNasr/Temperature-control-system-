################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../APP_LAYER/APP_TEMP_SENS/APP_TEMP_CTRL_SYSTEM.c 

OBJS += \
./APP_LAYER/APP_TEMP_SENS/APP_TEMP_CTRL_SYSTEM.o 

C_DEPS += \
./APP_LAYER/APP_TEMP_SENS/APP_TEMP_CTRL_SYSTEM.d 


# Each subdirectory must supply rules for building sources it contributes
APP_LAYER/APP_TEMP_SENS/%.o: ../APP_LAYER/APP_TEMP_SENS/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -Wall -g2 -gstabs -O0 -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega32 -DF_CPU=800000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


