# 1. Ejercicio: Imprime los números del 1 al 10 usando un bucle for .
numeros_1al10 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
for numero in numeros_1al10:
  print (numero)

# 2. Ejercicio: Imprime los números pares del 1 al 20 usando un bucle while .
numeros_1al20 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
for numero in numeros_1al20:
  if numero % 2 == 0:
    print (numero)

# 3. Ejercicio: Usa un bucle para calcular la suma de los números del 1 al 100.
suma = 0
for numero in range (100):
  suma += numero
print (suma)