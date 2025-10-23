

-- a)    Popular a tabela DEPARTAMENTO, inserindo no mínimo 3 departamentos, conforme sugestão abaixo:
INSERT INTO MC_DEPTO (nm_depto, st_depto) VALUES ('COMERCIAL', 'A');
INSERT INTO MC_DEPTO (nm_depto, st_depto) VALUES ('FINANCEIRO', 'A');
INSERT INTO MC_DEPTO (nm_depto, st_depto) VALUES ('SAC', 'A');

-- b)    Escolha 2 departamentos e popule a tabela FUNCIONARIO, inserindo no mínimo 3 (três) funcionários para os departamentos escolhidos.

INSERT INTO MC_FUNCIONARIO (
    cd_depto, 
    cd_gerente, 
    nm_funcionario, 
    dt_nascimento, 
    fl_sexo_biologico, 
    ds_genero, 
    ds_cargo, 
    vl_salario, 
    ds_email, 
    st_func, 
    dt_cadastramento, 
    dt_desligamento
) VALUES (
    1,
    NULL,
    'Jim Halpert',
    TO_DATE('18/02/1978', 'DD/MM/YYYY'),
    'M',
    'Masculino',
    'Vendedor',
    3000, 
    'jim_halpert@dundermifflin.com',
    'A',
    TO_DATE('24/03/2005', 'DD/MM/YYYY'),
    NULL
);

INSERT INTO MC_FUNCIONARIO (
    cd_depto, 
    cd_gerente, 
    nm_funcionario, 
    dt_nascimento, 
    fl_sexo_biologico, 
    ds_genero, 
    ds_cargo, 
    vl_salario, 
    ds_email, 
    st_func, 
    dt_cadastramento, 
    dt_desligamento
) VALUES (
    3,
    NULL,
    'Kelly Rajnigandha Kapoor',
    TO_DATE('05/02/1980', 'DD/MM/YYYY'),
    'F',
    'Feminino',
    'Atendente',
    2000, 
    'kelly_kapoor@dundermifflin.com',
    'A',
    TO_DATE('24/03/2005', 'DD/MM/YYYY'),
    NULL
);

INSERT INTO MC_FUNCIONARIO (
    cd_depto, 
    cd_gerente, 
    nm_funcionario, 
    dt_nascimento, 
    fl_sexo_biologico, 
    ds_genero, 
    ds_cargo, 
    vl_salario, 
    ds_email, 
    st_func, 
    dt_cadastramento, 
    dt_desligamento
) VALUES (
    2,
    NULL,
    'Kevin Malone',
    TO_DATE('01/06/1968', 'DD/MM/YYYY'),
    'M',
    'Masculino',
    'Contador',
    2500, 
    'kevin_malone@dundermifflin.com',
    'A',
    TO_DATE('24/03/2005', 'DD/MM/YYYY'),
    NULL
);

-- c)     Popular 2 ESTADOS do Brasil. Associe no mínimo 2 cidades para cada Estado. Para cada cidade, associe no mínimo 1 bairro e para cada bairro associe 2 endereços, totalizando no mínimo 8 endereços diferentes. 

INSERT INTO MC_ESTADO (sg_estado, nm_estado) VALUES ('SP', 'São Paulo');
INSERT INTO MC_ESTADO (sg_estado, nm_estado) VALUES ('BA', 'Bahia');

INSERT INTO MC_CIDADE (
    cd_estado, 
    nm_cidade, 
    cd_ibge, 
    nr_ddd) VALUES (
    2,
    'Feira de Santana',
    2910800,
    75
);

INSERT INTO MC_CIDADE (
    cd_estado, 
    nm_cidade, 
    cd_ibge, 
    nr_ddd) VALUES (
    2,
    'Salvador',
    2927408,
    71
);

INSERT INTO MC_CIDADE (
    cd_estado, 
    nm_cidade, 
    cd_ibge, 
    nr_ddd) VALUES (
    1,
    'São Paulo',
    3550308,
    11
);

INSERT INTO MC_CIDADE (
    cd_estado, 
    nm_cidade, 
    cd_ibge, 
    nr_ddd) VALUES (
    1,
    'Campinas',
    3509502,
    19
);

INSERT INTO MC_BAIRRO (
    cd_cidade, 
    nm_bairro, 
    nm_zona_bairro) VALUES (
    1,
    'Santa Monica',
    'Zona Leste'
);

INSERT INTO MC_BAIRRO (
    cd_cidade, 
    nm_bairro, 
    nm_zona_bairro) VALUES (
    2,
    'Barra',
    'Zona Sul'
);
    
