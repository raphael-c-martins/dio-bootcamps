### Estruturas de repetição -> For e While ###

# Exemplo SEM repetição: Receba um número do teclado e exiba os 2 números seguintes

a = int(input("Digite um número inteiro: "))
print(a)

b = a + 1
c = a + 2

print(f"Os números seguintes são: {b} e {c}")

# Exemplo COM repetição: Receba um número do teclado e exiba os 2 números seguintes

a = int(input("Digite um número inteiro: "))
print(a)

for i in range(2):
    a = a + 1
    print(a)

# Outro exemplo

texto = input("Digite uma palavra:")
VOGAIS = "AEIOU"

for letra in texto:
    if letra.upper() in VOGAIS:
        print(letra, end="")

else:
    print() # adiciona uma quebra de linha
    print("Executa no fim do laço")

# Função Range
# range(inicio, fim, passo)   

# range(stop) -> range object
# range(start, stop[, step])

# range com for

for numero in range(0, 11):
    print(numero, end=" ")

### 0 1 2 3 4 5 6 7 8 9 10

# Exibindo a tabuado do 5

for numero in range(0, 51, 5):
    print(numero, end=" ")

### 0 5 10 15 20 25 30 35 40 45 50

### While é usado quando não se tem uma quantidade de vezes definidas para a repetição

# Exemplo 

opcao = -1

while opcao != 0:
    opcao = int(input("[1] Sacar \n [2] Extrato [0] Sair \n"))

    if opcao == 1:
        print("Sacando...")
    elif opcao == 2:
        print("Exibindo extrato...")
    else:
        print("Opção inválida!")

# Outro exemplo

while True:
    numero = int(input("Digite um número: "))
    if numero == 10:
        print(f"Você digitou {numero}")
        break
    
    if numero % 2 == 0:
        print(f"O número {numero} é par.")
    else:
        print(f"O número {numero} é ímpar.")
    