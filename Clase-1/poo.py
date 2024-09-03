class CuentaBancaria:
    """Representa una cuenta bancaria."""

    def __init__(self, nombre, saldo):
        """Inicializa la cuenta bancaria."""
        self.nombre = nombre
        self.saldo = saldo

    def depositar(self, cantidad):
        """Deposita una cantidad en la cuenta."""
        self.saldo += cantidad

    def retirar(self, cantidad):
        """Retira una cantidad de la cuenta."""
        if cantidad > self.saldo:
            raise ValueError("Saldo insuficiente")
        self.saldo -= cantidad

    def __str__(self):
        """Devuelve una cadena con la información de la cuenta."""
        return f"Cuenta bancaria de {self.nombre} con saldo de {self.saldo}"

cuenta1 = CuentaBancaria("Juan", 1000)
cuenta2 = CuentaBancaria("Jesus", 9500)
cuenta3 = CuentaBancaria("Jose", 15000)

# Realizamos operaciones en las cuentas existetes
cuenta1.depositar(500)
cuenta2.retirar(3455)
cuenta3.depositar(850)

# Imprimimos la información de la cuenta
print(cuenta1)
print(cuenta2)
print(cuenta3)