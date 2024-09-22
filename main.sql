-- ============ (Início) ============ 

create table Cliente

(Cod_Cliente text (3), 

 Nome_Cliente text (20), 

 Idade_Cliente integer, 

 UF_Cliente text(2));

insert into Cliente values ('001', 'Matilde Braga', 45, 'AM'); 

insert into Cliente values ('002', 'Alvares Rodrigues', 22, 'AM'); 

insert into Cliente values ('003', 'Augusta Nunes', 33, 'PA'); 

insert into Cliente values ('004', 'Igor Timóteo', 36, 'PA'); 

insert into Cliente values ('005', 'Silvio Azevedo', 32, 'PA'); 

insert into Cliente values ('006', 'Ingrid Costa', 45, 'RO'); 

insert into Cliente values ('007', 'Taina Figueiredo', 52, 'AC'); 

insert into Cliente values ('008', 'Rafael Lima', 31, 'AC'); 

insert into Cliente values ('009', 'Tânia Aguiar', 29, 'AC'); 

insert into Cliente values ('010', 'Odir Antunes', 26, 'AC');

-- SELECT '========= AT 1 - Criar uma consulta que mostra duas colunas da tabela Cliente'; 

-- .headers on

-- .mode column

-- Escrever aqui o seu comando, tirar o comentário do início desta linha e colocar ; no fim da linha.

-- .headers off

-- .mode list

-- SELECT Nome_Cliente, Idade_Cliente from cliente;

-- SELECT '========= AT 2 - Criar uma consulta que mostra duas colunas da tabela Cliente e use o operador >='; 

-- .headers on

-- .mode column

-- -- Escrever aqui o seu comando, tirar o comentário do início desta linha e colocar ; no fim da linha.

-- .headers off

-- .mode list

-- SELECT Nome_Cliente, Idade_Cliente from cliente where Idade_Cliente >= 33;

-- SELECT '========= AT 3 - Criar uma consulta que mostra três colunas da tabela Cliente e use o operador ='; 

-- .headers on

-- .mode column

-- -- Escrever aqui o seu comando, tirar o comentário do início desta linha e colocar ; no fim da linha.

-- .headers off

-- .mode list

-- SELECT Nome_Cliente, Idade_Cliente, UF_Cliente from cliente where Idade_Cliente = 32;

-- SELECT '========= AT 4 - Criar uma consulta que mostra três colunas da tabela Cliente e use o operador IN'; 

-- .headers on

-- .mode column

-- -- Escrever aqui o seu comando, tirar o comentário do início desta linha e colocar ; no fim da linha.

-- .headers off

-- .mode list

-- SELECT Nome_Cliente, Idade_Cliente, UF_Cliente from cliente where Idade_Cliente IN (33, 36, 45);

-- SELECT '========= AT 5 - Criar uma consulta que mostra todas as colunas da tabela Cliente e use o operador NOT BETWEEN'; 

-- .headers on

-- .mode column

-- SELECT * from cliente where Idade_Cliente not between 30 and 40;

-- .headers off

-- .mode list

-- SELECT '';

-- SELECT '========= AT 6 - Criar uma consulta que mostra todas as colunas da tabela Cliente e use os operadores > AND ='; 

-- .headers on

-- .mode column

-- SELECT * from cliente where Idade_Cliente > 33 and UF_Cliente = 'AM';

-- .headers off

-- .mode list

-- SELECT '';

-- SELECT '========= AT 7 - Criar uma consulta que mostra duas colunas da tabela Cliente e use os operadores = AND != '; 

-- .headers on

-- .mode column

-- SELECT Nome_Cliente, Idade_Cliente 
-- from cliente where Idade_Cliente = 45 and Nome_Cliente != 'Matilde Braga';

-- .headers off

-- .mode list

-- SELECT '';

-- SELECT '========= AT 8 - Criar uma consulta que mostra duas colunas da tabela Cliente e use os operadores = OR BETWEEN'; 

-- .headers on

-- .mode column

-- SELECT UF_Cliente, Idade_Cliente 
-- from cliente where UF_Cliente = 'PA' or Idade_Cliente between 35 and 50;

-- .headers off

-- .mode list

-- SELECT '';

-- SELECT '========= AT 9 - Criar uma consulta que mostra três colunas da tabela Cliente e ordene por 2 colunas' ; 

-- .headers on

-- .mode column

