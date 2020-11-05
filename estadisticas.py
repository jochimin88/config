from math import sqrt
""" Calculo del Rango, Varianza, Desviacion Tipica o Estandar, Coeficiente de Variacion"""

numbers = input("Inserte la serie de numeros")
numeros = numbers.split()

print("rango ")

number_list= [int(i) for i in numeros]

minimo = min(number_list)
maximo = max(number_list)

rango = maximo-minimo

print("maximo " + str(maximo))
print("minimo " + str(minimo))
print("El Rango es " + str(rango))

# Varianza

print("Varianza: \n")

elements_number_list = len(number_list)
media_aritmetica = sum(number_list)/elements_number_list

print("La media aritmetica es: " + str(media_aritmetica))

print("Resultado del numeros de elementos menos la media aritmetica: ")
results_rest = []
for k in range(len(number_list)):
    results_rest.append(round(number_list[k] - media_aritmetica, 2))

print(results_rest)

print("Elevado al cuadrado: \n")
results_square = [h ** 2 for h in results_rest]

for result in range(len(results_square)):
    print(round(results_square[result],2))

print("Suma del resultado de elevado al cuadrado: ")

suma = sum(results_square)
print(suma)

varianza = suma/(elements_number_list-1)

print("varianza: " + str(varianza))

print("Desviacion Tipica: " + str(sqrt(varianza)))

print("Coeficiente de Variacion: " + str(varianza/media_aritmetica))
