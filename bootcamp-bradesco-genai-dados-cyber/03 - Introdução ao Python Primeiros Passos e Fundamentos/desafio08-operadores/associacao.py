curso = "Curso de Python"
frutas = ["Laranja", "Limão", "Uva"]
saques = [1500, 100]

"Python" in curso
# True

"Maçã" not in frutas
# True

200 in saques
# False

#=========================== 
## Operadores de Associação são case-sensitive
#===========================

frutas = ["Abacate", "Manga"]

print('laranja' in frutas)
# False

print('abacate' not in frutas)
# True

print('Manga' in frutas)
# True