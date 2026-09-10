### O que são funções em Python: Funções são blocos de código que realizam tarefas específicas. Elas são usadas para organizar o código e torná-lo mais legível. Elas também são usadas para evitar a duplicação de código.

# ============== Exemplo de função ============== #

def exibir_mensagem():
    print("Olá, mundo!")

def exibir_mensagem2(nome):
    print(f"Olá, {nome}!")

def exibir_mensagem3(nome="Anônimo"):
    print(f"Olá, {nome}!")

exibir_mensagem()
exibir_mensagem2(nome="Raphael")
exibir_mensagem3()
exibir_mensagem3(nome="Leticia")


print("=============================================")
# ============= Exemplo de função com retorno ============= #

def calcular_total(numeros):
    return sum(numeros)

def retorna_antecessor_e_sucessor(numero):
    antecessor = numero - 1
    sucessor = numero + 1
    return antecessor, sucessor

def funcao_none():
    print("Função que não retorna nada (None)")

print(calcular_total([10, 20, 34])) # 64
print(retorna_antecessor_e_sucessor(10)) # (9, 11)
print(funcao_none()) # None

print("=============================================")
# ============= Argumentos nomeados ============= #

def salvar_carro(marca, modelo, ano, placa):
    # salva o carro no banco de dados
    print(f"Carro inserido com sucesso! {marca}/{modelo}/{ano}/{placa}")

salvar_carro("Uno", "Fiat", 2010, "ABC1234") 
# Vai salvar invertido, modelo vai pra área de marca
# O Python vai entender: marca=Uno, modelo=Fiat, ano=2010, placa=ABC1234

salvar_carro(ano=2023, marca="Honda", modelo="City", placa="XYZ7890")
# O Python vai entender: ano=2023, marca=Honda, modelo=City, placa=XYZ7890

salvar_carro(**{"marca": "Fiat", "modelo": "Palio", "ano": 2012, "placa": "ABC1235"})
# O Python vai entender: marca=Fiat, modelo=Palio, ano=2012, placa=ABC1235
# aqui teve uso de **kwargs para desempacotar o dicionário em argumentos nomeados

### Teste dando erro, cenário: alguém alterou a variavel da função ###

def pokemons(nome, tipo, região):
    print(f"Pokemon: {nome} - Tipo: {tipo} - Região: {região}")

pokemons(tipo="Elétrico", nome="Pikachu", região="Kanto")
pokemons("Pikachu", "Elétrico", "Kanto")
pass # Para que o código continue rodando e não de erro

# Resposta: O erro está na digitação, o nome da variável está errado/foi alterado sem comunicação com todos os envolvidos

print("=============================================")
# ============= *Args e **Kwargs ============= #

def exibir_poema(data_extenso, *args, ** kwargs):
    texto = "\n".join(args)
    meta_dados = "\n".join([f"{chave.title()}: {valor}" for chave, valor in kwargs.items()])
    mensagem = f"{data_extenso}\n\n{texto}\n\n{meta_dados}"
    print(mensagem)

exibir_poema(
    "Quinta-feira, 03 de Setembro de 2026", 
    "Zen of Python", 
    "Simplicidade é melhor que complexidade",
    "Complexidade é melhor que complicação",
    "Performance é melhor que velocidade", 
    "Elegância é melhor que feiura", 
    "Beleza é melhor que feiura",
    "Especialização é melhor que generalização", 
    "Leitura é melhor que escrita", 
    "Erro é melhor que não ter tentado",
    "Praticidade é melhor que teoria", 
    autor="Raphael", 
    ano="2026"
)
    
