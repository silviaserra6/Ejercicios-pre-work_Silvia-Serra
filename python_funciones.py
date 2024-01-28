# 1. Ejercicio: Define una función que tome dos números y retorne su suma.
def suma (a, b):
  return (a + b)
resultado = suma (5, 6)
print (resultado)

# 2. Ejercicio: Define una función que tome un número y retorne su factorial.
def factorial (numero):
  if numero < 0:
    print ('No existe el factorial de un número negativo')
  elif numero == 0:
    return (1)
  else:
    fact = 1
    while numero > 1:
      fact *= numero
      numero -= 1
    return (fact)

numero = 3
print(factorial (numero))

# 3. Ejercicio: Define una función que tome un número y determine si es primo.
def primo (numero):
  for n in range (2, numero):
    if numero % n == 0:
      print ('No es primo', n, 'es divisor')
      return False
  print ('Es primo')
  return True

print (primo (4))

# 4. Ejercicio: Define una función que reciba una lista de números y retorne la suma de ellos.
def suma_lista (lista):
  suma = 0
  for numero in lista:
    suma += numero
  return suma

mi_lista = [1, 3, 5, 6, 10]
print (suma_lista (mi_lista))

# 5. Ejercicio: Define una función que reciba una cadena de texto y retorne la cadena en reversa.
def reversa (cadena):
  cadena_inversa = cadena[::-1]
  return (cadena_inversa)
print (reversa ('Hola'))