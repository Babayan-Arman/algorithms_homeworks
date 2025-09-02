#include "power.h"

int main() 
{

    std::cout << "number = 10, power = 10 -> " << pow_simple(10,10) << "\n";
    
    std::cout << "number = 2, power = 10 -> " << pow_simple(2,10) << "\n";
    std::cout << "number = 10000, power = 0 -> " << pow_simple(10000,0) << "\n";
    std::cout << "number = 5, power = -2 -> " << pow_simple(5,-2) << "\n";
    std::cout << "number = 2, power = -7 -> " << pow_simple(2,-7) << "\n";
    std::cout << "number = 3, power = 5 -> " << pow_simple(3,5) << "\n";


    std::cout << "number = 2.5, power = 4 -> " << pow_simple(2.5,4) << "\n";
    std::cout << "number = 2.5, power = -4 -> " << pow_simple(2.5,-4) << "\n";

    std::cout << "number = 3.14, power = -7 -> " << pow_simple(3.14,-7) << "\n";
    std::cout << "number = 3.14, power = 6 -> " << pow_simple(3.14,6) << "\n";

    std::cout << "number = 1, power = 100000 -> " << pow_simple(1,100000) << "\n";
    std::cout << "number = 0, power = 100000 -> " << pow_simple(0,100000) << "\n";


    std::cout << "number = 0, power = 0 -> " << pow_simple(0,0) << "\n";

    std::cout << "number = 1.7, power = 1337 -> " << pow_simple(1.7,1337) << "\n";

    return 0;
}