-- SELECT Nome_Cliente, Idade_Cliente, UF_Cliente from cliente order by idade_cliente, nome_cliente;

-- .headers off

-- .mode list

-- SELECT '';

-- SELECT '========= AT 10 - Criar uma consulta que executa um count para uma coluna da tabela Cliente'; 

-- .headers on

-- .mode column

-- SELECT count(UF_Cliente) from cliente;

-- .headers off

-- .mode list

-- SELECT '';

-- SELECT '========= AT 11 - Criar uma consulta que executa um sum para uma coluna da tabela Cliente'; 

-- .headers on

-- .mode column

-- SELECT sum(Idade_Cliente) from cliente;

-- .headers off

-- .mode list

-- SELECT '';

-- SELECT '========= AT 12 - Criar uma consulta que mostra duas colunas (1 - uma das colunas da tabela e 2 - uma coluna usando a função min) e faça o grupamento por uma coluna da tabela Cliente'; 

-- .headers on

-- .mode column

-- SELECT UF_Cliente, min(Idade_Cliente) from cliente group by UF_Cliente;

-- .headers off

-- .mode list

-- SELECT '';

-- SELECT '========= AT 13 - Criar uma consulta que mostra duas colunas (1 - uma das colunas da tabela e 2 - uma coluna usando a função avg) e faça o grupamento por uma coluna da tabela Cliente'; 

-- .headers on

-- .mode column

-- SELECT UF_Cliente, avg(Idade_Cliente) from cliente group by UF_Cliente;

-- .headers off

-- .mode list

-- SELECT '';

-- SELECT '========= AT 14 - Criar uma consulta que executa o distinct para duas colunas da tabela Cliente'; 

-- .headers on

-- .mode column

-- SELECT distinct UF_Cliente, Idade_Cliente from cliente;

-- .headers off

-- .mode list

-- SELECT '';

-- SELECT '========= AT 15 - Criar uma consulta que executa o distinct para uma coluna da tabela Cliente e ordene por esta mesma coluna'; 

-- .headers on

-- .mode column

-- SELECT distinct Idade_Cliente from cliente order by idade_cliente;

-- .headers off

-- .mode list

-- SELECT '';

-- SELECT '========= AT 16 - Criar uma consulta que executa o distinct para uma coluna da tabela Cliente e use o operador ='; 

-- .headers on

-- .mode column

-- -- Escrever aqui o seu comando, tirar o comentário do início desta linha e colocar ; no fim da linha.

-- .headers off

-- .mode list

-- SELECT '';

-- SELECT '========= AT 17 - Criar uma consulta que mostra duas colunas (1 - uma das colunas da tabela e 2 - uma coluna usando a função count), faça o grupamento por uma coluna da tabela Cliente e use o having com o operador <'; 

-- .headers on

-- .mode column

-- SELECT count(UF_Cliente), Idade_Cliente from cliente group by Idade_Cliente having Idade_Cliente < 33;

-- .headers off

-- .mode list

-- SELECT '';

-- SELECT '========= AT 18 - Criar uma consulta que mostra duas colunas 
-- (1 - uma das colunas da tabela e 2 - uma coluna usando a função min), 
-- faça o grupamento por uma coluna da tabela Cliente e use o having com o operador <='; 

-- .headers on

-- .mode column

-- SELECT Idade_Cliente, min(Cod_Cliente) from cliente group by Idade_Cliente having Idade_Cliente <= 30;

-- .headers off

-- .mode list

-- SELECT '';

-- SELECT '========= AT 19 - Criar uma consulta que mostra duas colunas 
-- (1 - uma das colunas da tabela e 2 - uma coluna usando a função sum), 
-- faça o grupamento por uma coluna da tabela Cliente e use o having com o operador >='; 

-- .headers on

-- .mode column

-- SELECT Cod_Cliente, sum(Idade_Cliente) from cliente group by Cod_Cliente having Idade_Cliente >= 35;

-- .headers off

-- .mode list

-- SELECT '';

SELECT '========= AT 20 - Criar uma consulta que mostra duas colunas 
(1 - uma das colunas da tabela e 2 - uma coluna usando a função avg), 
faça o grupamento por uma coluna da tabela Cliente e ordene por uma das colunas'; 

.headers on

.mode column

SELECT UF_Cliente, avg(Idade_Cliente) from cliente group by UF_Cliente order by uf_cliente;

-- ============ (Fim) ============