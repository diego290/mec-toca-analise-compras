CREATE TABLE CenarioCompraProduto(
Id INT NOT NULL AUTO_INCREMENT,
ListaCompraConfigId INT NOT NULL,
IdProduto INT NOT NULL,
Descricao VARCHAR(255) NOT NULL,
Embalagem VARCHAR(255) NOT NULL,
MedVendMes DOUBLE NOT NULL,
EstoqueDisp INT NOT NULL,
PendReceb INT NOT NULL,
PendExped INT NOT NULL,
DiasEstoque INT NOT NULL,
CustoMedio DOUBLE NOT NULL,
QtdUltCompra INT NOT NULL,
CustoUltCompra DOUBLE NOT NULL,
	CONSTRAINT pk_CenarioCompraProduto PRIMARY KEY(Id),
    CONSTRAINT fk_CenarioCompraProduto FOREIGN KEY(ListaCompraConfigId)
		REFERENCES CenarioCompra(Id)
);

select * from CenarioCompraProduto where ListaCompraConfigId = 2;
delete from CenarioCompraProduto where ListaCompraConfigId = 3;

INSERT INTO CenarioCompraProduto(ListaCompraConfigId, IdProduto, Descricao, Embalagem, MedVendMes, EstoqueDisp, PendReceb, 
PendExped, DiasEstoque, CustoMedio, QtdUltCompra, CustoUltCompra)
VALUES
(2, 45, 'Lápis', '1 UN', 9.66, 4, 0, 0, 13, 3.98, 20, 4.1),
(2, 122, 'Borracha', '6 FD', 1.49, 5, 0, 0, 4, 0.25, 20, 3.4),
(2, 324, 'Caneta Bic', '24 CX', 0.90, 9, 0, 2, 6, 0.15, 30, 5.5),
(2, 645, 'Agenda', '1 UN', 15.9, 12, 0, 4, 15, 7.96, 20, 4.0),
(2, 7897, 'Papel A4', '1 UN', 10.9, 20, 0, 0, 4, 6.54, 15, 3.5);

INSERT INTO CenarioCompraProduto(ListaCompraConfigId, IdProduto, Descricao, Embalagem, MedVendMes, EstoqueDisp, PendReceb, 
PendExped, DiasEstoque, CustoMedio, QtdUltCompra, CustoUltCompra)
VALUES
(3, 213, 'Caderno', '1 UN', 8.45, 6, 0, 0, 78, 4.78, 23, 4.8),
(3, 456, 'Estojo', '1 UN', 10.89, 10, 0, 0, 5, 8.89, 20, 4.8),
(3, 1223, 'Grafite', '5 CX', 4.98, 9, 0, 2, 6, 3.45, 100, 2.89);

INSERT INTO CenarioCompraProduto(ListaCompraConfigId, IdProduto, Descricao, Embalagem, MedVendMes, EstoqueDisp, PendReceb, 
PendExped, DiasEstoque, CustoMedio, QtdUltCompra, CustoUltCompra)
VALUES
(1,600545,'ALCOOL TUPI 70','1 UN', 5.66, 5, 0, 0, 11, 3.58, 10, 4.0 ),
(1,598123,'AMENDOIM ELMA CHIPS OVINHO 80G','1 UN', 9.66, 4, 0, 0, 13, 3.98, 20, 4.1 ),
(1,598128,'AMENDOIM ELMA CHIPS S/PELE 100G','1 UN', 10.89, 10, 0, 0, 5, 8.89, 20, 4.8 ),
(1,600548,'AMENDOIM YOKI 150G TIPO JAPONES','1 UN',  4.98, 9, 0, 2, 6, 3.45, 100, 2.89 ),
(1,600760,'ANA MARIA 80G BAUNILHA','1 UN', 8.45, 6, 0, 0, 78, 4.78, 23, 4.8 );

