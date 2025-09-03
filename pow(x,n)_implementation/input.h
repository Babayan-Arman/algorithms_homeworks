#pragma once 

#include <iostream>
#include "parser.h"

void to_upper (std::string& input)
{
    for(int i=0;i<input.size();i++)
        input[i] = std::toupper(input[i]);
} 

void number_input (std::string& input,bool& end,bool& there_is_num,bool& there_is_power,double& num,number& input_to_num )
{
    to_upper(input);
    if(input == "EXIT") 
    {
        end = 1;
        there_is_num = 1;
        there_is_power = 1; 
        std::cout << "Bye Bye\n";
    }
    else 
    {
        input_to_num = string_to_number(input);
        if(input_to_num.is_not_num == 1)
            std::cout << " input is not number \n";
        else
        {
            num = input_to_num.num;
            there_is_num = 1;
        }
    }
}

void int_number_input (std::string& input,bool& end,bool& there_is_num,bool& there_is_power,int& power,number& input_to_num )
{
    to_upper(input);
    if(input == "EXIT") 
    {
        end = 1;
        there_is_num = 1;
        there_is_power = 1; 
        std::cout << "Bye Bye\n";
    }
    else 
    {
        input_to_num = string_to_int(input);
        if(input_to_num.is_not_num == 1)
            std::cout << " input is not int number \n";
        else
        {
            power = input_to_num.num;
            there_is_power = 1;
        }
    }
}



