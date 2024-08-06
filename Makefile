# 

CC=arm-none-eabi-as
LD=arm-none-eabi-ld
OC=arm-none-eabi-objcopy
CFLAGS=


# Enable Debug
ifdef Debug
DEBUGFLGS= -g
else
DEBUGFLGS=
endif	


compile:

clean:

run:
