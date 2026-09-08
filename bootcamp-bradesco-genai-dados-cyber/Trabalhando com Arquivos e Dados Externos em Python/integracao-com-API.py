# API é um contrato que define como dois sistemas podem se comunicar
# Normalmente irão utilizar o protocolo HTTP/HTTPS
# JSON é o formato padrão de comunicação entre sistemas
# Em Python a biblioteca que é comumente usada para isso é a 'requests'

import requests

# Vamos usar uma API pública de CEP para validar endereços

response = requests.get("https://viacep.com.br/ws/01001000/json/")

# Validação da requisição

if response.status_code == 200:
    dados = response.json()

    # Tratamento de erros

    if "erro" in dados:
        print("CEP não encontrado.")
    else:
        print(dados)
else:
    print(f"Erro ao buscar CEP. Código de status: {response.status_code}")

print("=============================")
print("Bairro: ", dados["bairro"])
print("Cidade: ", dados["localidade"])
print("Estado: ", dados["estado"])
print("=============================")

# URL da API de posts

url_posts = "https://jsonplaceholder.typicode.com/posts"

# Fazendo a requisição

response_posts = requests.get(url_posts)

# Validação da requisição

if response_posts.status_code == 200:
    posts = response_posts.json()
    
    # Exibindo os posts
    
    for post in posts:
        print(post["title"])
else:
    print(f"Erro ao buscar posts. Código de status: {response_posts.status_code}")
    
print("=============================")