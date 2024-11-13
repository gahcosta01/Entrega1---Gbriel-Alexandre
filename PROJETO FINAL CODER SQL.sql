CREATE DATABASE VendasCarrosLuxo;
USE VendasCarrosLuxo;
CREATE TABLE Marcas (
ID_Marca INT PRIMARY KEY,
Nome_Marca VARCHAR(50) NOT NULL
);
CREATE TABLE Vendedores (
ID_Vendedor INT PRIMARY KEY,
Nome_Vendedor VARCHAR(100) NOT NULL
);
CREATE TABLE Produtos (
ID_Produto INT PRIMARY KEY,
Nome_Produto VARCHAR(100) NOT NULL,
Cor VARCHAR(50),
Modelo VARCHAR(50),
Marca_ID INT,
FOREIGN KEY (Marca_ID) REFERENCES Marcas(ID_Marca)
);
CREATE TABLE Vendas (
ID_Venda INT PRIMARY KEY,
Data_Venda DATE,
Produto_ID INT,
Vendedor_ID INT,
Quantidade INT,
Valor_Total DECIMAL(10, 2),
FOREIGN KEY (Produto_ID) REFERENCES Produtos(ID_Produto),
FOREIGN KEY (Vendedor_ID) REFERENCES Vendedores(ID_Vendedor)
);

SELECT * FROM Vendas;