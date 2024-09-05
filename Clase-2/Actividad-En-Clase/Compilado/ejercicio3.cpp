#include <iostream>
#include <vector>
#include <random>
#include <chrono>
#include <iomanip>

void ejercicio3() {
    // Genere 2 arreglos paralelos que representan las sucursales de una empresa
    // Presente el promedio de ventas, asi como las sucursales con ventas mayores al promedio
    std::vector<std::string> sucursales = {"Sucursal A", "Sucursal B", "Sucursal C", "Sucursal D", "Sucursal E"};
    std::vector<int> ventas(sucursales.size());

    std::random_device rd;
    std::mt19937 gen(rd());
    std::uniform_int_distribution<> dis(1000, 5000);

    double suma_ventas = 0;
    for (size_t i = 0; i < ventas.size(); ++i) {
        ventas[i] = dis(gen);
        suma_ventas += ventas[i];
    }

    double promedio_ventas = suma_ventas / ventas.size();

    std::cout << "Promedio de ventas: " << std::fixed << std::setprecision(2) << promedio_ventas << std::endl;
    std::cout << "Sucursales con ventas mayores al promedio:" << std::endl;
    for (size_t i = 0; i < sucursales.size(); ++i) {
        if (ventas[i] > promedio_ventas) {
            std::cout << sucursales[i] << ": " << ventas[i] << std::endl;
        }
    }
}

int main() {
    ejercicio3();

    return 0;
}