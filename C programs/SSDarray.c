#include<reg51.h>
#include<stdio.h>
void display (unsigned char byte);
void delay (unsigned int time)
{
    int i, j ; 
    for (i=0;i<time ;i++)
    for (j=0,j<2000;j++)
}
void main()
{
    int i;
    char arr[]={ p0=0xF9,p0=0x0A4, p0=0x0B0, p0=0x099,p0=0x092, p0=0x082,p0=0x0F8,p0=0x080, po=0x090};
    
    p0=0x00;
    p0=0xFF;
    for (i=0;i<=10;i++)
    {
        p0=arr[i];
        delay(100);
    }
}