INSERT INTO MC_BAIRRO (
    cd_cidade, 
    nm_bairro, 
    nm_zona_bairro) VALUES (
    3,
    'Santo Amaro',
    'Zona Sul'
);

INSERT INTO MC_BAIRRO (
    cd_cidade, 
    nm_bairro, 
    nm_zona_bairro) VALUES (
    4,
    'Jardim Dom Bosco',
    'Zona Norte'
);

INSERT INTO MC_LOGRADOURO (
    cd_bairro, 
    nm_logradouro, 
    nr_cep) VALUES (
    1,
    'R. Palmeira Branca',
    44082030
);

INSERT INTO MC_LOGRADOURO (
    cd_bairro, 
    nm_logradouro, 
    nr_cep) VALUES (
    1,
    'R. São Cosme e Damião',
    44077818
);

INSERT INTO MC_LOGRADOURO (
    cd_bairro, 
    nm_logradouro, 
    nr_cep) VALUES (
    2,
    'R. Dr. João Pondé',
    40140810
);

INSERT INTO MC_LOGRADOURO (
    cd_bairro, 
    nm_logradouro, 
    nr_cep) VALUES (
    2,
    'Av. Princesa Isabel',
    40150550
);

INSERT INTO MC_LOGRADOURO (
    cd_bairro, 
    nm_logradouro, 
    nr_cep) VALUES (
    3,
    'R. Promotor Gabriel Nettuzzi Perez',
    04751900
);

INSERT INTO MC_LOGRADOURO (
    cd_bairro, 
    nm_logradouro, 
    nr_cep) VALUES (
    3,
    'R. Gen. Roberto Alves de Carvalho Filho',
    04744000
);

INSERT INTO MC_LOGRADOURO (
    cd_bairro, 
    nm_logradouro, 
    nr_cep) VALUES (
    4,
    'R. Des. Campos Maia',
    13076630
);

INSERT INTO MC_LOGRADOURO (
    cd_bairro, 
    nm_logradouro, 
    nr_cep) VALUES (
    4,
    'R. Dona Elídia Ana de Campos',
    13076617
);

-- d)    Por fim, cadastre na tabela de ENDERECO FUNCIONARIO os endereços de 2 funcionários à sua escolha. Diversifique os dados escolhendo cidades e estados diferentes. Caso deseje, você poderá cadastrar mais de um endereço por funcionário.

INSERT INTO MC_END_FUNC (
    cd_funcionario,
    cd_logradouro,
    nr_end,
    ds_complemento_end,
    dt_inicio,
    dt_termino,
    st_end
) VALUES (
    2,
    2,
    897,
    'Apt 87',
    TO_DATE('04/07/2012', 'DD/MM/YYYY'),
    NULL,
    'A'
);

INSERT INTO MC_END_FUNC (
    cd_funcionario,
    cd_logradouro,
    nr_end,
    ds_complemento_end,
    dt_inicio,
    dt_termino,
    st_end
) VALUES (
    1,
    5,
    240,
    'Torre 1, Apt 320',
    TO_DATE('24/04/2011', 'DD/MM/YYYY'),
    NULL,
    'A'
);

-- e)    Cadastre no mínimo 2 CLIENTES PESSOAS FÍSICAS e 1 CLIENTES PESSOA JÚRIDICA e associe no mínimo 1 endereço para cada cliente. Utilize nomes significativos e relevantes.

INSERT INTO MC_CLIENTE (
    nm_cliente,
    qt_estrelas,
    vl_medio_compra,
    st_cliente,
    ds_email,
    nr_telefone,
    nm_login,
    ds_senha
) VALUES (
    'Sergio Carvalho da Silva',
    3,
    100,
    'A',
    'sergio35_carvalho@yahoo.com',
    '(11) 99876-3458',
    'Sergio_Carvalho',
    'Serginho123'
);

INSERT INTO MC_CLIENTE (
    nm_cliente,
    qt_estrelas,
    vl_medio_compra,
    st_cliente,
    ds_email,
    nr_telefone,
    nm_login,
    ds_senha
) VALUES (
    'Ana Teixeira',
    4,
    235,
    'A',
    'Anaa_teixe1ra@gmail.com',
    '(75) 96785-5384',
    'AnaTeixeira',
    'hfEROmffser#$%22'
);

