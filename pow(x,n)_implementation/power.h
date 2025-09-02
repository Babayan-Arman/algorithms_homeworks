#pragma once

#include <iostream>
#include <cmath>

double pow(double number, int power)
{
    double answer = 1;
    if(power == 0 && number != 0) return answer;
    if(power <= 0 && number == 0)
    {
        std::cout << "UNDEFINED cant count. return 0 \n";
        return 0;
    }
    if(number == 1 || number == 0) 
    {
        if(number == 1) return 1;
        else  return 0;
    }
    int power_temp = abs(power);
    int iterations = (std::log2(power_temp)) + 1;
    double temp = number;
    
    for(int i = 0; i < iterations; i++) 
    {
        if (power_temp%2 == 1 ) answer *= temp;
        power_temp = power_temp >> 1;
        temp *= temp;
    }
    return (power < 0 ? 1/answer : answer);
}


double pow_simple (double number, int power)
{
    double answer = 1;
    if(power == 0 && number != 0) return answer;
    if(power <= 0 && number == 0)
    {
        std::cout << "UNDEFINED cant count. return 0 \n";
        return 0;
    }
    if(number == 1 || number == 0) 
    {
        if(number == 1) return 1;
        else  return 0;
    }
    int power_temp = abs(power);
    for(int i =0; i < power_temp;i++)
    {
        answer *= number;
    }
    return (power < 0 ? 1/answer : answer);
}



double pow_rs (double number, int power)
{
    double answer = number;
    if(power == 0 && number != 0) return answer;
    if(power <= 0 && number == 0)
    {
        std::cout << "UNDEFINED cant count. return 0 \n";
        return 0;
    }
    if(number == 1 || number == 0) 
    {
        if(number == 1) return 1;
        else  return 0;
    }
    int power_temp = abs(power);
   
    if(power_temp != 1) answer *= pow_rs(number,--power_temp);
    return (power < 0 ? 1/answer : answer);
}
