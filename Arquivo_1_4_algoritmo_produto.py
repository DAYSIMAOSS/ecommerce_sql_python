import csv

#Mensagem de boas vindas

boas_vindas = "Olá, seja bem vindo ao cadastro de produtos da Melhores Compras!"
print(boas_vindas)

# Lista para armazenar os produtos
produtos = []

# Função para solicitar informações do produto ao usuário
def solicitar_informacoes():
    while True:
        descricao = input("Qual produto você deseja cadastrar? ").strip()
        if descricao:
            break
        else:
            print('Por favor, cadastre um nome para o produto')
    while True:
        try:
            valor = float(input("Insira o valor do produto (Utilize o ponto para indicar os centavos): "))
            if valor <= 0:
                print('Por favor, insira um número positivo!')
            else:
                break
        except ValueError:
            print("Ops! Por favor, insira um número para o valor do produto.")
    tipo_embalagem = input("Qual é a embalagem do produto? (Se não houver, não preencher) ").strip()
    return descricao, valor, tipo_embalagem
# Função para adicionar um produto à coleção
def adicionar_produto(descricao, valor, tipo_embalagem):
    produto = {
        "descricao": descricao,
        "valor": valor,
        "tipo_embalagem": tipo_embalagem
    }
    produtos.append(produto)
    if tipo_embalagem == "":
        print(f"O produto {descricao} de valor {valor} foi cadastrado com sucesso!.")
    else:
        print(f"Sucesso! O produto {descricao} de valor {valor} será embalado em um(a) {tipo_embalagem}.")

# Função principal que executa o loop de cadastro
def cadastro_produtos():
    while True:
        descricao, valor, tipo_embalagem = solicitar_informacoes()
        adicionar_produto(descricao, valor, tipo_embalagem)
        continuar = input("Deseja cadastrar um novo produto? (sim/não) ").lower()
        if continuar != 'sim':
            if len(produtos) >= 5:
                break
            else:
                print("É necessário cadastrar no mínimo 5 produtos.")

    salvar_produtos_csv("1_5_arquivo_produto.csv")

# Função para salvar os produtos em um arquivo CSV
def salvar_produtos_csv(nome_arquivo):
    keys = produtos[0].keys()
    with open(nome_arquivo, 'w', newline='') as arquivo_csv:
        dict_writer = csv.DictWriter(arquivo_csv, keys, delimiter = ';')
        dict_writer.writeheader()
        dict_writer.writerows(produtos)
    print(f"Produtos salvos no arquivo {nome_arquivo} com sucesso!")

# Executar o cadastro de produtos
cadastro_produtos()