INSERT INTO MC_CLIENTE (
    nm_cliente,
    qt_estrelas,
    vl_medio_compra,
    st_cliente,
    ds_email,
    nr_telefone,
    nm_login,
    ds_senha
) VALUES (
    'Mover Artigos Esportivos LTDA',
    5,
    600,
    'A',
    'financeiro@mover.com',
    '(19) 3550-5000',
    'FinanceiroMover',
    '@@Mover-45t67'
);

INSERT INTO MC_CLI_FISICA (
    nr_cliente,
    dt_nascimento,
    fl_sexo_biologico,
    ds_genero,
    nr_cpf
) VALUES (
    1,
    TO_DATE('20/04/1990', 'DD/MM/YYYY'),
    'M',
    'Masculino',
    '618.082.060-02'
);

INSERT INTO MC_CLI_FISICA (
    nr_cliente,
    dt_nascimento,
    fl_sexo_biologico,
    ds_genero,
    nr_cpf
) VALUES (
    2,
    TO_DATE('13/06/1994', 'DD/MM/YYYY'),
    'F',
    'Feminino',
    '784.033.730-90'
);
    
INSERT INTO MC_CLI_JURIDICA (
    nr_cliente,
    dt_fundacao,
    nr_cnpj,
    nr_inscr_est
) VALUES (
    3,
    TO_DATE('02/02/2009', 'DD/MM/YYYY'),
    '31.739.405/0001-70',
    '030.601.917.620'
); 
    
INSERT INTO MC_END_CLI (
    nr_cliente,
    cd_logradouro_cli,
    nr_end,
    ds_complemento_end,
    dt_inicio,
    dt_termino,
    st_end
) VALUES (
    1,
    6,
    289,
    'bl 1, apt 678',
    TO_DATE('18/01/2017', 'DD/MM/YYYY'),
    NULL,
    'A'
);

INSERT INTO MC_END_CLI (
    nr_cliente,
    cd_logradouro_cli,
    nr_end,
    ds_complemento_end,
    dt_inicio,
    dt_termino,
    st_end
) VALUES (
    2,
    1,
    4545,
    'bl 3, apt 100',
    TO_DATE('29/10/2013', 'DD/MM/YYYY'),
    NULL,
    'A'
);

INSERT INTO MC_END_CLI (
    nr_cliente,
    cd_logradouro_cli,
    nr_end,
    ds_complemento_end,
    dt_inicio,
    dt_termino,
    st_end
) VALUES (
    3,
    8,
    238,
    'lj 03',
    TO_DATE('11/11/2011', 'DD/MM/YYYY'),
    NULL,
    'A'
);

-- f)      Cadastre um novo cliente que já tenha um mesmo login já criado. (*Exiba a instrução SQL executada para realizar a tarefa e apresente o resultado dessa execução).  Foi possível incluir esse novo cliente?  Explique?

INSERT INTO MC_CLIENTE (
    nm_cliente,
    qt_estrelas,
    vl_medio_compra,
    st_cliente,
    ds_email,
    nr_telefone,
    nm_login,
    ds_senha
) VALUES (
    'Ana Teixeira De Souza',
    2,
    50,
    'A',
    'Ana_flavia44@hotmail.com',
    '(13) 94567-2975',
    'AnaTeixeira',
    'AninhaSouzasenha'
);

-- ERRO: restrição exclusiva (RM555705.UK_MC_CLIENTE_MM_LOGIN) violada
-- Não é possível adicionar um outro cliente com o mesmo login pois viola uma UNIQUE CONSTRAINT

-- g)    Cadastre as seguintes categorias para os produtos: Eletrônicos, Esporte e Lazer;  Pet Shop.

INSERT INTO MC_CATEGORIA_PROD (
    tp_categoria,
    ds_categoria,
    dt_inicio,
    dt_termino,
    st_categoria
) VALUES (
    'P',
    'Eletrônicos',
    TO_DATE('01/01/2010', 'DD/MM/YYYY'),
    NULL,
    'A'
);

INSERT INTO MC_CATEGORIA_PROD (
    tp_categoria,
    ds_categoria,
    dt_inicio,
    dt_termino,
    st_categoria
) VALUES (
    'P',
    'Esporte e Lazer',
    TO_DATE('01/01/2010', 'DD/MM/YYYY'),
    NULL,
    'A'
);

INSERT INTO MC_CATEGORIA_PROD (
    tp_categoria,
    ds_categoria,
    dt_inicio,
    dt_termino,
    st_categoria
) VALUES (
    'P',
    'Pet Shop',
    TO_DATE('01/01/2010', 'DD/MM/YYYY'),
    NULL,
    'A'
);

