nome = input("Digite seu nome: ")
prompt = f"Obrigado por informar seu nome: {nome}"
print(prompt)
idade = input("Digite sua idade: ")
print(f"Você tem {idade} anos.")

print(nome, idade)
print(nome, end="...\n")
print(nome, sep="#")
print(nome, sep="#", end="...\n")

#===========================
# Exemplo de uso com variáveis
#===========================

#### nome = "Raphael"
#### sobrenome = "Chernicharo Martins"

#### print(nome, sobrenome)
#### print(nome, sobrenome, end="...\n")
#### print(nome, sobrenome, sep="#")
