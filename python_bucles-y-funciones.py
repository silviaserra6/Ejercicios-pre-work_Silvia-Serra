# - Ejercicios nivel básico -
# 1.1 Crea una función para verificar si un número es par o impar y devuelva “El número es par” o “El número es impar” según corresponda.
def es_par (numero):
  return numero % 2 == 0
num = int(input("Ingresa un número: "))
if es_par(num):
  print("Es un número par.")
else:
  print("Es un número impar.")

def numero_par (numero):
  if numero % 2 == 0:
    print (f'El número {numero} es par')
  else:
    print (f'El número {numero} es impar')
numero_par 


# 1.2 Crea una función a la que pases un número como argumento, calcule el factorial de ese número y haga print del resultado.
def factorial (numero):
  resultado = 1
  for i in range (1, numero + 1):
    resultado *= i
    return (resultado)
num  = int (input('Ingresa un número: '))
print ('El factorial de', num, 'es:', factorial (num))

def el_factorial (numero):
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
print(el_factorial (3))


# 1.3 Crea una función a la que se le pase un número como argumento, calcule la cantidad de dígitos y haga print de “La cantidad de dígitos es:” y el resultado total de dígitos.
def contar_digitos(numero):
  return len(numero)
num = input("Ingresa un número: ")
print("La cantidad de dígitos es:", contar_digitos(num))

def contador_digitos (numero):
  return len(str(numero))
  print ('La cantidad de dígitos es:', contardor_digitos (numero))
print (contador_digitos (10))


# 1.4 Dada una lista de números, crea una función que devuelva el número máximo de la lista.
def encontrar_maximo(lista):
  maximo = lista[0] 
  for numero in lista: 
    if numero > maximo: 
      maximo = numero 
  return maximo 
numeros = [5, 12, 3, 8, 9] 
print("El número máximo es:", encontrar_maximo(numeros))

# 1.5 Crea una función que, dado un número, sume los dígitos de ese número y devuelva el resultado.
def sumar_digitos(numero):
  suma = 0 
  while numero > 0: 
    suma += numero % 10 
    numero //= 10
    return suma 
num = int(input("Ingresa un número: ")) 
print("La suma de los dígitos es:", sumar_digitos(num))