-- h)    Cadastre 5 produtos e associe as categorias adequadas ao produto.

INSERT INTO MC_PRODUTO (
    cd_categoria,
    nr_cd_barras_prod,
    ds_produto,
    vl_unitario,
    tp_embalagem,
    st_produto,
    vl_perc_lucro,
    ds_completa_prod
) VALUES (
    1,
    '275632201880',
    'MacBook Pro M2 2023',
    17000,
    'Caixa',
    'A',
    30,
    'Notebook MacBook Pro da Apple 2023 (Chip M2 Pro da Apple com CPU de 12 núcleos e GPU de 19 núcleos) Tela Liquid Retina XDR de 16 polegadas, 16GB Memória unificada, 512 GB SSD. Cinza-espacial'
);

INSERT INTO MC_PRODUTO (
    cd_categoria,
    nr_cd_barras_prod,
    ds_produto,
    vl_unitario,
    tp_embalagem,
    st_produto,
    vl_perc_lucro,
    ds_completa_prod
) VALUES (
    1,
    '256654937344',
    'Samsung Galaxy S24 Ultra',
    8000,
    'Caixa',
    'A',
    30,
    'Smartphone Samsung Galaxy S24 Ultra, Galaxy AI, Selfie de 12MP, Tela de 6.8" 1-120Hz, 512GB, 12GB RAM - Titânio Preto'
);

INSERT INTO MC_PRODUTO (
    cd_categoria,
    nr_cd_barras_prod,
    ds_produto,
    vl_unitario,
    tp_embalagem,
    st_produto,
    vl_perc_lucro,
    ds_completa_prod
) VALUES (
    2,
    '249394361555',
    'Luva de Boxe Fairtex',
    830,
    'Plástico',
    'A',
    25,
    'Luva de Muay Thai Boxe Fairtex Super Sparring BGV18 Microfibra'
);

INSERT INTO MC_PRODUTO (
    cd_categoria,
    nr_cd_barras_prod,
    ds_produto,
    vl_unitario,
    tp_embalagem,
    st_produto,
    vl_perc_lucro,
    ds_completa_prod
) VALUES (
    2,
    '204367588010',
    'Guarda Sol Ombrelone',
    550,
    'Caixa',
    'A',
    35,
    'Guarda Sol Ombrelone Articulado 3M Com Manivela Praia Jardim Piscina'
);

INSERT INTO MC_PRODUTO (
    cd_categoria,
    nr_cd_barras_prod,
    ds_produto,
    vl_unitario,
    tp_embalagem,
    st_produto,
    vl_perc_lucro,
    ds_completa_prod
) VALUES (
    3,
    '222198897808',
    'Arranhador de Canto Sofá',
    140,
    'Caixa',
    'A',
    30,
    'Arranhador para Gatos de canto Sofá - Kit 2un Carpete 15cm x 55cm Cor:Bege Castor'
);

-- i)      Cadastre duas categorias para os vídeos: Instalação do produto e Uso no cotidiano. Você é livre para cadastrar outras categorias, caso deseje.

INSERT INTO MC_CATEGORIA_PROD (
    tp_categoria,
    ds_categoria,
    dt_inicio,
    dt_termino,
    st_categoria
) VALUES (
    'V',
    'Instalação do Produto',
    TO_DATE('01/01/2010', 'DD/MM/YYYY'),
    NULL,
    'A'
);

INSERT INTO MC_CATEGORIA_PROD (
    tp_categoria,
    ds_categoria,
    dt_inicio,
    dt_termino,
    st_categoria
) VALUES (
    'V',
    'Uso no Cotidiano',
    TO_DATE('01/01/2010', 'DD/MM/YYYY'),
    NULL,
    'A'
);

-- j)      Cadastre 2 vídeos de produtos na tabela MC_SGV_PRODUTO_VIDEO e associe esses 2 vídeos em um único produto já cadastrado. Associe também as categorias adequadas ao vídeo.

DECLARE
  l_blob BLOB;
BEGIN
  DBMS_LOB.CREATETEMPORARY(l_blob, true);

  FOR i IN 1..10000 LOOP
    DBMS_LOB.WRITEAPPEND(l_blob, 1000, UTL_RAW.CAST_TO_RAW(RPAD('0', 1000, '0')));
  END LOOP;

  INSERT INTO MC_SGV_PRODUTO_VIDEO (
    cd_produto,
    nr_sequencia,
    cd_categoria,
    vd_produto,
    tp_video_prod,
    ds_path_video_prod,
    st_video_prod
  ) VALUES (
    4,
    1,
    5,
    l_blob,
    'Tutorial',
    'www.melhorescompras.com/Guarda-Sol-Ombrelone/video-1',
    'A'
  );

  COMMIT;
