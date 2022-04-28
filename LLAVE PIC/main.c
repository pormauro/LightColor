#include "C:\Documents and Settings\Massa\Mis documentos\Llave\CCS\main.h"

char caracter;
int A; int B; int C; int Result;
char TextoLlave[]="PP Iluminaciones";
int LargoTextoLlave=16;
int Indice=0;

#int_RDA
void  RDA_isr(void) 
{
    caracter=getchar();
    if(Indice==LargoTextoLlave){A=caracter;Indice++;}else{
        if(Indice==LargoTextoLlave+1){B=caracter;Indice++;}else{
            if(Indice==LargoTextoLlave+2){C=caracter;Indice=0;
               printf("TodoOk");
               Result=(B/16)*(C/16);
               if(255<Result){Result=255;}
               putchar(Result);
               putchar(B);
               putchar(C);
            }else{
                if(Indice<LargoTextoLlave){
                    if(caracter==TextoLlave[Indice]){
                        Indice++;
                    }else{
                        Indice=0;
                    }
                }
            }
        }
     }
}


void main()
{

   setup_timer_0(RTCC_INTERNAL|RTCC_DIV_1);
   setup_timer_1(T1_DISABLED);
   setup_timer_2(T2_DISABLED,0,1);
   setup_comparator(NC_NC_NC_NC);
   setup_vref(FALSE);

   enable_interrupts(INT_RDA);
   enable_interrupts(GLOBAL);

   set_tris_a(0);
   set_tris_b(2);
   
   while(1){
        //putchar(A++);
        delay_ms(500); 
        output_high(PIN_A1);
        delay_ms(500); 
        output_low(PIN_A1);
   }
}
