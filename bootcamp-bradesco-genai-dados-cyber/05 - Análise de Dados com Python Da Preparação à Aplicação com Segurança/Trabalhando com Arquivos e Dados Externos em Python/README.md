# 📁 Trabalhando com Arquivos e Dados Externos em Python

Este módulo prático aborda as técnicas fundamentais para persistência, manipulação de dados locais (arquivos planos e estruturados), consumo de serviços externos via APIs HTTP REST e integração com bancos de dados relacionais utilizando a linguagem Python.

---

## 🎯 Conteúdo e Habilidades Desenvolvidas

1. **Manipulação de Arquivos de Texto (`.txt`)**
   - Criação e escrita em lote com `write()`.
   - Modos de abertura: escrita (`w`), leitura (`r`) e acréscimo (*append* `a`).
   - Leitura completa de buffer (`read()`) e iteração linha por linha eficiente com tratamento de quebras de linha (`strip()`).
   - Uso de context managers (`with open(...)`) para fechamento automático de descritores de arquivo.

2. **Manipulação de Dados Estruturados (`.csv` e `.json`)**
   - **CSV (Comma-Separated Values):** Criação, cabeçalhos, escrita matricial com `csv.writerows()` e parsing sequencial com `csv.reader()`.
   - **JSON (JavaScript Object Notation):** Serialização de estruturas de dados nativas de Python para JSON com `json.dump()` e desserialização direta para objetos Python com `json.load()`.

3. **Consumo e Integração com APIs REST**
   - Requisições HTTP GET utilizando a biblioteca `requests`.
   - Validação de códigos de status HTTP (`response.status_code == 200`).
   - Integração com **ViaCEP** (`https://viacep.com.br/ws/{cep}/json/`) para consulta de logradouros e tratamento de erros de negócio (`"erro" in dados`).
   - Integração com **JSONPlaceholder** (`https://jsonplaceholder.typicode.com/posts`) para listagem e iteração de coleções de posts.

4. **Persistência em Banco de Dados Relacional (SQLite3)**
   - Conexão e instanciação de banco local leve via módulo nativo `sqlite3`.
   - Definição de esquema DDL (`CREATE TABLE IF NOT EXISTS`) com chave primária auto-incremental e restrição de unicidade (`UNIQUE`).
   - Inserção de dados DML com confirmação de transação (`commit()`).
   - Consulta DQL (`SELECT`) e iteração sobre cursores de resultado.
   - Encerramento seguro de conexões (`close()`).

---

## 📂 Estrutura de Arquivos

```text
Trabalhando com Arquivos e Dados Externos em Python/
├── Arquivos criados (txt, csv e json)/
│   ├── dados.txt             # Arquivo texto gerado com sentenças de teste
│   ├── relatorio.txt         # Relatório formatado de vendas gerado e complementado
│   ├── vendas.csv            # Tabela de vendas exportada em formato CSV
│   └── vendas.json           # Estrutura de dados exportada em JSON
├── integracao-com-API.py     # Script de requisições HTTP REST (ViaCEP e JSONPlaceholder)
├── integracao-com-BANCO-DE-DADOS.py # Script de DDL, DML e DQL com SQLite3
├── leitura-e-escrita-em-CSV-e-JSON.py # Script de persistência e leitura em CSV e JSON
├── leitura-e-escrita-em-TXT.py # Script de manipulação de arquivos .txt
└── README.md                 # Este documento de referência
```

---

## 🚀 Como Executar

### Pré-requisitos
- Python 3.10+ instalado.
- Biblioteca `requests` instalada no ambiente:
  ```bash
  pip install requests
  ```

### Executando os Scripts

Navegue até a pasta do módulo:
```bash
cd "bootcamp-bradesco-genai-dados-cyber/Trabalhando com Arquivos e Dados Externos em Python"
```

1. **Testar manipulação de TXT:**
   ```bash
   python leitura-e-escrita-em-TXT.py
   ```

2. **Testar manipulação de CSV e JSON:**
   ```bash
   python leitura-e-escrita-em-CSV-e-JSON.py
   ```

3. **Testar integração com APIs externas:**
   ```bash
   python integracao-com-API.py
   ```

4. **Testar operações no SQLite:**
   ```bash
   python integracao-com-BANCO-DE-DADOS.py
   ```
