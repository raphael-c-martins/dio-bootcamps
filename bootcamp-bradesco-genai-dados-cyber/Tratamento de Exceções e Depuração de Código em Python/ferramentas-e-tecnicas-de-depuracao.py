# Usando Raise - É uma forma de lançar uma exceção. 
# O bloco Raise é usado para lançar uma exceção.

try:
    numero = int("abc")
    print(numero)
except ValueError:
    print("Erro: Valor inválido!")
    raise ValueError("RAISE: Tentativa de conversão de tipo inválida!")

# Depuração - O depurador do Python é uma ferramenta que permite inspecionar o código passo a passo.
# O depurador do Python é uma ferramenta que permite inspecionar o código passo a passo.

def verificar_idade(idade):
    """Verifica se a idade é válida."""
    if idade < 0:
        raise ValueError("Idade inválida!")
    return idade

print(verificar_idade(20))

# Stack Trace - É uma lista de funções que foram chamadas até que uma exceção fosse lançada.
# O Stack Trace é uma lista de funções que foram chamadas até que uma exceção fosse lançada.

def funcao_a():
    funcao_b()

def funcao_b():
    funcao_c()

def funcao_c():
    raise ValueError("Erro na funcao_c!")

funcao_a()

# Print do Stack Trace:
# Traceback (most recent call last):
#   File "D:\...\ferramentas-e-tecnicas-de-depuracao.py", line 38, in <module>
#     funcao_a()
#   File "D:\...\ferramentas-e-tecnicas-de-depuracao.py", line 35, in funcao_a
#     funcao_b()
#   File "D:\...\ferramentas-e-tecnicas-de-depuracao.py", line 32, in funcao_b
#     funcao_c()
#   File "D:\...\ferramentas-e-tecnicas-de-depuracao.py", line 29, in funcao_c
#     raise ValueError("Erro na funcao_c!")
# ValueError: Erro na funcao_c!

# Print com Try-Except:
try:
    funcao_a()
except ValueError as erro:
    print(f"Erro: {erro}")
    
