# Criando um arquivo para teste

with open("dados.txt", "w") as arquivo:
    arquivo.write("Python é uma linguagem poderosa. \n")
    arquivo.write("Facilita a automação de tarefas.")

# Lendo o arquivo completo

with open("dados.txt", "r") as arquivo:
    conteudo = arquivo.read()

    print(conteudo)

# Lendo linha por linha

with open("dados.txt", "r") as arquivo:
    for linha in arquivo:
        print(linha.strip())

### Função write() ###

with open("relatorio.txt", "w") as arquivo:
    arquivo.write("Relatório de Vendas\n")
    arquivo.write("=-=--=--=--=--=--=--=--=--=-=\n")
    arquivo.write("Produto A: R$ 100,00\n")
    arquivo.write("Produto B: R$ 200,00\n")
    arquivo.write("Produto C: R$ 300,00\n")

    print("Arquivo 'relatorio.txt' criado com sucesso.")

# Adicionando mais conteúdo

with open("relatorio.txt", "a") as arquivo:
    arquivo.write("Produto D: R$ 400,00\n")
    arquivo.write("Produto E: R$ 500,00\n")

    print("Conteúdo adicionado ao arquivo 'relatorio.txt'.")

# Lendo o arquivo 'relatorio.txt'

with open("relatorio.txt", "r") as arquivo:
    conteudo = arquivo.read()

    print(conteudo)

# Lendo linha por linha

with open("relatorio.txt", "r") as arquivo:
    for linha in arquivo:
        print(linha.strip())