INSERT INTO CenarioCompraProduto(ListaCompraConfigId, IdProduto, Descricao, Embalagem, MedVendMes, EstoqueDisp, PendReceb, 
PendExped, DiasEstoque, CustoMedio, QtdUltCompra, CustoUltCompra)
VALUES
(2,600552,'BALA FINI 100G GELATINAS AMORA','1 UN',10.89, 10, 0, 0, 5, 8.89, 20, 4.8 ),
(2,598130,'BALA FINI 100G GELATINAS BEIJOS MORANGO','1 UN', 8.45, 6, 0, 0, 78, 4.78, 23, 4.8 ),
(2,600553,'BALA FINI 100G GELATINAS DENTADURAS','1 UN', 15.9, 12, 0, 4, 15, 7.96, 20, 4.0 ),
(2,600555,'BALA FINI 100G GELATINAS MINHOCAS CITRIC','1 UN',10.89, 10, 0, 0, 5, 8.89, 20, 4.8 ),
(2,600853,'CUP NOODLES NISSIN 68G BOLONHESA CREM','1 UN', 4.98, 9, 0, 2, 6, 3.45, 100, 2.89 ),
(2,600821,'DESODORANTE DOVE AER 100ML INVISIBLI DRY','1 UN', 8.45, 6, 0, 0, 78, 4.78, 23, 4.8 ),
(2,600820,'DESODORANTE REXONA AER 105ML MEN ACTIVE','1 UN', 9.66, 4, 0, 0, 13, 3.98, 20, 4.1 ),
(2,598390,'DORITOS ELMA CHIPS 55G','1 UN', 15.9, 12, 0, 4, 15, 7.96, 20, 4.0 ),
(2,597973,'DUNHILL BLUE BLEND BOX','1 UN', 8.45, 6, 0, 0, 78, 4.78, 23, 4.8 ),
(2,600829,'ENXAG BUCAL LISTERINE 236ML WHITEN','1 UN', 9.66, 4, 0, 0, 13, 3.98, 20, 4.1 ),
(2,600833,'ES.DEN.ORAL-B CLASSIC MACIA 40','1 UN', 15.9, 12, 0, 4, 15, 7.96, 20, 4.0 ),
(2,600663,'ESPUMA DE BARBEAR NIVEA 193G','1 UN', 8.45, 6, 0, 0, 78, 4.78, 23, 4.8),
(2,598585,'SORVETE M&M’S KIBON CORNETTO CARTUCHO 62G','1 UN', 9.66, 4, 0, 0, 13, 3.98, 20, 4.1 ),
(2,601310,'STIKSY ELMA CHIPS 100G','1 UN', 15.9, 12, 0, 4, 15, 7.96, 20, 4.0 ),
(2,601139,'SUCO DEL VALLE + 335ML MARACUJA','1 UN', 9.66, 4, 0, 0, 13, 3.98, 20, 4.1 ),
(2,599047,'MASSA PIPE BOLONHESA 310G','1 UN', 9.66, 4, 0, 0, 13, 3.98, 20, 4.1 ),
(2,599097,'MATTE LEAO LIMAO PET 450ML','1 UN', 8.45, 6, 0, 0, 78, 4.78, 23, 4.8 ),
(2,599098,'MATTE LEAO NATURAL PET 450ML','1 UN', 9.66, 4, 0, 0, 13, 3.98, 20, 4.1 ),
(2,601075,'MOLHO FUGINI 300G SCH 4 QJOS','1 UN', 8.45, 6, 0, 0, 78, 4.78, 23, 4.8 ),
(2,600811,'TRIDENT 8G TUTTI FRUTTI','1 UN', 9.66, 4, 0, 0, 13, 3.98, 20, 4.1 ),
(2,599449,'VINHO QPA VERDE BRANCO','1 UN', 8.45, 6, 0, 0, 78, 4.78, 23, 4.8 ),
(2,599453,'VINHO QPA VERDE ROSE','1 UN', 15.9, 12, 0, 4, 15, 7.96, 20, 4.0),
(2,599469,'VINHO SEMBLANTE CABERNET SAUVIGNON','1 UN', 9.66, 4, 0, 0, 13, 3.98, 20, 4.1 ),
(2,599479,'VINHO SEMBLANTE CARMENERE','1 UN', 8.45, 6, 0, 0, 78, 4.78, 23, 4.8 );


