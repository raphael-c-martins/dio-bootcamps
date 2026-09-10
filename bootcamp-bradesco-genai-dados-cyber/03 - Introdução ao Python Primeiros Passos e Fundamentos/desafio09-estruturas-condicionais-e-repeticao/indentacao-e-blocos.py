# Indentação é obrigatória no Python, diferente de outras linguagens que usam chaves {}
# e define blocos de código.

a = 1
b = 1

if a == b:
    print("Igual")

if a == b:    # indentação é obrigatória no Python, diferente de outras linguagens que usam chaves {}
    print("Igual")


def sacar(valor, saldo):
    if valor <= saldo:
        print("Saque realizado")
    else:
        print("Saldo insuficiente")
    return True

if (condicao1) and (condicao2):
    # instruções
    pass

