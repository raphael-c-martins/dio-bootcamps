# ==============================================================================
# TRATAMENTO DE EXCEÇÕES E DEPURAÇÃO DE CÓDIGO EM PYTHON
# ==============================================================================
# OBSERVAÇÃO DIDÁTICA:
# 1. Os blocos de erro comentados demonstram o código problemático e o traceback
#    gerado pelo depurador do VS Code / interpretador Python.
# 2. Logo abaixo de cada erro, há um bloco de CÓDIGO REAL EXECUTÁVEL mostrando como
#    prevenir ou tratar defensivamente a exceção na prática (usando try/except).
# ==============================================================================

### Tipos de erro ###

# Erros de sintaxe - Syntax Error
# Erro de indentação - IndentationError
# Erro operação com tipo errado - TypeError
# Erro valor fora do domínio - ValueError
# Erro operação com número inválido - ZeroDivisionError
# Erro nome não definido - NameError
# Erro de arquivo não encontrado - FileNotFoundError
# Erro índice fora do domínio - IndexError
# Erro chave não encontrada - KeyError
# Erro de atributo inexistente - AttributeError
# Erro de tempo de execução - Runtime Error / RecursionError
# Erro de módulo não encontrado - ModuleNotFoundError
# Erros lógicos - Logic Error


# ==============================================================================
# 1. Exemplo de Erro de Sintaxe - SyntaxError
# ==============================================================================
# Ocorre quando a estrutura do código viola as regras gramaticais do Python
# (por exemplo: esquecer os dois-pontos ':' no final de uma instrução 'if').

# if True
#     print("Olá, Mundo!")

# Exception has occurred: SyntaxError
# expected ':'
# File "D:\...\excecao-e-depuracao.py", line 37
#     if True
#            ^
# SyntaxError: expected ':'

# --- Código Real Executável ---
# Sintaxe corrigida com ':' e bloco de código válido:
condicao_ativa = True
if condicao_ativa:
    print("1. [SyntaxError Corrigido] Bloco 'if' estruturado corretamente com ':'.")


# ==============================================================================
# 2. Exemplo de Erro de Indentação - IndentationError
# ==============================================================================
# Subclasse de SyntaxError. Ocorre quando a indentação de um bloco de código
# não segue o padrão obrigatório do Python após 'def', 'if', 'for', etc.

# def saudacao():
# print("Olá, mundo sem indentação!")

# Exception has occurred: IndentationError
# expected an indented block after function definition on line 51
# File "D:\...\excecao-e-depuracao.py", line 52
#     print("Olá, mundo sem indentação!")
#     ^^^^^
# IndentationError: expected an indented block after function definition on line 51

# --- Código Real Executável ---
# Indentação de 4 espaços respeitada dentro do corpo da função:
def obter_saudacao():
    return "2. [IndentationError Corrigido] Função com recuo de bloco correto."

print(obter_saudacao())


# ==============================================================================
# 3. Exemplo de Operação com Tipo Errado - TypeError
# ==============================================================================
# Ocorre ao tentar aplicar uma operação ou função a tipos de dados incompatíveis
# (por exemplo: concatenar uma string diretamente com um número inteiro).

# texto = "Idade: "
# numero = 25
# resultado = texto + numero
# print(resultado)

# Exception has occurred: TypeError
# can only concatenate str (not "int") to str
# File "D:\...\excecao-e-depuracao.py", line 68, in <module>
#     resultado = texto + numero
#                 ~~~~~~^~~~~~~~
# TypeError: can only concatenate str (not "int") to str

# --- Código Real Executável ---
rotulo = "Idade: "
idade_valor = 25

try:
    mensagem = rotulo + idade_valor
except TypeError as erro:
    print(f"3. [TypeError Tratado] {erro}")
    # Solução: conversão explícita de tipos (type casting) com str()
    mensagem = rotulo + str(idade_valor)
    print(f"   -> Mensagem corrigida: {mensagem}")


# ==============================================================================
# 4. Exemplo de Valor Fora do Domínio - ValueError
# ==============================================================================
# Ocorre quando o tipo do dado é aceito pela função, mas o conteúdo é inapropriado
# (por exemplo: tentar converter caracteres alfabéticos em número inteiro).

# texto = "abc"
# numero = int(texto)
# print(numero)

# Exception has occurred: ValueError
# invalid literal for int() with base 10: 'abc'
# File "D:\...\excecao-e-depuracao.py", line 84, in <module>
#     numero = int(texto)
#              ^^^^^^^^^^
# ValueError: invalid literal for int() with base 10: 'abc'

# --- Código Real Executável ---
entrada_bruta = "abc"

try:
    numero_convertido = int(entrada_bruta)
except ValueError as erro:
    print(f"4. [ValueError Tratado] {erro}")
    # Solução defensiva: checar se são dígitos ou aplicar valor de fallback seguro
    numero_convertido = int(entrada_bruta) if entrada_bruta.isdigit() else 0
    print(f"   -> Valor seguro atribuído: {numero_convertido}")


