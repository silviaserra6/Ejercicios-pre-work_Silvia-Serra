# 1. Ejercicio: Dado un número, imprime si es positivo o negativo.
x = 10
if x >= 0:
  print ('x es positivo')
else:
  print ('x es negativo')

# 2. Ejercicio: Dado un número, imprime si es par o impar.
x = 7
if x % 2 == 0:
    print ('x es par')
else:
    print ('x is impar')

# 3. Ejercicio: Dado tres números, encuentra y muestra el mayor de ellos.
def maximo_lista (numeros):
    maximo = numeros [0]
    for numero in numeros:
      if numero > maximo:
          maximo = numero
    return maximo

mis_numeros = [5, 6, 3]
print (maximo_lista(mis_numeros))

numeros = [5, 6, 3]
maximo = numeros [0]
for numero in numeros:
  if numero > maximo:
      maximo = numero
print (maximo)