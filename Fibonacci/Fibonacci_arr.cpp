#include "Fibonacci.h"
#include "parser.h"

void to_upper (std::string& input)
{
    for(int i=0;i<input.size();i++)
        input[i] = std::toupper(input[i]);
} 

int main ()
{

    std::cout  << "\n\n ARRAY  \n\n\n" ;

    std::vector<unsigned int>  fibbonaci_arr;

    bool exit = 0;
    number input;
    std::string temp_input;

    std::cout << "\n\n\t\t\tHello User !\n\n";
    std::cout << "\t\t the program accepts unsigned integer numbers from 1:  \n";
    std::cout << "\t\t if you want to print the array write \"PRINT\" \n\n";
    std::cout << "\t\t if you want to exit write \"EXIT\" \n\n";

    while(!exit)
    {
        input.is_not_num = 1;

        while (input.is_not_num == 1)
        {
            std::cout << " \ninput :: -> ";
            std::cin >> temp_input;
            to_upper(temp_input);
            if(temp_input == "EXIT")
            {
                exit = 1;
                std::cout << "Bye Bye\n";
                break;
            }
            if(temp_input == "PRINT")
            print_fibbonaci_arr(fibbonaci_arr);
            input = string_to_int(temp_input);
            if(input.num <= 0 && input.is_not_num == 0) 
                input.is_not_num = 1;
        }

        if(!exit)
            std::cout  << "  " << input.num << "  index is : " << Fibonacci_num_arr(fibbonaci_arr,input.num-1) << "\n";
       
    }

    return 0;
}