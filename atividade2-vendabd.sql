--1.	Mostre todos os clientes que possuam a segunda letra do nome igual a A.
--2.	Todos os clientes que n�o possuem e-mail da UOL.
--3.	Mostre todos os pedidos entre as datas de 11 dias atr�s at� o dia de ontem.
--4.	Selecione todos os produtos fornecidos onde a quantidade fornecida esteja entre 5 e 10 itens e o produto seja caneta.
--5.	Selecione todos os clientes que come�am com a letra R e a pr�xima letra n�o seja a letra A.
--6.	Selecione os itens de compra da empresa cuja raz�o social chama-se �BlaBla Ltda� e a condi��o de pagamento foi realizada com pagamento em cheque, deve-se acrescentar um campo a mais na consulta que tem o valor dos itens da compra com um desconto de R$0,10 e esse novo campo deve-se chamar desconto.
--7.	Mostre todos os clientes que o nome n�o come�a com letras que vai do A at� o R.
--8.	Todos os clientes com e-mail v�lido (l�gica: tenha pelo menos um caracter antes do arroba, tem pelo menos um caracter de A a Z ap�s o arroba, tem um ponto e pelo menos um caracter ap�s o ponto.
--9.	Qual marca n�o possui produto cadastrado.
--10.	Quais os produtos n�o comprados por clientes.
--11.	Mostre o nome do produto junto com o nome de sua marca
--12.	Mostre todos os clientes que n�o possuem endere�o cadastrado.
--13.	Todos os vendedores que possuem seu nome com mais de 5(cinco) caracteres
--14.	Mostre a quantidade de pedidos realizados por cada cliente, cuja condi��o de pagamento seja em dinheiro.
--15.	Mostre quanto o cliente edson gastou comprando caneta da marca bic.
--16.	Quantas vendas cada vendedor realizou?
--17.	Mostre o valor total vendido separado por condi��o de pagamento.
--18.	Quais as marcas de produtos n�o fornecidas pelos fornecedores cadastrados.
--19.	Quais os produtos que foram comprados por clientes e fornecedores
--20.	Quais os produtos que foram comprados por clientes e n�o foram comprados por fornecedores.
--21.	Todas as compras realizadas no m�s de abril de 2020.
--22.	Quanto cada cliente gastou por pedido.
--23.	Quantos produtos a empresa possui atualmente em estoque, para casos de estoque negativo deve ser mostrado o valor 0(zero).

--1.	Mostre todos os clientes que possuam a segunda letra do nome igual a A. 
select*
from Cliente
Where nome like '_a%'

--2.	Todos os clientes que n�o possuem e-mail da UOL.

select*
from Cliente
where email not like '%uol%'

--3.	Mostre todos os pedidos entre as datas de 11 dias atr�s at� o dia de ontem.



