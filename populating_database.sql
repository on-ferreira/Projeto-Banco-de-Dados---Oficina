USE projeto_oficina;

-- Inserção de dados na tabela Cliente
INSERT INTO Cliente (Nome, Endereço, Telefone)
VALUES
    ('João da Silva', 'Rua das Flores, 123', '(11) 99999-1111'),
    ('Maria Souza', 'Avenida das Palmeiras, 456', '(22) 98888-2222'),
    ('Carlos Oliveira', 'Rua dos Pássaros, 789', '(33) 97777-3333'),
    ('Fernanda Santos', 'Travessa das Rosas, 543', '(44) 96666-4444'),
    ('Ana Rodrigues', 'Avenida do Sol, 789', '(55) 95555-5555'),
    ('Paulo Mendes', 'Rua dos Ipês, 101', '(66) 94444-6666'),
    ('Juliana Costa', 'Rua das Montanhas, 222', '(77) 93333-7777'),
    ('Ricardo Lima', 'Avenida da Lua, 333', '(88) 92222-8888'),
    ('Mariana Fernandes', 'Rua dos Ventos, 444', '(99) 91111-9999'),
    ('Pedro Gonçalves', 'Avenida dos Lagos, 555', '(00) 90000-0000'),
    ('Luiza Cardoso', 'Rua das Estrelas, 666', '(11) 98888-7777'),
    ('Gustavo Alves', 'Avenida dos Oceanos, 777', '(22) 97777-6666'),
    ('Camila Martins', 'Rua das Árvores, 888', '(33) 96666-5555'),
    ('Diego Oliveira', 'Travessa dos Rios, 999', '(44) 95555-4444'),
    ('Vanessa Santos', 'Avenida das Montanhas, 101', '(55) 94444-3333'),
    ('Thiago Rodrigues', 'Rua dos Campos, 222', '(66) 93333-2222'),
    ('Bianca Mendes', 'Avenida das Flores, 333', '(77) 92222-1111'),
    ('Roberto Costa', 'Rua dos Lagos, 444', '(88) 91111-8888'),
    ('Evelyn Fernandes', 'Travessa do Sol, 555', '(99) 90000-7777'),
    ('Rafael Gonçalves', 'Avenida das Estrelas, 666', '(00) 98888-4444');

-- Inserção de dados na tabela Veículo
INSERT INTO Veículo (Placa, Modelo, Ano)
VALUES
    ('ABC-1234', 'Onix', 2019),
    ('XYZ-5678', 'Gol', 2020),
    ('DEF-9876', 'HB20', 2018),
    ('MNO-5432', 'Civic', 2022),
    ('JKL-6543', 'Corolla', 2017),
    ('PQR-4321', 'Palio', 2021),
    ('STU-8765', 'Uno', 2020),
    ('VWX-2345', 'Celta', 2016),
    ('YZA-7654', 'Fiesta', 2019),
    ('BCE-3456', 'Fusca', 1980),
    ('FGH-6789', 'Ranger', 2015),
    ('IJM-9876', 'Hilux', 2021),
    ('NPR-3210', 'Tracker', 2022),
    ('QSU-5432', 'Tucson', 2018),
    ('TVW-1098', 'Siena', 2017),
    ('XYZ-8765', 'Tiguan', 2019),
    ('STU-6543', 'Creta', 2021),
    ('PQR-9876', 'Rav4', 2020),
    ('MNO-2345', 'Sandero', 2016),
    ('FGH-7654', 'HB20S', 2023);

-- Inserção de dados na tabela Serviço
INSERT INTO Serviço (Descrição, Preço)
VALUES
    ('Troca de óleo', 100.00),
    ('Revisão completa', 250.00),
    ('Alinhamento e balanceamento', 80.00),
    ('Troca de filtro de ar', 40.00),
    ('Troca de pastilhas de freio', 120.00),
    ('Higienização do ar condicionado', 60.00),
    ('Reparo no sistema de arrefecimento', 200.00),
    ('Diagnóstico de problemas mecânicos', 150.00),
    ('Troca de bateria', 100.00),
    ('Troca de correia dentada', 180.00),
    ('Balanceamento de rodas', 50.00),
    ('Troca de amortecedores', 300.00),
    ('Reparo no sistema elétrico', 180.00),
    ('Polimento e enceramento', 80.00),
    ('Serviço de funilaria', 400.00),
    ('Troca de pneus', 200.00),
    ('Serviço de pintura', 350.00),
    ('Troca de velas', 60.00),
    ('Reparo no sistema de direção', 180.00),
    ('Serviço de suspensão', 250.00);

-- Inserção de dados na tabela OrdemDeServiço com os Serviços realizados
INSERT INTO OrdemDeServiço (DataServico, ClienteID, VeículoID, Serviços, statusOrdem, TipoPagamento, Parcelamento)
VALUES
    ('2023-07-15', 1, 1, '1,2', 'Finalizada', 'Cartão', 'Parcelado'),
    ('2023-07-20', 2, 2, '2,3', 'Finalizada', 'Dinheiro', 'A vista'),
    ('2023-07-22', 3, 3, '1,3', 'Paga', 'Cartão', 'Parcelado'),
    ('2023-07-25', 4, 4, '4,5,6', 'Em andamento', 'Cartão', 'Parcelado'),
    ('2023-07-27', 5, 5, '5,6', 'Em andamento', 'Dinheiro', 'A vista'),
    ('2023-07-28', 6, 6, '1,2,3', 'Em andamento', 'Dois Cartões', 'Parcelado'),
    ('2023-07-29', 7, 7, '4,5', 'Finalizada', 'Cartão', 'Parcelado'),
    ('2023-07-30', 8, 8, '6,7', 'Paga', 'Dinheiro', 'A vista'),
    ('2023-07-31', 9, 9, '1,3,4', 'Em andamento', 'Dois Cartões', 'Parcelado'),
    ('2023-08-01', 10, 10, '2,4', 'Finalizada', 'Cartão', 'Parcelado'),
    ('2023-08-02', 11, 11, '5,6', 'Finalizada', 'Dinheiro', 'A vista'),
    ('2023-08-03', 12, 12, '1,2', 'Paga', 'Dois Cartões', 'Parcelado'),
    ('2023-08-04', 13, 13, '3,4', 'Em andamento', 'Dinheiro', 'A vista'),
    ('2023-08-05', 14, 14, '5,6', 'Em andamento', 'Dois Cartões', 'Parcelado'),
    ('2023-08-06', 15, 15, '7,8', 'Finalizada', 'Dinheiro', 'A vista'),
    ('2023-08-07', 16, 16, '3,4', 'Finalizada', 'Cartão', 'Parcelado'),
    ('2023-08-08', 17, 17, '1,2', 'Finalizada', 'Dinheiro', 'A vista'),
    ('2023-08-09', 18, 18, '7,8', 'Paga', 'Dois Cartões', 'Parcelado'),
    ('2023-08-10', 19, 19, '5,6', 'Paga', 'Dinheiro', 'A vista'),
    ('2023-08-11', 20, 20, '1,2,3', 'Em andamento', 'Dois Cartões', 'Parcelado');
