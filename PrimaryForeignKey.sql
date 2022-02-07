select * from Cliente

alter Table dbo.Cliente alter Column Codigo Int NOT NULL /*para que a coluna seja uma primary key ela n�o pode receber nulos, para que possa fazer a indexa��o dos itens de maneira precisa*/

alter table Cliente add constraint pk_cliente primary key (Codigo)

insert Cliente values ('Ademir', 'J', getdate())
insert Cliente values ('Laura', 'F', getdate())
insert Cliente values ('Julia', 'F', getdate())
insert Cliente values ('Sandra', 'J', getdate())

/*para tornar mais din�mica a inser��o de dados na tabela com a chave prim�ria ativada, � necessario que a coluna "Codigo" seja uma coluna identity*/

insert Cliente values ('Alessandro', 'J', getdate())

/*gerando as primary keys das tabelas restantes*/

select * from Pedido

alter Table dbo.Pedido alter Column Codigo Int NOT NULL

alter table Pedido add constraint pk_pedido primary key (Codigo)

/*-----*/

select * from Produto

alter Table dbo.Produto alter Column Codigo Int NOT NULL

alter table Produto add constraint pk_produto primary key (Codigo)

/*-----*/

select * from PedidoItem

alter Table dbo.PedidoItem alter Column CodigoPedido Int NOT NULL

alter table PedidoItem add constraint fk_Pedido foreign key (CodigoPedido) references Pedido (Codigo)