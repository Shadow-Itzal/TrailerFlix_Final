-- CREAR Tabla Categorías
CREATE TABLE Categorias (
    categoriaID INT AUTO_INCREMENT PRIMARY KEY,
    categoria VARCHAR(50) NOT NULL
);

--  INSERTAR Tabla Categorías
INSERT INTO Categorias (categoria) VALUES
('Película'),
('Serie');