#include <iostream>
#include <vector>
#include <random>
#include <chrono>
#include <iomanip>

void ejercicio2() {
    // Generar 500 valores aleatorios entre 50 y 100
    // Presente cuantos valores pares y cuantos impares fueron generados
    std::random_device rd;
    std::mt19937 gen(rd());
    std::uniform_int_distribution<> dis(50, 100);

    int pares = 0, impares = 0;

    for (int i = 0; i < 500; ++i) {
        int valor = dis(gen);
        if (valor % 2 == 0) ++pares;
        else ++impares;
    }

    std::cout << "Valores pares: " << pares << std::endl;
    std::cout << "Valores impares: " << impares << std::endl;
}

int main() {
    ejercicio2();

    return 0;
}