CREATE TABLE CenarioCompra(
Id INT NOT NULL AUTO_INCREMENT,
ListaCompraConfigId INT NOT NULL,
Descricao VARCHAR(255) NOT NULL,
DtaSugestao DATETIME NOT NULL,
DtaFinalizacao DATETIME,
	CONSTRAINT pk_CenarioCompra PRIMARY KEY(Id)
);

INSERT INTO CenarioCompra(ListaCompraConfigId,Descricao,DtaSugestao,DtaFinalizacao) VALUES (2,'BEBIDAS','2020-08-06T08:09:09.987', NULL);
INSERT INTO CenarioCompra(ListaCompraConfigId,Descricao,DtaSugestao,DtaFinalizacao) VALUES (3,'ARROZ','2020-08-16T14:27:51.03', NULL);
INSERT INTO CenarioCompra(ListaCompraConfigId,Descricao,DtaSugestao,DtaFinalizacao) VALUES (10,'GERAL CHOCK','2019-07-31T16:31:19.36', NULL);
INSERT INTO CenarioCompra(ListaCompraConfigId,Descricao,DtaSugestao,DtaFinalizacao) VALUES (82,'SENDAS','2019-09-25T16:44:38.23', NULL);
INSERT INTO CenarioCompra(ListaCompraConfigId,Descricao,DtaSugestao,DtaFinalizacao) VALUES (227,'COMPRAS COSMETICOS','2019-11-08T15:15:16.913', NULL);

select * from CenarioCompra;
delete from CenarioCompra where id > 3;

update CenarioCompra set dtafinalizacao = null;