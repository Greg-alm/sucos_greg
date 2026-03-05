

#Uso do DISTINCT
select * from tabela_de_produtos;

SELECT DISTINCT EMBALAGEM, SABOR FROM tabela_de_produtos;

SELECT DISTINCT EMBALAGEM, TAMANHO, SABOR FROM TABELA_DE_PRODUTOS
WHERE embalagem = 'PET';

# Quais os bairros da cidade do Rio de Janeiro 
# que possuem clientes?
SELECT DISTINCT BAIRRO, CIDADE FROM tabela_de_clientes 
WHERE cidade = 'Rio de Janeiro'; 

#Uso do LIMIT
SELECT * FROM tabela_de_produtos LIMIT 6;

SELECT * FROM TABELA_DE_PRODUTOS LIMIT 3,5;

# Deseja-se obter as 10 primeiras 
-- vendas do dia 2017-01-01
SELECT * FROM notas_fiscais WHERE data_venda = '2017-01-01'
LIMIT 10;

#Uso do ORDER BY

select * from tabela_de_produtos;
select * from tabela_de_produtos ORDER BY NOME_DO_PRODUTO;
select * from tabela_de_produtos ORDER BY PRECO_DE_LISTA;

select * from tabela_de_produtos
ORDER BY sabor, preco_de_lista;

#Teste com DESC
SELECT sabor, preco_de_lista FROM
tabela_de_produtos ORDER BY preco_de_lista DESC;

SELECT sabor, preco_de_lista FROM
tabela_de_produtos ORDER BY preco_de_lista ASC;

#Qual (ou quais) foi (foram) a(s) maior(es) venda(s)
-- do produto 'Linha Refrescante - 1 Litro - Morango/Limão
-- em quantidade e preço?
SELECT * FROM tabela_de_produtos 
where nome_do_produto 
= 'Linha Refrescante - 1 Litro - Morango/Limão';

SELECT DISTINCT * FROM itens_notas_fiscais 
WHERE CODIGO_DO_PRODUTO = '1101035'
ORDER BY preco DESC, quantidade DESC;

select distinct embalagem, tamanho
from tabela_de_produtos;

select distinct embalagem, tamanho
from tabela_de_produtos where sabor ='laranja';

select distinct embalagem, tamanho,sabor, preco_de_lista
from tabela_de_produtos where sabor ='laranja';

select distinct bairro, estado, cidade
from tabela_de_clientes
where cidade = 'Rio de Janeiro';
select * from tabela_de_produtos limit 2;

# OBTENHA AS 10 PRIMEIRAS VENDAS
# DO DIA 01/01/2017

SELECT * FROM notas_fiscais
where data_venda = '2017-01-01' limit 10;

select sabor, embalagem from tabela_de_produtos;
select*from tabela_de_produtos order by preco_de_lista, embalagem;

select * from tabela_de_produtos order by preco_de_lista desc;

#qual ou quais foram as maiores vendas 
#do produto "linha refrescante - 1 litro - morango/limao"
#em quantidade e preco?

select * from tabela_de_produtos where nome_do_produto = 'Linha Refrescante - 1 litro - Morango/Limao';

select * from itens_notas_fiscais
where codigo_do_produto = '1101035'
order by quantidade desc, preco desc, preco desc limit 6;

#agrupando os resultados (group by)

select estado, sum(limite_de_credito) as preco_total
from tabela_de_clientes group by estado;