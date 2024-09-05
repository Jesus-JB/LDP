#include <iostream>
#include <vector>
#include <random>
#include <chrono>
#include <iomanip>

void ejercicio1() {
    std::vector<double> valores(10);
    double suma = 0;

    for (int i = 0; i < 10; ++i) {
        std::cout << "Ingrese el valor " << i + 1 << ": ";
        std::cin >> valores[i];
        suma += valores[i];
    }

    double promedio = suma / valores.size();

    std::cout << "Suma: " << suma << std::endl;
    std::cout << "Promedio: " << promedio << std::endl;
}


int main() {
    ejercicio1();

    return 0;
}