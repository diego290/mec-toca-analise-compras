CREATE TABLE Operacao(
Id INT NOT NULL AUTO_INCREMENT,
Descricao VARCHAR(255) NOT NULL,
	CONSTRAINT pk_Operacao PRIMARY KEY(Id)
);

INSERT INTO Operacao(Descricao)
VALUES
('COMPRA'),
('VENDA');

SELECT * FROM Operacao;