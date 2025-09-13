#pragma once 

#include <iostream>

struct number
{
    double num;
    bool is_not_num;
};


number string_to_number (std::string input)
{
    number answer;
    answer.num = 0;
    answer.is_not_num = 1;
    bool pos_sign = 1;
    int indx = 0;
    bool dot_inside = 0;
    int point_right_num_divider = 10;

    if(input[0] != '-' && !(input[0] >= '0' && input[0] <= '9') && input[0] != '.')
        return answer;
    else 
        answer.is_not_num = 0;

    if(input[0] == '-')
    {
        pos_sign = 0;
        indx = 1;
    }

    if(input[0] == '.')
    {
        indx = 1;
        dot_inside = 1;
    }
    
    if(!dot_inside)
        for(int i = indx;i < input.size(); i++)
        {
            if(input[i] == '0' && !dot_inside) 
                answer.num = answer.num * 10;
            else
            {
                if(!dot_inside)
                {
                    if(input[i] == '.')
                        dot_inside = 1;
                    else if (input[i] >= '0' && input[i] <= '9')
                        answer.num = answer.num * 10 + (input[i] - '0'); 
                    else
                    {
                        answer.is_not_num = 1;
                        break;
                    }
                }
                else 
                {
                    if (input[i] == '0')
                        point_right_num_divider *= 10;
                    else if (input[i] >= '1' && input[i] <= '9')
                    {
                        answer.num = answer.num + double(input[i] - '0')/point_right_num_divider; 
                        point_right_num_divider *= 10;
                    }
                    else
                    {
                        answer.is_not_num = 1;
                        break;
                    }
                }
            }
        }
    else 
        for(int i = indx;i < input.size(); i++)
        {
            if (input[i] == '0')
                point_right_num_divider *= 10;
            else if (input[i] >= '1' && input[i] <= '9')
            {
                answer.num = answer.num + double(input[i] - '0')/point_right_num_divider; 
                point_right_num_divider *= 10;
            }
            else
            {
                answer.is_not_num = 1;
                break;
            }
        }

    if(!pos_sign)
        answer.num *= (-1);
    
    return answer;

}

number string_to_int (std::string input)
{
    number answer;
    answer.is_not_num = 1;
    answer.num = 0;
    bool pos_sign = 1;
    int indx = 0;

    if(input[0] != '-' && !(input[0] >= '0' && input[0] <= '9'))
        return answer;
    else 
        answer.is_not_num = 0;

    if(input[0] == '-')
    {
        pos_sign = 0;
        indx = 1;
    }

    for(int i = indx;i < input.size(); i++)
    {
        if (input[i] >= '0' && input[i] <= '9')
            answer.num = answer.num * 10 + (input[i] - '0'); 
        else 
        {
            answer.is_not_num = 1;
            break;
        }
    }

    if(!pos_sign)
        answer.num *= (-1);
    
    return answer;
}