END;
/

DECLARE
  l_blob BLOB;
BEGIN
  DBMS_LOB.CREATETEMPORARY(l_blob, true);

  FOR i IN 1..10000 LOOP
    DBMS_LOB.WRITEAPPEND(l_blob, 1000, UTL_RAW.CAST_TO_RAW(RPAD('0', 1000, '0')));
  END LOOP;

  INSERT INTO MC_SGV_PRODUTO_VIDEO (
    cd_produto,
    nr_sequencia,
    cd_categoria,
    vd_produto,
    tp_video_prod,
    ds_path_video_prod,
    st_video_prod
  ) VALUES (
    4,
    2,
    5,
    l_blob,
    'Tutorial',
    'www.melhorescompras.com/Guarda-Sol-Ombrelone/video-2',
    'A'
  );

  COMMIT;
END;
/

-- k)     Por fim, cadastre 2 visualizações de vídeos de produtos na tabela MC_SGV_VISUALIZACAO_VIDEO e associe a um cliente a seu critério.

INSERT INTO MC_SGV_VISUALIZACAO_VIDEO (
    cd_visualizacao_video,
    nr_cliente,
    cd_produto,
    nr_sequencia,
    dt_visualizacao,
    nr_hora_visualizacao,
    nr_minuto_video,
    nr_segundo_video
) VALUES (
    1,
    2,
    4,
    1,
    TO_DATE('02/03/2024', 'DD/MM/YYYY'),
    22,
    32,
    22
);

INSERT INTO MC_SGV_VISUALIZACAO_VIDEO (
    cd_visualizacao_video,
    nr_cliente,
    cd_produto,
    nr_sequencia,
    dt_visualizacao,
    nr_hora_visualizacao,
    nr_minuto_video,
    nr_segundo_video
) VALUES (
    2,
    1,
    4,
    2,
    TO_DATE('23/01/2024', 'DD/MM/YYYY'),
    13,
    16,
    53
);


-- l)      Confirme todas as transações pendentes (muito importante).

COMMIT;

-- m)   Selecione um específico funcionário e atualize o Cargo e aplique 12% de aumento de salário.

UPDATE MC_FUNCIONARIO
    SET ds_cargo = 'Especialista Contábil',
    vl_salario = vl_salario * 1.12
    where cd_funcionario = 3;
    
-- n)    Atualize o nome de um departamento a sua escolha, utilizando como filtro o nome do departamento antes de ser atualizado.

UPDATE MC_DEPTO
    SET nm_depto = 'Customer Service'
    WHERE nm_depto = 'SAC';

-- o)    Atualize a data de nascimento de um cliente pessoa física. Defina a nova data como sendo 18/05/2002.

UPDATE MC_CLI_FISICA
    SET dt_nascimento = '18/05/2002'
    WHERE nr_cliente = 2;
    
-- p)    Desative um funcionário colocando o status como I(nativo) e também a data de desligamento como sendo a data de hoje (sysdate).

UPDATE MC_FUNCIONARIO
    SET st_func = 'I',
    dt_desligamento = sysdate
    WHERE cd_funcionario = 2;

-- q)    Selecione um endereço de cliente e coloque o status como I(nativo) e preencha a data de término como sendo a data limite de entrega do trabalho. Utilize a função to_date para registrar esse novo valor da data.

UPDATE MC_END_CLI
    SET st_end = 'I',
    dt_termino = TO_DATE('16/04/2024', 'DD/MM/YYYY') 
    WHERE nr_cliente = 3;
    
-- r)     Tente eliminar um estado que tenha uma cidade cadastrada. Isso foi possível? Justifique o motivo.

DELETE FROM MC_ESTADO
    WHERE cd_estado = 1;
    
--restrição de integridade (RM555705.FK_MC_CIDADE_ESTADO) violada - registro filho localizado
-- Não é possível eliminar o estado pois ele é referenciado como FK em uma outra tabela/entidade.

-- s)     Selecione um produto e tente atualizar o status do produto com o status X. Isso foi possível? Justifique o motivo.

UPDATE MC_PRODUTO
    SET st_produto = 'X'
    WHERE cd_produto = 1; 
    
-- restrição de verificação (RM555705.MC_PRODUTO_CK_ST_PROD) violada
-- Não é possível atualizar o status para X pois viola uma check  constraint que valida se o campo é A ou I

COMMIT
