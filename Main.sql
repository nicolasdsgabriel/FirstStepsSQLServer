select * from Cliente

insert into Cliente (Codigo, Nome, TipoPessoa) values (1, 'Thiago', 'F');
insert into Cliente values (2, 'Augusto', 'F'); /*Quando não se declara as colunas os valores são inseridos nelas na ordem em que estão organizadas na tabela*/
insert into Cliente (Codigo, Nome, TipoPessoa) values (3, 'Samara', 'J');
insert into Cliente values (2, 'Eduarda', 'F');

select * from Produto

insert Produto values (1, 'Caneta', 'Caneta preta', 1.50)
insert Produto values (2, 'Caderno', 'Caderno 10 matérias', 25.50)

select * from Pedido

insert Pedido values (1, getdate(), 0, 3, 7)

select * from PedidoItem

insert PedidoItem values (1, 2, 25.50, 1)

select isnull(DataCriacao, getdate()), * from Cliente /*o comnado insull recebe um primeiro parâmetro e estabele uma condição, onde se a coluna for nula ele retorna o seu segundo parâmetro*/

select *, 
	case 
		when TipoPessoa = 'J' then 'Jurídica'
		when TipoPessoa = 'F' then 'Física' 
		else 'Pessoa indefinida'
		end
from Cliente

/*Comando UPDATE*/

update Cliente
set Codigo = 4
where Nome = 'Eduarda' /*update sem o where fará com que todo o BD seja atualizado*/

/*Comando DELTE*/

delete from Cliente
where Codigo in(3, 4) /*sem o where toda a tabela seria excluída*/