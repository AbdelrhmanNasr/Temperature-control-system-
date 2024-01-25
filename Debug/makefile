################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include MCAL/UART/subdir.mk
-include MCAL/TIMER/subdir.mk
-include MCAL/PORT/subdir.mk
-include MCAL/I2C/subdir.mk
-include MCAL/GIE/subdir.mk
-include MCAL/EXTI/subdir.mk
-include MCAL/DIO/subdir.mk
-include MCAL/ADC/subdir.mk
-include HAL/LEDs/subdir.mk
-include HAL/KPD/subdir.mk
-include HAL/EEPROM/subdir.mk
-include HAL/CLCD/subdir.mk
-include HAL/BUZZER/subdir.mk
-include APP_LAYER/APP_TEMP_SENS/subdir.mk
-include APP_LAYER/APP_EEPROM/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
LSS += \
temp_system.lss \

FLASH_IMAGE += \
temp_system.hex \

EEPROM_IMAGE += \
temp_system.eep \

SIZEDUMMY += \
sizedummy \


# All Target
all: temp_system.elf secondary-outputs

# Tool invocations
temp_system.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: AVR C Linker'
	avr-gcc -Wl,-Map,temp_system.map -mmcu=atmega32 -o "temp_system.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

temp_system.lss: temp_system.elf
	@echo 'Invoking: AVR Create Extended Listing'
	-avr-objdump -h -S temp_system.elf  >"temp_system.lss"
	@echo 'Finished building: $@'
	@echo ' '

temp_system.hex: temp_system.elf
	@echo 'Create Flash image (ihex format)'
	-avr-objcopy -R .eeprom -R .fuse -R .lock -R .signature -O ihex temp_system.elf  "temp_system.hex"
	@echo 'Finished building: $@'
	@echo ' '

temp_system.eep: temp_system.elf
	@echo 'Create eeprom image (ihex format)'
	-avr-objcopy -j .eeprom --no-change-warnings --change-section-lma .eeprom=0 -O ihex temp_system.elf  "temp_system.eep"
	@echo 'Finished building: $@'
	@echo ' '

sizedummy: temp_system.elf
	@echo 'Invoking: Print Size'
	-avr-size --format=avr --mcu=atmega32 temp_system.elf
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(FLASH_IMAGE)$(ELFS)$(OBJS)$(ASM_DEPS)$(EEPROM_IMAGE)$(S_DEPS)$(SIZEDUMMY)$(S_UPPER_DEPS)$(LSS)$(C_DEPS) temp_system.elf
	-@echo ' '

secondary-outputs: $(LSS) $(FLASH_IMAGE) $(EEPROM_IMAGE) $(SIZEDUMMY)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
