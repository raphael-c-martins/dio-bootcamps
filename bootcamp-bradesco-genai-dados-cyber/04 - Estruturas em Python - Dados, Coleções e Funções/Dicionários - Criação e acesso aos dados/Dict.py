# =========== Métodos da classe Dict =========== #

# ===== {.clear} ===== #

contatos = {
    "email-exemplo1@gmail.com": {"nome": "raphael", "idade": 23, "altura": 1.85},
    "email-exemplo2@gmail.com": {"nome": "michelle", "idade": 26, "altura": 1.65},
    "email-exemplo3@hotmail.com": {"nome": "ana", "idade": 32, "altura": 1.65},
    "email-exemplo4@outlook.com": {"nome": "gabrielle", "idade": 24, "altura": 1.65}
}

contatos.clear()
contatos # {}

# ===== {.copy} ===== #

copia = contatos.copy()
copia["email-exemplo1@gmail.com"] = {"nome": "Rapha"}

print(copia)

# ===== {.fromkeys} ===== #

lista1 = ["nome", "idade", "altura", "cidade"]
lista2 = ["raphael", 23, 1.85, "sao paulo"]

contatos = dict.fromkeys(lista1, lista2)

print(contatos)

dict.fromkeys(["Nome", "idade", "altura"], "Vazio")

# ===== {.get} ===== #

contatos = {
    "guilherme@gmail.com": {"nome": "Guilherme", "telefone": "3333-2221"}
}

# contatos["chave"]  # KeyError: acessar diretamente uma chave inexistente gera erro

contatos.get("chave")  # None
contatos.get("chave", {})  # {}
contatos.get("guilherme@gmail.com", {})  # {'nome': 'Guilherme', 'telefone': '3333-2221'}

# ===== {.items} ===== #

contatos = {
    "guilherme@gmail.com": {"nome": "Guilherme", "telefone": "3333-2221"}
}

contatos.items()  # dict_items([('guilherme@gmail.com', {'nome': 'Guilherme', 'telefone': '3333-2221'})])

# ===== {.keys} ===== #

contatos = {
    "guilherme@gmail.com": {"nome": "Guilherme", "telefone": "3333-2221"}
}

contatos.keys()  # dict_keys(['guilherme@gmail.com'])

novo_dicionario = {"a": 100, 1: "teste", "b": "python"}
print(novo_dicionario.keys())  # dict_keys(['a', 1, 'b'])

# ===== {.pop} ===== #

contatos = {
    "guilherme@gmail.com": {"nome": "Guilherme", "telefone": "3333-2221"}
}

contatos.pop("guilherme@gmail.com")  # {'nome': 'Guilherme', 'telefone': '3333-2221'}
contatos.pop("guilherme@gmail.com", {})  # {}

# ===== {.popitem} ===== #

contatos = {
    "guilherme@gmail.com": {"nome": "Guilherme", "telefone": "3333-2221"}
}

contatos.popitem()  # ('guilherme@gmail.com', {'nome': 'Guilherme', 'telefone': '3333-2221'})
# contatos.popitem()  # KeyError: retirar itens de um dicionário vazio gera erro

# ===== {.setdefault} ===== #

contato = {"nome": "Guilherme", "telefone": "3333-2221"}

contato.setdefault("nome", "Giovanna")  # "Guilherme" (não altera pois a chave 'nome' já existe)
contato  # {'nome': 'Guilherme', 'telefone': '3333-2221'}

contato.setdefault("idade", 28)  # 28 (adiciona pois a chave 'idade' ainda não existia)
contato  # {'nome': 'Guilherme', 'telefone': '3333-2221', 'idade': 28}
print(contato)

# ===== {.update} ===== #

contatos = {
    "guilherme@gmail.com": {"nome": "Guilherme", "telefone": "3333-2221"}
}

contatos.update({"guilherme@gmail.com": {"nome": "Gui"}})
contatos  # {'guilherme@gmail.com': {'nome': 'Gui'}}

contatos.update({"giovanna@gmail.com": {"nome": "Giovanna", "telefone": "3322-8181"}})
contatos  # {'guilherme@gmail.com': {'nome': 'Gui'}, 'giovanna@gmail.com': {'nome': 'Giovanna', 'telefone': '3322-8181'}}

# ===== {.values} ===== #

contatos = {
    "guilherme@gmail.com": {"nome": "Guilherme", "telefone": "3333-2221"},
    "giovanna@gmail.com": {"nome": "Giovanna", "telefone": "3443-2121"},
    "chappie@gmail.com": {"nome": "Chappie", "telefone": "3344-9871"},
    "melaine@gmail.com": {"nome": "Melaine", "telefone": "3333-7766"},
}

contatos.values()  # dict_values([{'nome': 'Guilherme', 'telefone': '3333-2221'}, {'nome': 'Giovanna', 'telefone': '3443-2121'}, {'nome': 'Chappie', 'telefone': '3344-9871'}, {'nome': 'Melaine', 'telefone': '3333-7766'}])

# ===== {in} ===== #

contatos = {
    "guilherme@gmail.com": {"nome": "Guilherme", "telefone": "3333-2221"},
    "giovanna@gmail.com": {"nome": "Giovanna", "telefone": "3443-2121"},
    "chappie@gmail.com": {"nome": "Chappie", "telefone": "3344-9871"},
    "melaine@gmail.com": {"nome": "Melaine", "telefone": "3333-7766"},
}

resultado = "guilherme@gmail.com" in contatos  # True
print(resultado)

resultado = "megui@gmail.com" in contatos  # False
print(resultado)

resultado = "idade" in contatos["guilherme@gmail.com"]  # False
print(resultado)

resultado = "telefone" in contatos["giovanna@gmail.com"]  # True
print(resultado)
