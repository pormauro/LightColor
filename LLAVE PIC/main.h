#include <16F628A.h>

#FUSES NOWDT                 	//No Watch Dog Timer
#FUSES HS                    	//High speed Osc (> 4mhz)
#FUSES NOPUT                 	//No Power Up Timer
#FUSES NOPROTECT             	//Code not protected from reading
#FUSES NOBROWNOUT            	//No brownout reset
#FUSES NOMCLR                	//Master Clear pin used for I/O
#FUSES NOLVP                 	//No low voltage prgming, B3(PIC16) or B5(PIC18) used for I/O
#FUSES NOCPD                 	//No EE protection

#use delay(clock=20000000)
#use rs232(baud=250000,parity=N,xmit=PIN_B2,rcv=PIN_B1,bits=8)

