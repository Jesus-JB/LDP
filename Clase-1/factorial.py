#Ejemplo de paradigma imperativo

def factorial(n):
    if n ==0:
        return 1
    else:
        return n*factorial(n-1)
    
'''
opcion = 1
while(opcion !=0):
    n=int(input("Ingrese un numero para calcular el factorial: "))
    print(factorial(n))
    opcion=int(input("Pulse 0 para salir [Cualquier numero para continuar]: "))
'''

#Ejemplo paradigma funcional

reduce = lambda x:1 if x==0 else x*reduce(x-1)
print(reduce(5))