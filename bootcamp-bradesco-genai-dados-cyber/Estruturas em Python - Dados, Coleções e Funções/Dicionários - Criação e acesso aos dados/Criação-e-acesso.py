#### Dicionários: são estruturas de dados que armazenam informações em pares de chave-valor.

pessoa = {"nome": "Ash", "idade": 10, "altura": 1.5}

pessoa = dict(nome="Ash", idade=10, altura=1.5)

pessoa["sobrenome"] = "Ketchum"
pessoa["pokemon"] = ["Pikachu", "Squirtle", "Charmander"]



print(pessoa)
print(type(pessoa))

# =========================== #

dados = {"nome": "Ash", "idade": 10, "altura": 1.5}

dados["nome"] # "Ash"
dados["idade"] # 10
dados["altura"] # 1.5

dados["nome"] = "Misty"
dados["idade"] = 10
dados["altura"] = 1.55

dados # {'nome': 'Misty', 'idade': 10, 'altura': 1.55}

# ========== Dicionários Aninhados ========== #

treinadores_e_pokemons = {
    "Ash": {"pokemon": "Pikachu", "sobrenome": "Ketchum"},
    "Misty": {"pokemon": "Vaporeon", "sobrenome": "Waterflower"},
    "Brock": {"pokemon": "Onix", "sobrenome": "Slate", "extra": {"teste": 1}},
}

treinadores_e_pokemons["Brock"]["pokemon"] # Onix
treinadores_e_pokemons["Misty"]["pokemon"] # Vaporeon
treinadores_e_pokemons["Brock"]["extra"]["teste"] # 1

# ========== Iteração em dicionários ========== #

exemplo = {
    "email-exemplo1@gmail.com": {"nome": "raphael", "idade": 23, "altura": 1.85},
    "email-exemplo2@gmail.com": {"nome": "michelle", "idade": 26, "altura": 1.65},
    "email-exemplo3@hotmail.com": {"nome": "ana", "idade": 32, "altura": 1.65},
    "email-exemplo4@outlook.com": {"nome": "gabrielle", "idade": 24, "altura": 1.65}
}

for chave in exemplo:
    print(chave, exemplo[chave])




