USE LOCADORA_M;
GO

INSERT INTO EMPRESAS(nomeEmpresa)
VALUES
('carros maneiros'),
('carrins')
GO

INSERT INTO MARCA(nomeMarca)
VALUES
('carroslegais'),
('carrobao')
GO

INSERT INTO MODELO(descricaoModelo, idMarca)
VALUES
('carro com 4 rodas top lindo demais compra pf', 1),
('carro com rodas funcionando!!!! inedito, comprem', 2)
GO

INSERT INTO VEICULOS(placaVeiculo, idModelo, idEmpresa)
VALUES
('4002892', 2, 1),
('6666666', 1, 2)
GO

INSERT INTO CLIENTE(nomeCliente,CPF)
VALUES
('roberto tonapista', '66787269412'),
('bruno vemdezap', '11978543267')
GO

INSERT INTO ALUGUEL(dataInicio, dataFim, )
VALUES
('21/09/21', '21/11/21'),
('21/09/21', '21/11/21')
GO




