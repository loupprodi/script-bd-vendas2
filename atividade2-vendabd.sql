--1.	Mostre todos os clientes que possuam a segunda letra do nome igual a A.
--2.	Todos os clientes que não possuem e-mail da UOL.
--3.	Mostre todos os pedidos entre as datas de 11 dias atrás até o dia de ontem.
--4.	Selecione todos os produtos fornecidos onde a quantidade fornecida esteja entre 5 e 10 itens e o produto seja caneta.
--5.	Selecione todos os clientes que começam com a letra R e a próxima letra não seja a letra A.
--6.	Selecione os itens de compra da empresa cuja razão social chama-se “BlaBla Ltda” e a condição de pagamento foi realizada com pagamento em cheque, deve-se acrescentar um campo a mais na consulta que tem o valor dos itens da compra com um desconto de R$0,10 e esse novo campo deve-se chamar desconto.
--7.	Mostre todos os clientes que o nome não começa com letras que vai do A até o R.
--8.	Todos os clientes com e-mail válido (lógica: tenha pelo menos um caracter antes do arroba, tem pelo menos um caracter de A a Z após o arroba, tem um ponto e pelo menos um caracter após o ponto.
--9.	Qual marca não possui produto cadastrado.
--10.	Quais os produtos não comprados por clientes.
--11.	Mostre o nome do produto junto com o nome de sua marca
--12.	Mostre todos os clientes que não possuem endereço cadastrado.
--13.	Todos os vendedores que possuem seu nome com mais de 5(cinco) caracteres
--14.	Mostre a quantidade de pedidos realizados por cada cliente, cuja condição de pagamento seja em dinheiro.
--15.	Mostre quanto o cliente edson gastou comprando caneta da marca bic.
--16.	Quantas vendas cada vendedor realizou?
--17.	Mostre o valor total vendido separado por condição de pagamento.
--18.	Quais as marcas de produtos não fornecidas pelos fornecedores cadastrados.
--19.	Quais os produtos que foram comprados por clientes e fornecedores
--20.	Quais os produtos que foram comprados por clientes e não foram comprados por fornecedores.
--21.	Todas as compras realizadas no mês de abril de 2020.
--22.	Quanto cada cliente gastou por pedido.
--23.	Quantos produtos a empresa possui atualmente em estoque, para casos de estoque negativo deve ser mostrado o valor 0(zero).

--1.	Mostre todos os clientes que possuam a segunda letra do nome igual a A. 
select*
from Cliente
Where nome like '_a%'

--2.	Todos os clientes que não possuem e-mail da UOL.

select*
from Cliente
where email not like '%uol%'

--3.	Mostre todos os pedidos entre as datas de 11 dias atrás até o dia de ontem.