# ==============================================================================
# 5. Exemplo de Operação com Número Inválido - ZeroDivisionError
# ==============================================================================
# Ocorre quando uma divisão ou operação de resto (módulo) tem 0 no denominador.

# numero = 10 / 0
# print(numero)

# Exception has occurred: ZeroDivisionError
# division by zero
# File "D:\...\excecao-e-depuracao.py", line 98, in <module>
#     numero = 10 / 0
#              ~~~^~~
# ZeroDivisionError: division by zero

# --- Código Real Executável ---
numerador = 10
divisor = 0

try:
    quociente = numerador / divisor
except ZeroDivisionError as erro:
    print(f"5. [ZeroDivisionError Tratado] {erro}")
    quociente = None
    print(f"   -> Divisão por zero evitada. Quociente definido como: {quociente}")


# ==============================================================================
# 6. Exemplo de Nome Não Definido - NameError
# ==============================================================================
# Ocorre ao tentar acessar uma variável ou função que não foi definida ou importada.

# print(variavel_nao_declarada)

# Exception has occurred: NameError
# name 'variavel_nao_declarada' is not defined
# File "D:\...\excecao-e-depuracao.py", line 111, in <module>
#     print(variavel_nao_declarada)
#           ^^^^^^^^^^^^^^^^^^^^^^
# NameError: name 'variavel_nao_declarada' is not defined

# --- Código Real Executável ---
try:
    print(variavel_nao_declarada)
except NameError as erro:
    print(f"6. [NameError Tratado] {erro}")
    variavel_nao_declarada = "Variável agora inicializada no bloco defensivo!"
    print(f"   -> Recuperação realizada: {variavel_nao_declarada}")


# ==============================================================================
# 7. Exemplo de Arquivo Não Encontrado - FileNotFoundError
# ==============================================================================
# Ocorre ao tentar abrir ou manipular um arquivo que não existe no caminho indicado.

# with open("arquivo_que_nao_existe.txt", "r") as arquivo:
#     conteudo = arquivo.read()

# Exception has occurred: FileNotFoundError
# [Errno 2] No such file or directory: 'arquivo_que_nao_existe.txt'
# File "D:\...\excecao-e-depuracao.py", line 124, in <module>
#     with open("arquivo_que_nao_existe.txt", "r") as arquivo:
#          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
# FileNotFoundError: [Errno 2] No such file or directory: 'arquivo_que_nao_existe.txt'

# --- Código Real Executável ---
nome_arquivo = "arquivo_que_nao_existe.txt"

try:
    with open(nome_arquivo, "r", encoding="utf-8") as arquivo:
        conteudo = arquivo.read()
except FileNotFoundError as erro:
    print(f"7. [FileNotFoundError Tratado] Arquivo '{nome_arquivo}' não localizado.")
    conteudo = "Conteúdo padrão de fallback (memória)."
    print(f"   -> Aplicação seguiu estável com conteúdo padrão: '{conteudo}'")


# ==============================================================================
# 8. Exemplo de Índice Fora do Domínio - IndexError
# ==============================================================================
# Ocorre ao tentar acessar um elemento por um índice inexistente em uma lista ou tupla.

# lista = [10, 20, 30]
# print(lista[5])

# Exception has occurred: IndexError
# list index out of range
# File "D:\...\excecao-e-depuracao.py", line 138, in <module>
#     print(lista[5])
#           ~~~~~^^^
# IndexError: list index out of range

# --- Código Real Executável ---
colecao = [10, 20, 30]
indice_desejado = 5

try:
    item_selecionado = colecao[indice_desejado]
except IndexError as erro:
    print(f"8. [IndexError Tratado] {erro}")
    # Solução defensiva: recuperar o último item disponível se o índice for excessivo
    item_selecionado = colecao[-1]
    print(f"   -> Fallback aplicado: recuperado último elemento da lista ({item_selecionado})")


# ==============================================================================
# 9. Exemplo de Chave Não Encontrada - KeyError
# ==============================================================================
# Ocorre ao buscar uma chave inexistente dentro de um dicionário usando colchetes.

# usuario = {"nome": "Raphael"}
# print(usuario["idade"])

# Exception has occurred: KeyError
# 'idade'
# File "D:\...\excecao-e-depuracao.py", line 151, in <module>
#     print(usuario["idade"])
#           ~~~~~~~^^^^^^^^^
# KeyError: 'idade'

# --- Código Real Executável ---
usuario = {"nome": "Raphael"}

try:
    idade = usuario["idade"]
except KeyError as erro:
    print(f"9. [KeyError Tratado] Chave {erro} ausente no dicionário.")
    # Solução idiomática em Python: método .get() com valor padrão
    idade = usuario.get("idade", 25)
    print(f"   -> Recuperado com método .get() seguro: {idade}")


# ==============================================================================
# 10. Exemplo de Atributo Inexistente - AttributeError
# ==============================================================================
# Ocorre ao tentar chamar um método ou acessar uma propriedade inexistente no tipo.

# texto = "Python"
# texto.append(" DIO")

