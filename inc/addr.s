@ This file will be used for address loactions and offsets
@ Created by: Omer Cinar    August 6th, 2024

@@@@@@@@@@@@@@@@@@@@@@@@
@@@@@@@@ GPIO @@@@@@@@@@
@@@@@@@@@@@@@@@@@@@@@@@@
.equ    GPIO_BASE, 0xFE200000 @ GPIO base address in docs is 0x7e200000. This is legacy and gets mapped differently
    
@ GPIO Function Select OFFSETS
.equ    GPFSEL0, 0x00   @ Pins 9 - 0, MSB reserved
.equ    GPFSEL1, 0x04   @ Pins 19 - 10, MSB reserved
.equ    GPFSEL2, 0x08   @ Pins 29 - 20, MSB reserved
.equ    GPFSEL3, 0x0C   @ Pins 39 - 30, MSB reserved
.equ    GPFSEL4, 0x10   @ Pins 49 - 40, MSB reserved
.equ    GPFSEL5, 0x14   @ Pins 58 - 50, Upper 7-bits reserved

    @ FSELXX - Function Select Pin XX
    @ 000 = GPIO Pin XX is an input
    @ 001 = GPIO Pin XX is an output
    @ 100 = GPIO Pin XX takes alternate function 0
    @ 101 = GPIO Pin XX takes alternate function 1
    @ 110 = GPIO Pin XX takes alternate function 2
    @ 111 = GPIO Pin XX takes alternate function 3
    @ 011 = GPIO Pin XX takes alternate function 4
    @ 010 = GPIO Pin XX takes alternate function 5

@ GPIO Set/Clear OFFSETS (Write Only)
.equ    GPSET0, 0x1C    @ Set Pins 0-31 (31:0)
.equ    GPSET1, 0x20    @ Set Pins 32-57 (25:0), 31:26 reserved
.equ    GPCLR0, 0x28    @ Clear Pins 0-31 (31:0)
.equ    GPCLR1, 0x2C    @ Set Pins 32-57 (25:0), 31:26 reserved

@ GPIO Pull-up/Pull-Down OFFSETS
.equ    GPIO_PUP_PDN_CNTRL_REG0, 0xE4   @ Pins 15 - 0, (31:0)
.equ    GPIO_PUP_PDN_CNTRL_REG1, 0xE8   @ Pins 31 - 16, (31:0)
.equ    GPIO_PUP_PDN_CNTRL_REG2, 0xEC   @ Pins 47 - 32, (31:0)
.equ    GPIO_PUP_PDN_CNTRL_REG3, 0xF0   @ Pins 57 - 48, (19:0), 31:20 are reserved

    @ Resistor Select for Pin XX
    @ 00 = No resistor is selected
    @ 01 = Pull up resistor is selected
    @ 10 = Pull down resistor is selected
    @ 11 = Reserved

@ GPIO Level OFFSETS (Read Only)
.equ    GPLEV0, 0x34    @ Check level of pins 0-31 (31:0)
.equ    GPLEV1, 0x38    @ Check level of pins 32-57 (25:0), 31:26 reserved

@ GPIO Pin Event Detect Status OFFSETS
.equ    GPEDS0, 0x40    @ Event detected on pins 0-31 (31:0)
.equ    GPEDS1, 0x44    @ Event detected on pins 32-57 (25:0), 31:26 reserved
    @ Write 1 to any bit to clear Status

@ GPIO Pin Rising Edge Detect Enable OFFSETS
.equ    GPREN0, 0x4C    @ Rising edge enabled on pins 0-31 (31:0)
.equ    GPREN1, 0x50    @ Rising edge enabled on pins 32_57 (25:0), 31:26 reserved
    @ This is a synchronous Rising Edge detect

@ GPIO Pin Falling Edge Detect Enable OFFSETS
.equ    GPFEN0, 0x58    @ Falling edge enabled on pins 0-31 (31:0)
.equ    GPFEN1, 0x5C    @ Falling edge enabled on pins 32-57 (25:0), 31:26 reserved
    @ This is a synchronous Falling Edge detect

@ GPIO Pin High Detect Enable OFFSETS
.equ    GPHEN0, 0x64    @ High detect enable on pins 0-31 (31:0)
.equ    GPHEN1, 0x68    @ High detect enable on pins 32-57 (25:0), 31:26 reserved

@ GPIO Pin Low Detect Enable OFFSETS
.equ    GPLEN0, 0x70    @ Low detect enable on pins 0-31 (31:0)
.equ    GPLEN1, 0x74    @ Low detect enable on pins 32-57 (25:0), 31:26 reserved

@ GPIO Pin Async. Rising Edge Detect OFFSETS
.equ    GPAREN0, 0x7C   @ Rising edge enabled on pins 0-31 (31:0)
.equ    GPAREN1, 0x80   @ Rising edge enabled on pins 32_57 (25:0), 31:26 reserved
    @ This is an asynchronous Rising Edge detect

@ GPIO Pin Async. Falling Edge Detect OFFSETS
.equ    GPAFEN0, 0x88   @ Falling edge enabled on pins 0-31 (31:0)
.equ    GPAFEN1, 0x8C   @ Falling edge enabled on pins 32-57 (25:0), 31:26 reserved
    @ This is an asynchronous Falling Edge detect