### Contexto do Desafio ###

# Você acaba de ser contratado como analista júnior em uma corretora de valores que está desenvolvendo um sistema para ajudar investidores iniciantes a entenderem rapidamente se uma ação teve um bom desempenho no dia. Seu chefe, entusiasmado com a tecnologia, propõe um desafio: criar um programa simples que, ao receber o preço de abertura e o preço de fechamento de uma ação, informe se ela valorizou, desvalorizou ou permaneceu estável. Essa ferramenta será usada em treinamentos para novos investidores, ajudando-os a interpretar rapidamente os movimentos básicos do mercado financeiro.

# Implemente um programa que leia dois valores inteiros positivos: o preço de abertura e o preço de fechamento de uma ação. O programa deve comparar os valores e imprimir "ALTA" se o preço de fechamento for maior que o de abertura, "BAIXA" se for menor, ou "ESTAVEL" se forem iguais. Não utilize bibliotecas externas. Considere apenas os dois valores fornecidos na entrada, separados por espaço.

# Entrada
# Uma única linha contendo dois números inteiros positivos separados por espaço, representando respectivamente o preço de abertura e o preço de fechamento da ação.

# Saída
# Uma única palavra: "ALTA", "BAIXA" ou "ESTAVEL", de acordo com a comparação entre os valores de abertura e fechamento.

# Exemplos
# A tabela abaixo apresenta exemplos de entrada e saída:

## Entrada	Saída
## 10 15	ALTA
## 20 18	BAIXA
## 30 30	ESTAVEL
## 5 5	ESTAVEL

# ================================================ #

### Solução do Desafio ###

# Lê a linha de entrada e separa os valores
entrada = input()
abertura_str, fechamento_str = entrada.split()

# Converte os valores para inteiros
abertura = int(abertura_str)
fechamento = int(fechamento_str)

# TODO: Compare os valores de abertura e fechamento e imprima o resultado correto ("ALTA", "BAIXA" ou "ESTAVEL")

if abertura < fechamento:
    print("ALTA")

if abertura > fechamento:
    print("BAIXA")

if abertura == fechamento:
    print("ESTAVEL")
  
  