INSERT INTO CenarioCompraProduto(ListaCompraConfigId, IdProduto, Descricao, Embalagem, MedVendMes, EstoqueDisp, PendReceb, 
PendExped, DiasEstoque, CustoMedio, QtdUltCompra, CustoUltCompra)
VALUES
(3,600545,'ALCOOL TUPI 70','1 UN', 5.66, 5, 0, 0, 11, 3.58, 10, 4.0 ),
(3,598123,'AMENDOIM ELMA CHIPS OVINHO 80G','1 UN', 9.66, 4, 0, 0, 13, 3.98, 20, 4.1 ),
(3,598128,'AMENDOIM ELMA CHIPS S/PELE 100G','1 UN', 10.89, 10, 0, 0, 5, 8.89, 20, 4.8 ),
(3,600548,'AMENDOIM YOKI 150G TIPO JAPONES','1 UN',  4.98, 9, 0, 2, 6, 3.45, 100, 2.89 ),
(3,600760,'ANA MARIA 80G BAUNILHA','1 UN', 8.45, 6, 0, 0, 78, 4.78, 23, 4.8 ),
(3,600759,'ANA MARIA 80G CHOCOLATE','1 UN', 9.66, 4, 0, 0, 13, 3.98, 20, 4.1 ),
(3,600757,'ANA MARIA 80G GOTAS DE CHOC','1 UN', 10.89, 10, 0, 0, 5, 8.89, 20, 4.8 ),
(3,600662,'APARELHO PRESTOBARBA ULTRA GRIP MOVEL','1 UN', 9.66, 4, 0, 0, 13, 3.98, 20, 4.1 ),
(3,600552,'BALA FINI 100G GELATINAS AMORA','1 UN',10.89, 10, 0, 0, 5, 8.89, 20, 4.8 ),
(3,598130,'BALA FINI 100G GELATINAS BEIJOS MORANGO','1 UN', 8.45, 6, 0, 0, 78, 4.78, 23, 4.8 ),
(3,600553,'BALA FINI 100G GELATINAS DENTADURAS','1 UN', 15.9, 12, 0, 4, 15, 7.96, 20, 4.0 ),
(3,600555,'BALA FINI 100G GELATINAS MINHOCAS CITRIC','1 UN',10.89, 10, 0, 0, 5, 8.89, 20, 4.8 ),
(3,600853,'CUP NOODLES NISSIN 68G BOLONHESA CREM','1 UN', 4.98, 9, 0, 2, 6, 3.45, 100, 2.89 ),
(3,600821,'DESODORANTE DOVE AER 100ML INVISIBLI DRY','1 UN', 8.45, 6, 0, 0, 78, 4.78, 23, 4.8 ),
(3,600820,'DESODORANTE REXONA AER 105ML MEN ACTIVE','1 UN', 9.66, 4, 0, 0, 13, 3.98, 20, 4.1 ),
(3,598390,'DORITOS ELMA CHIPS 55G','1 UN', 15.9, 12, 0, 4, 15, 7.96, 20, 4.0 ),
(3,597973,'DUNHILL BLUE BLEND BOX','1 UN', 8.45, 6, 0, 0, 78, 4.78, 23, 4.8 ),
(3,600829,'ENXAG BUCAL LISTERINE 236ML WHITEN','1 UN', 9.66, 4, 0, 0, 13, 3.98, 20, 4.1 ),
(3,600833,'ES.DEN.ORAL-B CLASSIC MACIA 40','1 UN', 15.9, 12, 0, 4, 15, 7.96, 20, 4.0 ),
(3,600663,'ESPUMA DE BARBEAR NIVEA 193G','1 UN', 8.45, 6, 0, 0, 78, 4.78, 23, 4.8),
(3,598585,'SORVETE M&M’S KIBON CORNETTO CARTUCHO 62G','1 UN', 9.66, 4, 0, 0, 13, 3.98, 20, 4.1 ),
(3,601310,'STIKSY ELMA CHIPS 100G','1 UN', 15.9, 12, 0, 4, 15, 7.96, 20, 4.0 ),
(3,601139,'SUCO DEL VALLE + 335ML MARACUJA','1 UN', 9.66, 4, 0, 0, 13, 3.98, 20, 4.1 ),
(3,599047,'MASSA PIPE BOLONHESA 310G','1 UN', 9.66, 4, 0, 0, 13, 3.98, 20, 4.1 ),
(3,599097,'MATTE LEAO LIMAO PET 450ML','1 UN', 8.45, 6, 0, 0, 78, 4.78, 23, 4.8 ),
(3,599098,'MATTE LEAO NATURAL PET 450ML','1 UN', 9.66, 4, 0, 0, 13, 3.98, 20, 4.1 ),
(3,601075,'MOLHO FUGINI 300G SCH 4 QJOS','1 UN', 8.45, 6, 0, 0, 78, 4.78, 23, 4.8 ),
(3,600811,'TRIDENT 8G TUTTI FRUTTI','1 UN', 9.66, 4, 0, 0, 13, 3.98, 20, 4.1 ),
(3,599449,'VINHO QPA VERDE BRANCO','1 UN', 8.45, 6, 0, 0, 78, 4.78, 23, 4.8 ),
(3,599453,'VINHO QPA VERDE ROSE','1 UN', 15.9, 12, 0, 4, 15, 7.96, 20, 4.0),
(3,599469,'VINHO SEMBLANTE CABERNET SAUVIGNON','1 UN', 9.66, 4, 0, 0, 13, 3.98, 20, 4.1 ),
(3,599479,'VINHO SEMBLANTE CARMENERE','1 UN', 8.45, 6, 0, 0, 78, 4.78, 23, 4.8 );


