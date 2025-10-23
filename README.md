# E-commerce Database Operations (DML & DQL)

Projeto acadêmico que implementa e manipula um banco de dados relacional de e-commerce utilizando SQL e Python.  
O foco está na aplicação prática de comandos DML e DQL para inserção, atualização, exclusão e consultas, além de scripts Python para manipulação de dados de produtos.

---

## Estrutura do Projeto

| Arquivo | Descrição |
|----------|------------|
| `Arquivo_1_2_comandos_DML.sql` | Script com os comandos DML (INSERT, UPDATE, DELETE) aplicados sobre o modelo lógico do banco, incluindo testes de integridade referencial e validação de constraints. |
| `Arquivo 1_2_2_comandos_DML.docx` | Documento de apoio que descreve as instruções SQL executadas e as respostas obtidas. |
| `Arquivo_1_3_comandos_DQL.sql` | Consultas DQL (SELECT) para exibição e análise dos dados do e-commerce, com junções, filtros e cálculos. |
| `Arquivo_1_4_algoritmo_produto.py` | Script em Python para manipulação e análise de dados de produtos, integrando leitura de arquivos CSV e operações com pandas. |
| `1_5_arquivo_produto.csv` | Arquivo CSV contendo dados de produtos utilizados pelo algoritmo Python. |

---

## Operações Implementadas

### Manipulação de Dados (DML)
O script executa diversas operações no banco de dados, incluindo:

- Inserção de **departamentos, funcionários, estados, cidades, bairros e logradouros**.  
- Cadastro de **clientes pessoas físicas e jurídicas**, com endereços associados.  
- Inserção de **produtos e categorias**, incluindo categorias de vídeo e relacionamento entre tabelas.  
- Criação de **vídeos de produto** e **visualizações de vídeo** associadas a clientes.  
- Testes de integridade:  
  - Tentativa de inserção duplicada em campo com **UNIQUE CONSTRAINT**;  
  - Exclusão bloqueada por **FOREIGN KEY CONSTRAINT**;  
  - Validação de **CHECK CONSTRAINT** em status de produto.  
:contentReference[oaicite:0]{index=0}:contentReference[oaicite:1]{index=1}

---

### Consultas e Análises (DQL)
As consultas SQL exploram o relacionamento entre tabelas para gerar análises de dados, como:

- Exibição de **categorias e produtos relacionados**;  
- Consulta de **clientes pessoas físicas**, incluindo cálculo automático de idade e dia da semana de nascimento;  
- Exibição de **visualizações de vídeos de produtos**, com data e hora organizadas em ordem cronológica.  
:contentReference[oaicite:2]{index=2}

---

### Script Python
O arquivo `Arquivo_1_4_algoritmo_produto.py` lê o arquivo CSV (`1_5_arquivo_produto.csv`) e realiza operações como:

- Leitura e limpeza de dados de produtos.  
- Cálculo de médias e estatísticas de preços.  
- Demonstração de integração entre **dados SQL e CSV**.  

---

## Tecnologias Utilizadas

- Oracle SQL Developer  
- Oracle Database 11g  
- Python 3.10+  
- Pandas  
- CSV como fonte de dados auxiliar  

---

## Conceitos Aplicados

- Comandos DML e DQL (INSERT, UPDATE, DELETE, SELECT)  
- Integridade referencial e restrições de chave  
- JOINs e funções SQL de data e cálculo  
- Integração Python + Banco de Dados  
- Normalização de tabelas e consistência dos dados  

---

## Autora

Dayanne Simão  


---

## Licença

Uso livre para fins de estudo e referência.

