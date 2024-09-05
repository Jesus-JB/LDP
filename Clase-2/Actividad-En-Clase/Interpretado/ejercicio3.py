import random

def ejercicio3():
    sucursales = ["Sucursal A", "Sucursal B", "Sucursal C", "Sucursal D", "Sucursal E"]
    ventas = [random.randint(1000, 5000) for _ in range(len(sucursales))]
    
    promedio_ventas = sum(ventas) / len(ventas)
    
    print(f"Promedio de ventas: {promedio_ventas:.2f}")
    print("Sucursales con ventas mayores al promedio:")
    for sucursal, venta in zip(sucursales, ventas):
        if venta > promedio_ventas:
            print(f"{sucursal}: {venta}")

ejercicio3()