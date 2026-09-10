# ============= Parâmetros especiais ============= #

### Positional only ###

# Parâmetros antes da barra (/) são estritamente posicionais (não podem ser passados como chave=valor)  
def criar_carro(modelo, ano, placa, /, marca, motor, combustivel):
    print(modelo, ano, placa, marca, motor, combustivel)


# Válido: os 3 primeiros parâmetros foram passados apenas por posição
criar_carro("Palio", 1999, "ABC-1234", marca="Fiat", motor="1.0", combustivel="Gasolina")

# Inválido: modelo, ano e placa estão antes da barra (/), portanto não aceitam ser nomeados (gera TypeError)
# criar_carro(modelo="Palio", ano=1999, placa="ABC-1234", marca="Fiat", motor="1.0", combustivel="Gasolina")


### Keyword only ###

# Parâmetros após o asterisco (*) são estritamente nomeados (obrigatoriamente passados como chave=valor)
def criar_carro(*, modelo, ano, placa, marca, motor, combustivel):
    print(modelo, ano, placa, marca, motor, combustivel)


# Válido: todos os argumentos foram passados de forma nomeada (chave=valor)
criar_carro(modelo="Palio", ano=1999, placa="ABC-1234", marca="Fiat", motor="1.0", combustivel="Gasolina")

# Inválido: tentar passar argumentos por posição quando a função exige keyword-only gera TypeError
# criar_carro("Palio", 1999, "ABC-1234", marca="Fiat", motor="1.0", combustivel="Gasolina")


### Keyword and positional only ###

# Parâmetros antes da barra (/) são estritamente posicionais, e após o asterisco (*) são estritamente nomeados
def criar_carro(modelo, ano, placa, /, *, marca, motor, combustivel):
    print(modelo, ano, placa, marca, motor, combustivel)


# Válido: os 3 primeiros passados por posição e os 3 últimos de forma nomeada
criar_carro("Palio", 1999, "ABC-1234", marca="Fiat", motor="1.0", combustivel="Gasolina")

# Inválido: tentar nomear os parâmetros antes da barra (/) gera TypeError
# criar_carro(modelo="Palio", ano=1999, placa="ABC-1234", marca="Fiat", motor="1.0", combustivel="Gasolina")

print("=============================================")
# ============= Objetos de primeira classe ============= #


def somar(a, b):
    return a + b

def subtrair(a, b):
    return a - b

def exibir_resultado(a, b, funcao):
    resultado = funcao(a, b)
    print(f"O resultado da soma de {a} e {b} é {resultado}")

exibir_resultado(10, 10, somar) # O resultado da soma de 10 + 10 é 20
exibir_resultado(10, 2, subtrair) # O resultado da subtração de 10 - 2 é 8

print("=============================================")
# ============= Escopo local e escopo global ============= #

variavel_global = "Escopo global"

def funcao():
    variavel_local = "Escopo local"
    print(variavel_global)
    print(variavel_local)

funcao() 

print("===============================================")

salario = 2000

def salario_bonus(bonus):
    global salario # se não tiver o 'global' na frente, ele não iria encontar que o salario = 2000, pois estaria criando uma variavel local com o mesmo nome
    salario += bonus
    return salario

salario_bonus(1500) # 3500
print(f"O salario com bônus é de: R${salario}")


