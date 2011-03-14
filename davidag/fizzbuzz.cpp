#include <iostream>
#include <sstream>

using namespace std;

int main()
{
    // Stage 1
    int i = 0;
    while (i++ < 100)
    {
        bool print_number = true;

        cout << i << " "; // Left column is just for reference.

        if (!(i % 3)) cout << "Fizz", print_number = false;
        if (!(i % 5)) cout << "Buzz", print_number = false;

        if (print_number) cout << i;

        cout << endl; 
    }

    // Stage 2
    i = 0;
    while (i++ < 100)
    {
        bool print_number = true;

        cout << i << " ";

        ostringstream oss;
        oss << i;
    
        if (!(i % 3) || oss.str().find("3") != string::npos)
            cout << "Fizz", print_number = false;
        
        if (!(i % 5) || oss.str().find("5") != string::npos)
            cout << "Buzz", print_number = false;
        
        if (print_number) cout << i;

        cout << endl;
    }
}
