# 0 "SevenSeg.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "SevenSeg.c"
# 1 "SevenSeg.h" 1
# 2 "SevenSeg.c" 2

void SevenSeg()
{
 unsigned int * seg0_addr = (unsigned int *) 0xFFFF2000 + 3;
 unsigned int * led_addr = (unsigned int *) 0xFFFF2000 + 2;
 unsigned int i, data;

 data = 0x155;
 while (1){

  *seg0_addr = 0x5B;
  *led_addr = data;
  data = data ^ 0x3FF;

  for (i=0; i<0xFFFFF; i++) ;
  for (i=0; i<0x10; i++) ;
  *seg0_addr = 0x77;
  *led_addr = data;
  data = data ^ 0x3FF;
  for (i=0; i<0xFFFFF; i++) ;
  for (i=0; i<0x10; i++) ;
 }
 return;
}
