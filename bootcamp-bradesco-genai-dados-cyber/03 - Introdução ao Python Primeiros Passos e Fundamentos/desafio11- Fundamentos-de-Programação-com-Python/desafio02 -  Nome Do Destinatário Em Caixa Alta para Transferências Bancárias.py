### Contexto do desafio ###

# Você acaba de ser contratado como estagiário no setor de tecnologia de um grande banco digital. Seu primeiro desafio é ajudar a equipe de atendimento a identificar rapidamente possíveis erros de digitação em transferências bancárias. Frequentemente, clientes digitam acidentalmente letras minúsculas em campos que deveriam conter apenas letras maiúsculas, como o nome do destinatário. Para evitar problemas, o gerente pediu que você desenvolva um programa que leia o nome digitado pelo cliente e retorne o mesmo nome, mas com todas as letras convertidas para maiúsculas. Assim, o sistema poderá padronizar os registros e evitar falhas em futuras operações automatizadas. Sua solução precisa ser simples, eficiente e fácil de integrar ao sistema já existente do banco, sem o uso de bibliotecas externas.

# Implemente um programa que leia uma string representando o nome do destinatário de uma transferência e retorne essa mesma string com todas as letras em maiúsculas. O programa deve preservar espaços e outros caracteres que não sejam letras, alterando apenas as letras minúsculas para maiúsculas. Considere que o nome pode conter letras, números e espaços.

# Entrada
# Uma única linha contendo uma string com o nome do destinatário da transferência.

# Saída
# Uma única linha contendo a mesma string da entrada, mas com todas as letras convertidas para maiúsculas.

# Exemplos
# A tabela abaixo apresenta exemplos de entrada e saída:

## Entrada	     ## Saída
## joao silva	 ## JOAO SILVA
## Maria123	     ## MARIA123
## ana paula	 ## ANA PAULA
## Lucas	     ## LUCAS

# ================================================ #

### Solução do Desafio ###

# Lê o nome do destinatário da transferência
nome_destinatario = input()

# TODO: Converta todas as letras da variável 'nome_destinatario' para maiúsculas e imprima o resultado

print(nome_destinatario.upper())