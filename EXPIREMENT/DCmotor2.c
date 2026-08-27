#include<reg51.h>

sbit motor_pin_1 = P1^0;
sbit motor_pin_2 = P1^1;

void main()
{
    do
    {
        motor_pin_1 = 1;
        motor_pin_2 = 0;
    } while(1);
}