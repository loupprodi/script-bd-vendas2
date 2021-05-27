--DML (select)

select DISTINCT Cliente.* 
from Cliente inner JOIN Pedido on Cliente.cod_cliente = Pedido.cod_cliente

select * from Cliente
select * from Pedido

-- 4 tipos de join
-- inner join
-- left join
-- right join
-- full join

--Quem são os clientes que NÃO fizeram pedidos?
SELECT *
FROM Pedido P RIGHT JOIN Cliente C ON C.cod_cliente = P.cod_cliente
WHERE P.cod_pedido IS NULL

SELECT *
FROM Pedido P FULL JOIN Cliente C ON C.cod_cliente = P.cod_cliente
WHERE P.cod_pedido IS NULL

--Teoria dos conjuntos
--Quem são os clientes que NÃO fizeram pedidos?
-- A - B

select Cliente.*
from Cliente
EXCEPT
select Cliente.* ------TABELA.COLUNA
from Cliente inner join Pedido on Cliente.cod_cliente = pedido.cod_cliente

-- A U B
select * from Cliente
where cidade in ('Sorocaba', 'Votorantim')
UNION ALL
select * from Cliente
where cidade in ('Sorocaba', 'São Roque')

--Mostre o nome dos clientes, vendedores e fornecedores
select nome, 'Cliente' as tipo 
from Cliente
union
select nome, 'Vendedor' as tipo
from Vendedor
union
select nome, 'Fornecedor' as tipo
from Fornecedor

-- intersecção

select * from Cliente
where cidade in ('Sorocaba', 'Votorantim')
INTERSECT
select * from Cliente
where cidade in ('Sorocaba', 'São Roque')

-- Sub-select 

select *
from Cliente inner JOIN 
(
	select Pedido.*, Vendedor.nome, Vendedor.telefone 
	from Pedido inner join Vendedor on Pedido.cod_vendedor = Vendedor.cod_vendedor
) tabela on Cliente.cod_cliente = tabela.cod_cliente

--Quem são os clientes que NÃO fizeram pedidos?
select *
from Cliente
where cod_cliente not IN
(
	select Cliente.cod_cliente
	from Cliente inner join Pedido on Cliente.cod_cliente = Pedido.cod_cliente
)

select *
from Cliente c
where not EXISTS
(
	select *
	from Cliente inner join Pedido on Cliente.cod_cliente = Pedido.cod_cliente
	where c.cod_cliente = Cliente.cod_cliente
)

-- Curingas do Like
	-- % qualquer coisa
	-- _ qualquer letra
	-- [] conjunto
	-- ^ negação 

select *
from Cliente
where nome like 'Edson%'

SELECT *
from Cliente
where nome like 'e_s_n%'

select * 
from Cliente
where nome LIKE '[^a-f]%'

select * 
from Cliente
where telefone not like '([0-9][0-9])[0-9][0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]'

--Mostre todos os clientes que estão com o e-mail inválido
select * 
from Cliente
where email not like '_%@_%._%'
or email is null

--------------------------------------------
--Trabalhando com datas --date | datetime | time
--format
select FORMAT(data, 'dd/mm/yy') as data
from Pedido

--getdate
select getdate()
--year | month | day
select data, YEAR(data) as ano, 
			 MONTH(data) as mes,
			 DAY(data) as dia,
cast(DAY(data) as VARCHAR) + '/'+cast(MONTH(data) as VARCHAR)+ '/'+ cast(YEAR(data) as varchar)
from Pedido
--datediff
select DATEDIFF(MINUTE, '1982-11-30', getdate())
from Pedido
--datepart
select DATEPART(WEEKDAY,getdate())

--Trabalhando com String
--cast
--substring
select SUBSTRING(nome, 3, 5), nome
from Cliente
--Replace
select telefone, REPLACE(REPLACE(REPLACE(telefone, '(', ''), ')', ''), '-', '')
from Cliente
--rtrim | ltrim
select RTRIM(LTRIM('  Edson    ')) teste, '  Edson    '

--lower | upper
select LOWER(nome), upper(email)
from Cliente
--charindex
--len
select nome, CHARINDEX(' ', nome),
SUBSTRING(nome, 1, CHARINDEX(' ', nome)) as primeiro_nome,
SUBSTRING(nome, CHARINDEX(' ', nome), len(nome)) as sobrenome
from cliente
--reverse
select nome, REVERSE(nome)
from Cliente

select nome,
SUBSTRING(nome, 1, CHARINDEX(' ', nome)) as primeiro_nome,
reverse(SUBSTRING(Reverse(nome), 1, CHARINDEX(' ', Reverse(nome)))) as ultimo_nome,
SUBSTRING(nome, 1, CHARINDEX(' ', nome)-1) 
+'.'+
ltrim(reverse(SUBSTRING(Reverse(nome), 1, CHARINDEX(' ', Reverse(nome)))))
+'@uniso.br' as email_institucional
from Cliente

--edson martin feitosa
--edson.feitosa@uniso.br