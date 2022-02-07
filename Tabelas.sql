create table Cliente
(
	Codigo int not null,
	Nome varchar(50),
	TipoPessoa char(1)
)

create table Pedido
(
	Codigo int,
	DataSolicitacao datetime,
	FlagPago bit,
	TotalPedido float,
	CodigoCliente int
)

create table PedidoItem
(
	CodigoPedido int,
	CodigoProduto int, 
	Preco float,
	QUantidade int 

)

create table Produto
(
	Codigo int,
	Nome varchar(50),
	Descricao varchar(200),
	Preco float
)

create table PedidoItemLog
(
	CodigoPedido int not null,
	CodigoProduto int not null,
	CodigoStatusPedidoItem int not null,
	DataMovimento datetime not null
)

create table Status 
(
	Codigo int not null,
	Descricao varchar(50) not null
)

create table StatusPedidoItem
(
	Codigo int not null,
	Descricao varchar(50)
)
