### Strings triplas ###

nome = "Raphael"

## Pode usar tanto ' quanto "

mensagem = f'''
 Olá, meu nome é {nome},
Eu estou aprendendo Python.
        Essa mensagem tem quebras de linha e diferentes recuos.
'''

print(mensagem)
#  Olá, meu nome é Raphael,
# Eu estou aprendendo Python.
#         Essa mensagem tem quebras de linha e diferentes recuos.



### Menu de caixa de banco usando string triplas ###

print("""

==================================
    BANCO DIGITAL PYTHON
==================================

[1] Depositar
[2] Sacar
[3] Extrato
[4] Sair

==================================
""")