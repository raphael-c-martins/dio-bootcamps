# Estruturas condicionais -> if, elif, else

conta_normal = False
conta_universitaria = False
conta_especial = True

saldo = 2000
saque = 1500
cheque_especial = 450

if conta_normal:

    if saldo >= saque:
        print("Saque realizado")
    elif saque <= (saldo + cheque_especial):
        print("Saque realizado com cheque especial")
    else:
        print("Saldo insuficiente")

elif conta_universitaria:
    if saldo >= saque:
        print("Saque realizado")
    else:
        print("Saldo insuficiente")

elif conta_especial:
    print("Conta especial selecionada")

else:
    print("Conta não identificada")


# ----Outro Exemplo----

situacao = input("Informe a situação do aluno (aprovado/reprovado): ")

if situacao == "aprovado":
    print("Parabéns, você foi aprovado!")
elif situacao == "reprovado":
    print("Infelizmente, você foi reprovado.")
else:
    print("Situação inválida.")


# ----Outro Exemplo----

idade = int(input("Digite sua idade: "))

if idade >= 18:
    print("Você é maior de idade.")
else:
    print("Você é menor de idade.")


# ----Outro Exemplo----

opcao = int(input("Digite uma opção: [1] Sacar \n [2] Extrato \n [3] Sair: "))

if opcao == 1:
    print("Realizando saque...")
elif opcao == 2:
    print("Exibindo extrato...")
elif opcao == 3:
    print("Saindo...")
else:
    print("Opção inválida.")


### If Ternário ###

status = "Sucesso" if saldo >= saque else "Falha no saque"

print(f"Status do saque: {status}")

