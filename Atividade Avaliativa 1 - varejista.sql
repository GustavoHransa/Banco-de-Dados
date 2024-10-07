create database varejista ;
use varejista;

CREATE TABLE fornecedores (
  cod_forne CHAR(6) PRIMARY KEY,
  nome VARCHAR(50),
  cidade_sede VARCHAR(30),
  grupo_cod_fornecedor CHAR(6)
);

CREATE TABLE material (
  cod_material INT PRIMARY KEY,
  cod_fornecedor CHAR(6),
  nome VARCHAR(30),
  descricao TEXT,
  FOREIGN KEY (cod_fornecedor) REFERENCES fornecedores(cod_forne)
);
INSERT INTO fornecedores (cod_forne, nome, cidade_sede, grupo_cod_fornecedor)
VALUES
('ABC', 'ABC Materiais Eletricos', 'Vitoria', NULL),
('XYZ', 'XYZ Materiais de Escritorio', 'Rio de Janeiro', 'HiX'),
('Hidra', 'Hidra Materiais Hidraulicos', 'Sao Paulo', 'HiX'),
('HiX', 'HidraX Materiais ElÈtricos e Hidraulicos', 'Sao Paulo', NULL);

INSERT INTO material (cod_material, cod_fornecedor, nome, descricao)
VALUES
(123, 'ABC', 'Tomada eletrica 10A Nova', 'Tomada eletrica 10A padrao novo'),
(234, 'ABC', 'Disjuntor 25A', 'Disjuntor eletrico 25A'),
(345, 'XYZ', 'Resma Papel A4', 'Resma papel branco A4'),
(456, 'XYZ', 'Toner Imp HR5522', 'Toner impressora HR5522'),
(678, 'Hidra', 'Cano PVC 1/2', 'Cano PVC 1/2 pol'),
(679, 'Hidra', 'Cano PVC 3/4', 'Cano PVC 3/4 pol'),
(680, 'Hidra', 'Medidor hidr 1/2', 'Medidor hidraulico 1/2 pol'),
(681, 'Hidra', 'Joelho 1/2', 'Conector Joelho 1/2 pol'),
(682, 'Hidra', 'Junta 1/2', 'Cano PVC 1/2 pol'),
(1234, 'ABC', 'Tomada eletrica 20A Nova', 'Tomada eletrica 20A padrao novo'),
(2345, 'XYZ', 'Caneta Azul', 'Caneta esferografica azul'),
(4567, 'XYZ', 'Grapeador', 'Grapeador mesa pequeno'),
(4568, 'XYZ', 'Caneta Marca Texto Amarela', 'Caneta Marca Texto Amarela'),
(4569, 'XYZ', 'Lapis HB', 'Lapis Preto HB');

##Mostrar os materiais que o Fornecedor ABC possui;

SELECT * 
FROM material
WHERE cod_fornecedor = 'ABC';


##Mostrar os materiais que o Fornecedor XYZ possui;

SELECT * 
FROM material
WHERE cod_fornecedor = 'XYZ';


##Mostrar os materiais que o Fornecedor HIDRA possui;

SELECT * 
FROM material
WHERE cod_fornecedor = 'Hidra';






