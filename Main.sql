select * from Cliente

insert into Cliente (Codigo, Nome, TipoPessoa) values (1, 'Thiago', 'F');
insert into Cliente values (2, 'Augusto', 'F'); /*Quando n�o se declara as colunas os valores s�o inseridos nelas na ordem em que est�o organizadas na tabela*/
insert into Cliente (Codigo, Nome, TipoPessoa) values (3, 'Samara', 'J');
insert into Cliente values (2, 'Eduarda', 'F');

select * from Produto

insert Produto values (1, 'Caneta', 'Caneta preta', 1.50)
insert Produto values (2, 'Caderno', 'Caderno 10 mat�rias', 25.50)

select * from Pedido

insert Pedido values (1, getdate(), 0, 3, 7)

select * from PedidoItem

insert PedidoItem values (1, 2, 25.50, 1)

select isnull(DataCriacao, getdate()), * from Cliente /*o comnado insull recebe um primeiro par�metro e estabele uma condi��o, onde se a coluna for nula ele retorna o seu segundo par�metro*/

select *, 
	case 
		when TipoPessoa = 'J' then 'Jur�dica'
		when TipoPessoa = 'F' then 'F�sica' 
		else 'Pessoa indefinida'
		end
from Cliente

/*Comando UPDATE*/

update Cliente
set Codigo = 4
where Nome = 'Eduarda' /*update sem o where far� com que todo o BD seja atualizado*/

/*Comando DELTE*/

delete from Cliente
where Codigo in(3, 4) /*sem o where toda a tabela seria exclu�da*/