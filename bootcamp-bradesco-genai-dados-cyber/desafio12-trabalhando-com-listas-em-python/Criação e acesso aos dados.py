# -*- coding: utf-8 -*-

# Criação e inicialização de listas
frutas = ["laranja", "banana", "maçã", "manga", "uva", "abacaxi"]
frutas2 = []
letras = list("python")
numeros = list(range(10))
carro = ["Ferrari", "F40", "400.000", "Azul", "1996", True]

# Formatação e acesso posicional
print("Veiculo da marca {0}, modelo {1} que está a venda por ${2} na cor {3} e ano {4}".format(carro[0], carro[1], carro[2], carro[3], carro[4]))
print("A primeira fruta da minha lista é: {0}".format(frutas[0]))

### Matriz (Listas Aninhadas)
matriz = [
    [1, "a", 2],
    ["b", 2, 4],
    [3, "c", 6]
]

print("Linha 0:", matriz[0])         # [1, "a", 2]
print("Elemento [0][0]:", matriz[0][0])   # 1
print("Elemento [0][-1]:", matriz[0][-1])  # 2
print("Elemento [-1][-1]:", matriz[-1][-1]) # 6

### Filtro de pares v1 (Estrutura for clássica)
numeros_amostra = [1, 30, 21, 2, 9]
lista_pares = []

for numero in numeros_amostra:
    if numero % 2 == 0:
        lista_pares.append(numero)

print("Pares (v1 - for loop):", lista_pares)

### Filtro de pares v2 (List Comprehension)
pares = [numero for numero in numeros_amostra if numero % 2 == 0]
print("Pares (v2 - list comprehension):", pares)

### Modificando valores v1 (Elevando ao quadrado com for)
quadrado = []
for numero in numeros_amostra:
    quadrado.append(numero ** 2)

print("Quadrados (v1 - for loop):", quadrado)

### Modificando valores v2 (List Comprehension elevando ao quadrado)
quadrado_v2 = [numero ** 2 for numero in numeros_amostra]
print("Quadrados (v2 - list comprehension):", quadrado_v2)
