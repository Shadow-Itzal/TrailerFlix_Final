-- CREAR Tabla Tags
CREATE TABLE Tags (
    tagID INT AUTO_INCREMENT PRIMARY KEY,
    tag VARCHAR(50) NOT NULL
);


-- INSERTAR Tabla Tags
INSERT INTO Tags (tag) VALUES
('acción'), -- 1
('animación'),  -- 2
('aventura'),  -- 3
('ciencia ficción'),  -- 4
('comedia'), -- 5
('crimen'),  -- 6
('drama'),  -- 7
('familia'),  -- 8
('fantasía'),  -- 9
('ficción'),  -- 10
('futurista'),  -- 11
('historia'),  -- 12
('intriga'),  -- 13
('misterio'),  -- 14
('musical'),  -- 15
('música'),  -- 16
('romance'),  -- 17
('sci-fi'),  -- 18
('suceso real'),  -- 19
('sucesos'),  -- 20
('suspenso'),  -- 21
('tecnología'),  -- 22
('terror'),  -- 23
('western');  -- 24