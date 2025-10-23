--a)    Crie uma consulta SQL por meio do comando SELECT que exiba informações das categorias de produto e respectivos produtos de cada categoria.  

SELECT
    cp.cd_categoria,
    cp.ds_categoria,
    p.cd_produto,
    p.ds_produto,
    p.vl_unitario,
    p.tp_embalagem,
    p.vl_perc_lucro
FROM MC_CATEGORIA_PROD cp
    LEFT JOIN MC_PRODUTO p ON cp.cd_categoria = p.cd_categoria
ORDER BY cp.ds_categoria ASC, p.ds_produto ASC;

--b)    Crie uma instrução SQL que exiba os dados dos clientes pessoas físicas. 

SELECT
    c.nr_cliente,
    c.nm_cliente,
    c.ds_email,
    c.nr_telefone,
    c.nm_login,
    pf.dt_nascimento,
    TO_CHAR(pf.dt_nascimento, 'DAY') AS dia_nascimento,
    TRUNC(MONTHS_BETWEEN(SYSDATE, pf.dt_nascimento) / 12) AS anos_de_vida,
    pf.fl_sexo_biologico,
    pf.nr_cpf
FROM MC_CLIENTE c
    JOIN MC_CLI_FISICA pf on pf.nr_cliente = c.nr_cliente;
    
-- c)     Exiba as seguintes informações da tabela de visualização dos vídeos dos produtos: código do produto, nome do produto, data e hora de visualização do produto

SELECT
    vv.cd_produto,
    p.ds_produto,
    vv.dt_visualizacao,
    vv.nr_hora_visualizacao
FROM MC_SGV_VISUALIZACAO_VIDEO vv
    LEFT JOIN MC_PRODUTO P on P.cd_produto = vv.cd_produto
ORDER BY vv.dt_visualizacao desc, vv.nr_hora_visualizacao DESC;
