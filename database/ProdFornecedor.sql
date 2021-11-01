CREATE TABLE ProdFornecedor(
Id INT NOT NULL AUTO_INCREMENT,
ProdutoId INT NOT NULL,
PessoaId INT NOT NULL,
PadraoEmbCompra DOUBLE NOT NULL,
IndFornecPrincipal VARCHAR(1) NOT NULL,
	CONSTRAINT pk_ProdFornecedor PRIMARY KEY(Id),
    CONSTRAINT fk_ProdFornecedor_1 FOREIGN KEY(ProdutoId)
		REFERENCES Produto(Id),
	CONSTRAINT fk_ProdFornecedor_2 FOREIGN KEY(PessoaId)
		REFERENCES Pessoa(Id)
);

INSERT INTO ProdFornecedor(ProdutoId, PessoaId, PadraoEmbCompra, IndFornecPrincipal)
VALUES
(45, 1, 18, 'S'),
(45, 2, 10, 'N'),
(122, 3, 35, 'S'),
(122, 4, 35, 'N'),
(324, 4, 25, 'S'),
(324, 1, 10, 'N'),
(324, 2, 5, 'N'),
(645, 1, 40, 'S'),
(7897, 2, 22, 'S'),
(7897, 3, 12, 'N'),
(213, 4, 15, 'S'),
(213, 2, 5, 'N'),
(456, 4, 60, 'S'),
(456, 1, 20, 'N'),
(1223, 3, 80, 'S');

INSERT INTO ProdFornecedor(ProdutoId, PessoaId, PadraoEmbCompra, IndFornecPrincipal)
VALUES
(600545, 2, 18, 'S'),
(600545, 4, 12, 'N'),
(600545, 1, 20, 'N'),
(598123, 2, 10, 'S'),
(598123, 3, 30, 'N'),
(598128, 4, 22, 'S'),
(600548, 1, 21, 'S'),
(600548, 2, 18, 'N'),
(600760, 1, 15, 'S'),
(600760, 2, 22, 'N'),
(600760, 3, 25, 'N'),
(600759, 4, 30, 'S'),
(600759, 1, 20, 'N'),
(600757, 2, 10, 'S'),
(600757, 3, 15, 'N'),
(600662, 3, 18, 'S'),
(600552, 1, 16, 'S'),
(600552, 2, 25, 'N'),
(600552, 3, 20, 'N'),
(598130, 4, 15, 'S'),
(598130, 1, 30, 'N'),
(600553, 2, 22, 'S'),
(600553, 3, 20, 'N'),
(600555, 4, 21, 'S'),
(600555, 1, 22, 'N'),
(600555, 3, 19, 'N'),
(600853, 1, 20, 'S'),
(600853, 2, 30, 'N'),
(600821, 4, 20, 'S'),
(600820, 1, 20, 'S'),
(600820, 2, 20, 'N'),
(598390, 3, 22, 'S'),
(598390, 4, 25, 'N'),
(598390, 2, 20, 'N'),
(597973, 1, 15, 'S'),
(597973, 3, 18, 'N'),
(600829, 1, 20, 'S'),
(600829, 4, 20, 'N'),
(600829, 2, 22, 'N'),
(600833, 4, 30, 'S'),
(600833, 1, 35, 'N'),
(600663, 3, 40, 'S'),
(598585, 1, 22, 'S'),
(598585, 2, 30, 'N'),
(598585, 4, 30, 'N'),
(601310, 2, 10, 'S'),
(601310, 1, 10, 'N'),
(601139, 1, 20, 'S'),
(601139, 4, 22, 'N'),
(599047, 3, 20, 'S'),
(599047, 1, 20, 'N'),
(599047, 2, 20, 'N'),
(599097, 4, 30, 'S'),
(599097, 2, 30, 'N'),
(599098, 3, 30, 'S'),
(599098, 1, 30, 'N'),
(599098, 2, 30, 'N'),
(599098, 4, 30, 'N'),
(601075, 1, 20, 'S'),
(601075, 2, 20, 'N'),
(600811, 1, 20, 'S'),
(600811, 4, 20, 'N'),
(600811, 2, 20, 'N'),
(599449, 1, 10, 'S'),
(599449, 2, 10, 'N'),
(599453, 3, 20, 'S'),
(599453, 4, 20, 'N'),
(599469, 1, 15, 'S'),
(599479, 2, 20, 'S'),
(599479, 1, 20, 'N'),
(599479, 4, 20, 'N'),
(599479, 3, 20, 'N');