#include <iostream>
using namespace std;

int main() {

    int suma = 0;

    for(int i = 1; i <= 5; i++){
        suma = suma + i;
    }

    cout << "La suma del 1 al 5 es: " << suma << endl;

    return 0;
}