# Bancos de dados são usados para armazenar e gerenciar grandes volumes de dados
# SQL é a linguagem padrão para interagir com bancos de dados relacionais
# SQLite é um banco de dados relacional leve que vem com o Python
# MySQL é um banco de dados relacional popular
# PostgreSQL é um banco de dados relacional popular

import sqlite3

# Criando uma conexão com o banco de dados

conexao = sqlite3.connect("database.db")

# Criando uma tabela

conexao.execute("""
    CREATE TABLE IF NOT EXISTS usuarios (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        nome TEXT NOT NULL,
        email TEXT NOT NULL UNIQUE
    )
""")

# Inserindo dados

conexao.execute("INSERT INTO usuarios (nome, email) VALUES ('Raphael', 'raphael@exemplo.com.br')")
conexao.commit()

# Buscando dados

cursor = conexao.execute("SELECT * FROM usuarios")
for linha in cursor:
    print(linha)

# Fechando a conexão

conexao.close()