# Exception has occurred: AttributeError
# 'str' object has no attribute 'append'
# File "D:\...\excecao-e-depuracao.py", line 164, in <module>
#     texto.append(" DIO")
#     ^^^^^^^^^^^^
# AttributeError: 'str' object has no attribute 'append'

# --- Código Real Executável ---
linguagem = "Python"

try:
    linguagem.append(" DIO")
except AttributeError as erro:
    print(f"10. [AttributeError Tratado] {erro}")
    # Solução: strings são imutáveis e não têm .append(); usa-se concatenação
    linguagem = linguagem + " DIO"
    print(f"    -> Concatenação aplicada corretamente: {linguagem}")


# ==============================================================================
# 11. Exemplo de Erro de Tempo de Execução - RuntimeError
# ==============================================================================
# Ocorre quando uma falha genérica de execução impede a continuidade da operação
# (exemplo: mutação do tamanho de um dicionário durante a própria iteração).

# dicionario = {"a": 1, "b": 2}
# for chave in dicionario:
#     del dicionario[chave]

# Exception has occurred: RuntimeError
# dictionary changed size during iteration
# File "D:\...\excecao-e-depuracao.py", line 178, in <module>
#     for chave in dicionario:
#                  ^^^^^^^^^^
# RuntimeError: dictionary changed size during iteration

# --- Código Real Executável ---
tabela = {"a": 1, "b": 2, "c": 3}

try:
    for chave in tabela:
        if chave == "b":
            del tabela[chave]
except RuntimeError as erro:
    print(f"11. [RuntimeError Tratado] {erro}")
    # Solução: iterar sobre uma cópia das chaves gerada por list(dict.keys())
    for chave in list(tabela.keys()):
        if chave == "b":
            del tabela[chave]
    print(f"    -> Remoção segura realizada com cópia de chaves: {tabela}")


# ==============================================================================
# 12. Exemplo de Recursão Infinita - RecursionError
# ==============================================================================
# Subclasse de RuntimeError. Ocorre quando uma função recursiva atinge o limite máximo
# de chamadas de pilha por não ter um caso base de parada.

# def recursao():
#     return recursao()
# recursao()

# Exception has occurred: RecursionError
# maximum recursion depth exceeded
# File "D:\...\excecao-e-depuracao.py", line 193, in recursao
#     return recursao()
#            ^^^^^^^^^^
# RecursionError: maximum recursion depth exceeded

# --- Código Real Executável ---
# Função recursiva correta que define uma condição base de parada obrigatória:
def contagem_regressiva(n):
    if n <= 0:
        return "Fogo!"
    return f"{n}... " + contagem_regressiva(n - 1)

print(f"12. [RecursionError Prevenido] {contagem_regressiva(3)}")


# ==============================================================================
# 13. Exemplo de Módulo Não Encontrado - ModuleNotFoundError
# ==============================================================================
# Subclasse de ImportError. Ocorre ao tentar importar um pacote ou módulo não instalado.

# import modulo_inexistente_xyz

# Exception has occurred: ModuleNotFoundError
# No module named 'modulo_inexistente_xyz'
# File "D:\...\excecao-e-depuracao.py", line 206, in <module>
#     import modulo_inexistente_xyz
#     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
# ModuleNotFoundError: No module named 'modulo_inexistente_xyz'

# --- Código Real Executável ---
try:
    import modulo_inexistente_xyz
except ModuleNotFoundError as erro:
    print(f"13. [ModuleNotFoundError Tratado] {erro}")
    # Solução: graceful degradation / uso de biblioteca nativa alternativa
    import json
    print(f"    -> Fallback seguro: módulo alternativo nativo carregado ({json.__name__}).")


# ==============================================================================
# 14. Exemplo de Erro Lógico - Logic Error
# ==============================================================================
# Não gera exceção nem interrompe a execução do Python. O script finaliza com sucesso
# (código de saída 0), porém o resultado é incorreto devido a uma falha na lógica
# ou na precedência de operadores.

# nota1 = 7.0
# nota2 = 9.0
# # Erro de precedência: nota2 / 2 é avaliado primeiro.
# # O correto seria usar parênteses: (nota1 + nota2) / 2
# media = nota1 + nota2 / 2
# print(f"Média calculada: {media}")
# # Saída gerada: Média calculada: 11.5 (Incorreto! A média correta é 8.0)

# O interpretador NÃO lança exceção:
# Status: Execução bem-sucedida (Exit code 0), mas com bug de negócio.
# Prevenção: Escrever testes unitários e utilizar o depurador passo a passo.

# --- Código Real Executável ---
nota_a = 7.0
nota_b = 9.0

# 1. Demonstração do erro lógico (a divisão ocorre antes da soma):
media_errada = nota_a + nota_b / 2

# 2. Demonstração do cálculo corrigido (parênteses forçam a soma primeiro):
media_correta = (nota_a + nota_b) / 2

print(f"14. [Erro Lógico] Sem parênteses: {media_errada} | Corrigido com parênteses: {media_correta}")

