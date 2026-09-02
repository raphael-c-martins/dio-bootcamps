### Tuplas: tuplas são estruturas de dados muito parecidas com listas, mas com algumas diferenças importantes. A principal diferença é que as tuplas são imutáveis, ou seja, não podem ser modificadas após a sua criação.

frutas = ("banana", "maçã", "uva", "laranja",)

letras = tuple("python")

numeros = tuple([1, 2, 3, 4, 5])

pais = ("Brasil",)

# ===========================

frutas = ("banana", "maçã", "uva", "laranja",)

print(frutas[0]) # banana
print(frutas[1]) # maçã

print(frutas[-1]) #laranja
print(frutas[-2]) #uva

# ===========================

tupla = ("P", "y", "t", "h", "o", "n",)

tupla[2:] # ('t', 'h', 'o', 'n')
tupla[-1] # 'n'
tupla[1:3] # ('y', 't')
tupla[:-2] # ('P', 'y', 't', 'h')

### Métodos da classe tuple

## ==== .count() | .index() | .len() ====

# .count = Mostra a quantidade de vezes que um item aparece na tupla.
# .index = Mostra a primeira posição em que um item aparece na tupla.
# .len = Mostra a quantidade de itens na tupla.

cores = ("vermelho", "azul", "verde", "azul", "amarelo", "azul", "rosa")

print(cores.count("azul")) # 3
print(cores.index("azul")) # 1
print(len(cores)) # 7
