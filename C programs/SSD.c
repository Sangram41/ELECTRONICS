#include<reg51.h>
#include<studio.h>
void display (unsigned char byte);
void delay (unsigned int time)
{
    int i, j ; 
    for (i=0;i<time ;i++)
    for (j=0,j<2000;j++)
}
void main ()
{
    p0=0x00;
    p1=0xFF;
    while(1)
{   
    //DISPLAY
    p0=0xF9;
    delay(100);
    p0=0x0A4;
    delay(100);
    p0=0x0B0;
    delay(100)
    p0=0x099;
    delay(100);
    p0=0x092;
    delay(100);
    p0=0x082;
    delay(100);
    p0=0x0F8;
    delay(100);
    p0=0x080;
    delay(100);
    po=0x090;
    delay(100);
}
}









}