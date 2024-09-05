import random

def ejercicio1():
    valores = []
    for i in range(10):
        valor = float(input(f"Ingrese el valor {i+1}: "))
        valores.append(valor)
    
    suma = sum(valores)
    promedio = suma / len(valores)
    
    print(f"Suma: {suma}")
    print(f"Promedio: {promedio}")

ejercicio1()