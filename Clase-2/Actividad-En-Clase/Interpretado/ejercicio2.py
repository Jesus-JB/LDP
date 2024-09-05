import random

def ejercicio2():
    valores = [random.randint(50, 100) for _ in range(500)]
    
    pares = sum(1 for v in valores if v % 2 == 0)
    impares = len(valores) - pares
    
    print(f"Valores pares: {pares}")
    print(f"Valores impares: {impares}")

ejercicio2()