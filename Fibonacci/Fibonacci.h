#pragma once
#include <iostream>
#include <math.h>
#include <vector>
#include "power.h"


unsigned int Fibonacci_num_simple (unsigned int index, size_t zero_indx = 1, size_t first_indx = 1)
{
    unsigned int answer;
    unsigned int zero_component  = 1;
    unsigned int first_component = 3;

    unsigned int temp_first_component;
    if( index > 3 )
    {
        for (int i = 0; i < index/2 - 2 ; i++) 
        {   
            temp_first_component = first_component;
            first_component = first_component*3 - zero_component;
            zero_component = temp_first_component;
        }        
    }
    answer = index <= 3 ? (index == 0 ? zero_indx : 
                                       (index == 1 ? first_indx : 
                                                     (index == 2 ? first_indx + zero_indx :
                                                                   2*first_indx + zero_indx ))) :
                          ((index%2 == 1 ? 2*first_indx + zero_indx : first_indx + zero_indx)*first_component - (index%2 == 1 ? first_indx : zero_indx)*zero_component);
    return answer;
}



unsigned int Fibonacci_num_rs (unsigned int index, size_t zero_indx = 1, size_t first_indx = 1)
{
    unsigned int answer;
    
    if(index <= 3)
        answer =  index == 0 ?  zero_indx  : 
                                (index == 1 ? first_indx :  
                                (index == 2 ? first_indx + zero_indx : 2*first_indx + zero_indx ));
    else
        answer = 3*Fibonacci_num_rs((index - 2),zero_indx,first_indx) - Fibonacci_num_rs((index - 4),zero_indx,first_indx);
    
    return answer;
}



unsigned int Fibonacci_num_arr (std::vector<unsigned int>& fibbonaci_arr ,unsigned int index, size_t first_indx = 1, size_t zero_indx = 1 )
{
    if(fibbonaci_arr.size() == 0) 
    {
        fibbonaci_arr.push_back(zero_indx);
        fibbonaci_arr.push_back(first_indx);
    }
    else if (fibbonaci_arr.size() == 1)
        fibbonaci_arr.push_back(first_indx);

    if(fibbonaci_arr.size() < index + 1) 
        for(int i = fibbonaci_arr.size() ; i <= index; i++)
            fibbonaci_arr.push_back(fibbonaci_arr[fibbonaci_arr.size() - 1] + fibbonaci_arr[fibbonaci_arr.size() - 2]);

    return fibbonaci_arr[index];
}

void print_fibbonaci_arr (std::vector<unsigned int>& fibbonaci_arr) 
{
    if(fibbonaci_arr.empty()) std::cout << "\n\t Array is empty!!\n\n";
    else
    {
        int i = 1;
        for (unsigned int temp : fibbonaci_arr )
            std::cout << " " << i++ << "::-> " << temp << " \n";
    }
   
}



void product_mx (unsigned int* matrix1,unsigned int* matrix2, unsigned int* result_matrix)
{
    unsigned int product [4];
    product[0] = matrix1[0] * matrix2[0] + matrix1[1] * matrix2[2];
    product[1] = matrix1[0] * matrix2[1] + matrix1[1] * matrix2[3]; 
    product[2] = matrix1[2] * matrix2[0] + matrix1[3] * matrix2[2]; 
    product[3] = matrix1[2] * matrix2[1] + matrix1[3] * matrix2[3]; 
    for(int i= 0; i < 4 ; i++)
        result_matrix[i] = product[i];
}

unsigned int Fibonacci_matrix (unsigned int index, size_t zero_indx = 1, size_t first_indx = 1)
{
    unsigned int answer;
    unsigned int answer_matrix [4] = {1,0,0,1};
    
    unsigned int component_matrix [4] = {1,1,1,0};

    unsigned int iterations = log2(index) + 1;
    unsigned int temp_index = index;

    for(int i = 0;i < iterations ; i++)
    {
        if(temp_index % 2 == 1) 
            product_mx (answer_matrix,component_matrix,answer_matrix); 
        temp_index = temp_index >> 1;
        product_mx (component_matrix,component_matrix,component_matrix);
    }
    answer = answer_matrix[2] * first_indx + answer_matrix[3] * zero_indx;
    return answer;
}



       
double Fibonacci_golden_ratio (unsigned int index, size_t zero_indx = 1, size_t first_indx = 1)
{
    double answer;
   
    const double FI = (1+sqrt(5))/2; 
    
    /////////////////////////////////////////////////////////////////////////////////////////
    // Tolerance -> 0.81%
    /////////////////////////////////////////////////////////////////////////////////////////

    // if(index <5) 
    // {
    //     switch(index)
    //     {
    //         case 0: answer = zero_indx;
    //                 break;
    //         case 1: answer = first_indx;
    //                 break;
    //         case 2: answer = zero_indx + first_indx;
    //                 break;
    //         case 3: answer = zero_indx + 2*first_indx;
    //                 break;
    //         case 4: answer = 2*zero_indx + 3*first_indx;
    //                 break;
    //     }
    // }
    // else
    // {
    //     answer =  pow(FI, index - 4 );
    //     if( answer - int(answer) < 0.5) 
    //         answer = int(answer);
    //     else
    //         answer = int(answer) + 1;
    //     answer = (2*zero_indx + 3*first_indx) *  pow(FI, index - 4 ) ;

       
    // }


    
    /////////////////////////////////////////////////////////////////////////////////////////
    // Tolerance -> 0.045%
    /////////////////////////////////////////////////////////////////////////////////////////

    if(index <8) 
    {
        switch(index)
        {
            case 0: answer = zero_indx;
                    break;
            case 1: answer = first_indx;
                    break;
            case 2: answer = zero_indx + first_indx;
                    break;
            case 3: answer = zero_indx + 2*first_indx;
                    break;
            case 4: answer = 2*zero_indx + 3*first_indx;
                    break;
            case 5: answer = 3*zero_indx + 5*first_indx;
                    break;
            case 6: answer = 5*zero_indx + 8*first_indx;
                    break;
            case 7: answer = 8*zero_indx + 13*first_indx;
                    break;
        }
    }
    else
    {
        answer =  pow(FI, index - 7 );
        if( answer - int(answer) < 0.5) 
            answer = int(answer);
        else
            answer = int(answer) + 1;
        answer = (8*zero_indx + 13*first_indx) *  pow(FI, index - 7 ) ;

    }

    return (answer);
}

