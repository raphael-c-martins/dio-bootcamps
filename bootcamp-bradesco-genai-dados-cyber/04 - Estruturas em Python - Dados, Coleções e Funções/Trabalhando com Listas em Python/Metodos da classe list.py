# -*- coding: utf-8 -*-

### [].append - Adição de elementos ao final da lista
lista_append = []
lista_append.append(1)
lista_append.append("Python")
lista_append.append([40, 30, 20])
print("append:", lista_append)  # [1, 'Python', [40, 30, 20]]

### [].clear - Limpeza de todos os elementos da lista
lista_clear = [1, "Python", [3, 4, 5]]
print("Antes do clear:", lista_clear)
lista_clear.clear()
print("Após o clear:", lista_clear)  # []

### [].copy - Criação de cópia rasa (shallow copy)
lista_copy = [1, "Python", [40, 30, 20]]
l2 = lista_copy.copy()
print("Original:", lista_copy)
print("IDs de memória:", id(l2), id(lista_copy))
l2[0] = 2
print("Cópia alterada (l2):", l2)
print("Original inalterada (lista_copy):", lista_copy)

### [].count - Contagem de ocorrências de um valor
cores_count = ["Vermelho", "Azul", "Verde", "Azul", "Amarelo", "Azul"]
print("Count Azul:", cores_count.count("Azul"))          # 3
print("Count Verde:", cores_count.count("Verde"))        # 1
print("Count Vermelho:", cores_count.count("Vermelho"))  # 1
print("Count Roxo:", cores_count.count("Roxo"))          # 0 (Não existe)

### [].extend - Extensão da lista com múltiplos elementos de um iterável
linguagens_extend = ["python", "java", "c"]
print("Antes do extend:", linguagens_extend)
linguagens_extend.extend(["javascript", "php"])
print("Após o extend:", linguagens_extend)

### [].index - Obtenção do índice da primeira ocorrência
linguagens_index = ["python", "java", "c", "java"]
print("Index java:", linguagens_index.index("java"))      # 1
print("Index python:", linguagens_index.index("python"))  # 0

### [].pop - Remoção e retorno de elemento (por padrão o último, ou pelo índice)
linguagens_pop = ["python", "java", "c", "csharp"]
print("pop():", linguagens_pop.pop())       # csharp (último elemento)
print("pop():", linguagens_pop.pop())       # c
print("pop():", linguagens_pop.pop())       # java
print("pop(0):", linguagens_pop.pop(0))     # python (primeiro elemento)
print("Lista após todos os pops:", linguagens_pop)

### [].remove - Remoção da primeira ocorrência do valor indicado
frutas_remove = ["laranja", "banana", "maçã", "manga", "uva", "abacaxi"]
frutas_remove.remove("banana")
print("Após remove('banana'):", frutas_remove)

### [].reverse - Inversão da ordem dos elementos in-place
linguagens_reverse = ["python", "java", "c"]
linguagens_reverse.reverse()
print("Após reverse():", linguagens_reverse)  # ['c', 'java', 'python']

### [].sort - Ordenação in-place da lista
linguagens_sort = ["python", "java", "c"]
linguagens_sort.sort()
print("sort() padrão (alfabético):", linguagens_sort)

linguagens_sort.sort(reverse=True)
print("sort(reverse=True):", linguagens_sort)

linguagens_sort.sort(key=lambda x: len(x))
print("sort(key=len):", linguagens_sort)

linguagens_sort.sort(key=lambda x: len(x), reverse=True)
print("sort(key=len, reverse=True):", linguagens_sort)

### len() - Função embutida para tamanho do iterável
linguagens_len = ["python", "java", "c"]
print("len():", len(linguagens_len))  # 3

### sorted() - Função embutida que retorna uma nova lista ordenada
print("sorted() padrão:", sorted(linguagens_len))
print("sorted(reverse=True):", sorted(linguagens_len, reverse=True))
print("sorted(key=len):", sorted(linguagens_len, key=lambda x: len(x)))
print("sorted(key=len, reverse=True):", sorted(linguagens_len, key=lambda x: len(x), reverse=True))
