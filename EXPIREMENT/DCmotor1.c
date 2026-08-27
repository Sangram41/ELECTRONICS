#include<reg51.h>

sbit motor_pin_1 = P1^0;
sbit motor_pin_2 = P1^1;

void motor_clockwise(void);   // function prototype

void main()
{
    motor_clockwise();   // start the motor once
    while(1);             // keep program running forever
}

void motor_clockwise()
{
    motor_pin_1 = 1;
    motor_pin_2 = 0;
}