# Conjuntos em Python: conjuntos são estruturas de dados muito parecidas com listas, mas com algumas diferenças importantes. A principal diferença é que os conjuntos não admitem elementos duplicados.

frutas = {"amora", "melancia", "abacaxi", "manga"}

letras = set("python")

numeros = set([1, 2, 3, 4, 5])

print(frutas)
print(letras)
print(numeros)

### Métodos da classe set

set([1, 2, 3, 1, 3, 4]) # {1, 2, 3, 4}
set("abacaxi") # {'a', 'b', 'c', 'x', 'i'}
set(("palio", "gol", "celta", "gol")) # { 'palio', 'gol', 'celta' }

# ====={.union}=====

conjunto_a = {1, 2}
conjunto_b = {3, 4}

conjunto_a.union(conjunto_b) # {1, 2, 3, 4}

# ====={.intersection}=====

conjunto_c = {1, 2, 3}
conjunto_d = {2, 3, 4}

conjunto_c.intersection(conjunto_d) # {2, 3}

# ====={.difference}=====

conjunto_e = {1, 2, 3}
conjunto_f = {2, 3, 4}

conjunto_e.difference(conjunto_f) # {1}
conjunto_f.difference(conjunto_e) # {4}

# ====={.symmetric_difference}=====

conjunto_g = {1, 2}
conjunto_h = {2, 3}

conjunto_g.symmetric_difference(conjunto_h) # {1, 3}

# ====={.issubset}=====

conjunto_k = {1, 2, 3}
conjunto_l = {1, 2, 3, 4, 5, 6, 3, 1}

conjunto_k.issubset(conjunto_l) # True
conjunto_l.issubset(conjunto_k) # False

# ====={.issuperset}=====

conjunto_m = {1, 2, 3, 4, 5, 6, 3 , 1}
conjunto_n = {1, 2, 3}

conjunto_m.issuperset(conjunto_n) # True
conjunto_n.issuperset(conjunto_m) # False

# ====={.isdisjoint}=====

conjunto_o = {2, 3, 4}
conjunto_p = {4, 5, 6}
conjunto_q = {1, 0}

conjunto_o.isdisjoint(conjunto_p) # False
conjunto_o.isdisjoint(conjunto_q) # True

# ====={.add}=====

sorteio = {1, 23}

sorteio.add(2)
sorteio.add(45)

print(sorteio) # {1, 2, 45, 23}

# ====={.clear}=====

sorteio.clear()

print(sorteio) # { }

# ====={.copy}=====

sorteio_2 = sorteio.copy()

print(sorteio_2) # { }

# ====={.discard}=====

numeros = {1, 2, 3 , 1, 2, 5, 5, 7, 6, 3, 4, 1, 8}

numeros.discard(3)

print(numeros) # {1, 2, 4, 5, 6, 7, 8}

# ===== {.pop}=====

numero_removido = numeros.pop()

print(numero_removido) # 1
print(numeros) # {2, 4, 5, 6, 7, 8}

# ====={.remove}=====

numeros.remove(5)

print(numeros) #{2, 4, 6, 7, 8}

# ====={len}=====

numeros_len = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}

print(len(numeros_len)) # 10

# ====={in}=====

numeros_in = {1, 2, 3, 4, 5}

1 in numeros_in # True
10 in numeros_in # False




