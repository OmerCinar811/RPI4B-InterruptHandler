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

