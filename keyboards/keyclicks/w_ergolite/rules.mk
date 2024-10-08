# This file intentionally left blank
# MCU name
MCU = STM32F103
BOOTLOADER = stm32duino
# Build Options
#   change yes to no to disable
#

# Wildcard to allow APM32 MCU
DFU_SUFFIX_ARGS = -v FFFF -p FFFF

BOOTMAGIC_ENABLE = no      # Enable Bootmagic Lite
MOUSEKEY_ENABLE = yes       # Mouse keys
EXTRAKEY_ENABLE = yes       # Audio control and System control
CONSOLE_ENABLE = no         # Console for debug
COMMAND_ENABLE = no         # Commands for debug and configuration
NKRO_ENABLE = yes            # Enable N-Key Rollover
BACKLIGHT_ENABLE = no       # Enable keyboard backlight functionality
RGBLIGHT_ENABLE = no        # Enable keyboard RGB underglow
AUDIO_ENABLE = no           # Audio output
ENCODER_ENABLE = no
TAP_DANCE_ENABLE = yes
CUSTOM_MATRIX = lite

RGB_MATRIX_ENABLE = yes
RGB_MATRIX_DRIVER = ws2812
SERIAL_DRIVER = usart

SRC += matrix.c
UART_DRIVER_REQUIRED = yes
# QUANTUM_LIB_SRC += uart.c
# Enter lower-power sleep mode when on the ChibiOS idle thread
OPT_DEFS += -DCORTEX_ENABLE_WFI_IDLE=TRUE
