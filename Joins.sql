select * from Cliente
select * from Pedido
select * from PedidoItem
select * from PedidoItemLog
select * from Produto
select * from Status
select * from StatusPedidoItem

insert PedidoItemLog (CodigoPedido, CodigoProduto, CodigoStatusPedidoItem, DataMovimento)
select CodigoPedido, CodigoProduto, 1, getdate()
from PedidoItem

/*JOINS*/

select * 
from Cliente cli
inner join Pedido ped --INNER JOIN: Retorna linhas quando houver pelo menos uma correspondência em ambas as tabelas
on cli.Codigo = ped.CodigoCliente

---------------

select cli.Nome,
	   ped.TotalPedido,
	   case
			when cli.TipoPessoa = 'F' then 'Física'
			else 'Jurídica'
		end TipoPessoa --Apelido da coluna
from Cliente cli
left join Pedido ped --LEFT JOIN: Retorna todas as linhas da tabela à esquerda, mesmo se não houver nenhuma correspondência na tabela à direita
on cli.Codigo = ped.CodigoCliente
and ped.TotalPedido > 10

---------------

--select sum(Preco * QUantidade) --SUM soma todas a linhas
--select avg(Preco) --Faz uma média do preço
--select count(*) --Conta a quantidade de linhas que existe para esse select
select t4.Codigo,
	   t4.Descricao,
	   sum(t1.Preco * t1.QUantidade)
from PedidoItem t1
inner join PedidoItemLog t2
on t1.CodigoPedido = t2.CodigoPedido
and t1.CodigoProduto = t2.CodigoProduto
inner join StatusPedidoItem t3
on t3.Codigo = t2.CodigoStatusPedidoItem
inner join Produto t4
on t4.Codigo = t2.CodigoProduto

group by t4.Codigo, t4.Descricao --GROUP BY = agrupa por 
order by --OERDER BY = ordena por, por default ele ordena em forma crescente quando, para ordenar em ordem decrescente basta colocar 'desc' a frente




