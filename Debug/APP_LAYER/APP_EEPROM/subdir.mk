################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../APP_LAYER/APP_EEPROM/EEPROM_STORE.c 

OBJS += \
./APP_LAYER/APP_EEPROM/EEPROM_STORE.o 

C_DEPS += \
./APP_LAYER/APP_EEPROM/EEPROM_STORE.d 


# Each subdirectory must supply rules for building sources it contributes
APP_LAYER/APP_EEPROM/%.o: ../APP_LAYER/APP_EEPROM/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -Wall -g2 -gstabs -O0 -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega32 -DF_CPU=800000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


