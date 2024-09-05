import random

def ejercicio2():
    # Generar 500 valores aleatorios entre 50 y 100
    # Presente cuantos valores pares y cuantos impares fueron generados
    valores = [random.randint(50, 100) for _ in range(500)]
    
    pares = sum(1 for v in valores if v % 2 == 0)
    impares = len(valores) - pares
    
    print(f"Valores pares: {pares}")
    print(f"Valores impares: {impares}")

ejercicio2()