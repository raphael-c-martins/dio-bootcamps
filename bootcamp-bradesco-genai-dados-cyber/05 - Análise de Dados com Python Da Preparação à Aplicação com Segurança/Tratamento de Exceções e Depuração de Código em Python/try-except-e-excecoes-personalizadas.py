# Try e Except - É uma forma de lidar com erros que ocorrem durante a execução do programa.
# O bloco Try é usado para testar um bloco de código para ver se ocorre um erro.
# O bloco Except é usado para tratar o erro.

# Exemplo 1: Lidar com divisão por zero
# O bloco Try é usado para testar um bloco de código para ver se ocorre um erro.
# O bloco Except é usado para tratar o erro.

try:
    numero = 10/0
    print(numero)
except ZeroDivisionError:
    print("Erro: Divisão por zero!")

# Bloco finally
# O bloco Finally é usado para tratar erros que ocorrem durante a execução do programa.
# O bloco Finally é usado para tratar erros que ocorrem durante a execução do programa.

try:
    numero = 10/0
    print(numero)
except ZeroDivisionError:
    print("Erro: Divisão por zero!")
finally:
    print("Bloco finally executado!")

# Exemplo 2: Lidar com valor inválido
# O bloco Try é usado para testar um bloco de código para ver se ocorre um erro.
# O bloco Except é usado para tratar o erro.

try:
    numero = int("abc")
    print(numero)
except ValueError:
    print("Erro: Valor inválido!")
