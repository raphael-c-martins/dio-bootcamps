### 'Old Style' % ###

# %s -> String
# %d -> Inteiro
# %f -> Float

nome = "Raphael"
idade = 23
profissao = "DevOps"
linguagens = "Python, HTML, CSS e JavaScript"

print("Olá, meu nome é %s, eu tenho %d anos e trabalho como %s." % (nome, idade, profissao))
print("Eu conheço as seguintes linguagens de programação: %s" % (linguagens))

# É importante que se mantenha a ordem das variáveis, caso contrário, a saída pode ficar incorreta

# Exemplo 1: print("Olá, meu nome é %d, eu tenho %s anos e trabalho como %s." % (nome, idade, profissao)) 
## Incorreto

# Exemplo 2: print("Olá, meu nome é %s, eu tenho %d anos e trabalho como %s." % (idade, nome, profissao)) 
## Incorreto

# Exemplo 3: print("Olá, meu nome é %s, eu tenho %d anos e trabalho como %s." % (profissao, nome, idade)) 
## Incorreto    

### Metódo format ###

nome = "Raphael"
idade = 23
profissao = "DevOps"
linguagens = "Python, HTML, CSS e JavaScript"

print("Olá, meu nome é {}, eu tenho {} anos e trabalho como {}." .format(nome, idade, profissao))
print("Eu conheço as seguintes linguagens de programação: {}" .format(linguagens))

# Não precisa manter a ordem das variáveis

print("Olá, meu nome é {}, eu tenho {} anos e trabalho como {}." .format(idade, nome, profissao))
print("Eu conheço as seguintes linguagens de programação: {}" .format(linguagens))

# Pode-se usar números para referenciar as variáveis

print("Olá, meu nome é {1}, eu tenho {2} anos e trabalho como {0}." .format(profissao, nome, idade))
print("Eu conheço as seguintes linguagens de programação: {0}" .format(linguagens))

### Método de interpolação de strings com variáveis declaradas ###

nome = "Raphael"
idade = 23
profissao = "DevOps"
linguagens = "Python, HTML, CSS e JavaScript"

print("Olá, meu nome é {nome}, eu tenho {idade} anos e trabalho como {profissao}.".format(nome=nome, idade=idade, profissao=profissao))

### Outro exemplo com dicionário

pessoa = {"nome": "Raphael", "idade": 23, "profissao": "DevOps", "linguagens": "Python, HTML, CSS e JavaScript"}

print("Olá, meu nome é {nome}, eu tenho {idade} anos e trabalho como {profissao}.".format(**pessoa))

# Pode-se usar em conjunto com operadores matemáticos

print("Daqui a 5 anos, terei {idade + 5} anos.".format(idade=idade))
print("Eu conheço as seguintes linguagens de programação: {linguagens}.".format(linguagens=linguagens))

### Método f-string ###

nome = "Raphael"
idade = 23
profissao = "DevOps"
linguagens = "Python, HTML, CSS e JavaScript"

print(f"Olá, meu nome é {nome}, eu tenho {idade} anos e trabalho como {profissao}.")
print(f"Eu conheço as seguintes linguagens de programação: {linguagens}")

# Pode-se usar f-string em conjunto com operadores matemáticos

print(f"Daqui a 5 anos, terei {idade + 5} anos.")

### Formatar string com f-string ###

PI = 3.1415926535

print(f"O valor de PI é aproximadamente {PI:.3f}.")
## 3.142

print(f"O valor de PI é aproximadamente {PI:.2f}.")
## 3.14

print(f"O valor de PI é aproximadamente {PI:10.4f}.")
## "O valor de PI é aproximadamente       3.1416."