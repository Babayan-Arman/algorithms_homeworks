#include "power.h"

int main() 
{

    std::cout << "number = 10, power = 10 -> " << pow(10,10) << "\n";
    
    std::cout << "number = 2, power = 10 -> " << pow(2,10) << "\n";
    std::cout << "number = 10000, power = 0 -> " << pow(10000,0) << "\n";
    std::cout << "number = 5, power = -2 -> " << pow(5,-2) << "\n";
    std::cout << "number = 2, power = -7 -> " << pow(2,-7) << "\n";
    std::cout << "number = 3, power = 5 -> " << pow(3,5) << "\n";


    std::cout << "number = 2.5, power = 4 -> " << pow(2.5,4) << "\n";
    std::cout << "number = 2.5, power = -4 -> " << pow(2.5,-4) << "\n";

    std::cout << "number = 3.14, power = -7 -> " << pow(3.14,-7) << "\n";
    std::cout << "number = 3.14, power = 6 -> " << pow(3.14,6) << "\n";

    std::cout << "number = 1, power = 100000 -> " << pow(1,100000) << "\n";
    std::cout << "number = 0, power = 100000 -> " << pow(0,100000) << "\n";


    std::cout << "number = 0, power = 0 -> " << pow(0,0) << "\n";

    std::cout << "number = 1.7, power = 1337 -> " << pow(1.7,1337) << "\n";

    return 0;
}