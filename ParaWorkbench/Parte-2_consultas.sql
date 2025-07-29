-- Parte 2: Consultas SQL  (YO LO HICE PARA WORKBENCH y creo hay que hacerlo para el otro formato 😢)

-- Deberán desarrollar y ejecutar las siguientes consultas SQL:

-- 1. Obtener una lista de películas por género (por ejemplo: **"Acción"**, **"Terror"**, **"Suspenso"**).

-- Muestra: 60    Alien:Covenant   accion

SELECT 
    contenidos.contenidoID,
    contenidos.titulo AS Película,
    generos.genero AS Género
FROM 
    contenidos
JOIN 
    generos ON contenidos.generoID = generos.generoID
WHERE 
    generos.genero IN ('Acción', 'Terror', 'Suspenso')
ORDER BY 
    generos.genero, contenidos.titulo;

---------------------------------------------------------------

-- 2. Obtener películas con los tags **"Aventura" y "Ciencia Ficción"**, o **"Aventura" y "Fantasía"**.

-- Muestra: 9  Juego de Tronos 

SELECT 
    contenidos.contenidoID,
    contenidos.titulo AS Película
FROM 
    contenidos
JOIN 
    contenido_tags ON contenidos.contenidoID = contenido_tags.contenidoID
JOIN 
    tags ON contenido_tags.tagID = tags.tagID
WHERE 
    tags.tag IN ('Aventura', 'Ciencia Ficción', 'Fantasía')
GROUP BY 
    contenidos.contenidoID, contenidos.titulo
HAVING -- condiciono
    -- Aventura + Ciencia Ficción
    SUM(tags.tag = 'Aventura') > 0 AND (
        SUM(tags.tag = 'Ciencia Ficción') > 0 OR
        SUM(tags.tag = 'Fantasía') > 0
    )
ORDER BY 
    contenidos.titulo;

-------------------------------------

-- Muestra: 9  Juego de Tronos   Aventura, drama, Fantasía

SELECT 
    contenidos.contenidoID,
    contenidos.titulo AS Película,
    GROUP_CONCAT(tags.tag ORDER BY tags.tag SEPARATOR ', ') AS Tags
FROM 
    contenidos 
JOIN 
    contenido_tags ON contenidos.contenidoID = contenido_tags.contenidoID
JOIN 
    tags ON contenido_tags.tagID = tags.tagID
WHERE 
    contenidos.contenidoID IN (
        SELECT 
            contenidos.contenidoID
        FROM 
            contenidos
        JOIN 
            contenido_tags ON contenidos.contenidoID = contenido_tags.contenidoID
        JOIN 
            tags ON contenido_tags.tagID = tags.tagID
        WHERE 
            tags.tag IN ('Aventura', 'Ciencia Ficción', 'Fantasía')
        GROUP BY  -- agrupo
            contenidos.contenidoID
        HAVING -- condiciono
            SUM(tags.tag = 'Aventura') > 0 AND (
                SUM(tags.tag = 'Ciencia Ficción') > 0 OR
                SUM(tags.tag = 'Fantasía') > 0
            )
    )
GROUP BY 
    contenidos.contenidoID, contenidos.titulo
ORDER BY 
    contenidos.titulo;

---------------------------------------------------------------------------------

-- 3. Visualizar títulos y categorías cuyo resumen contenga la palabra **"misión"**.

-- muestra: 3022   pelicula

SELECT 
    contenidos.titulo AS Título,
    categorias.categoria AS Categoría
FROM 
    contenidos
JOIN -- Se usa JOIN con la tabla categorias para mostrar el nombre legible en lugar del ID.
    categorias ON contenidos.categoriaID = categorias.categoriaID
WHERE 
    contenidos.resumen LIKE '%misión%'
ORDER BY 
    contenidos.titulo;

--------------------------------------------------------------------------------------

-- 4. Listar las series con **al menos 3 temporadas**.

-- muestra: 11   The Big Bang Theory   12

SELECT 
    contenidoID,
    titulo AS Serie,
    temporadas
FROM 
    contenidos
WHERE 
    temporadas >= 3
ORDER BY 
    temporadas DESC;

------------------------------------------------------------------

-- 5. Contar cuántas películas/series trabajó el actor **Chris Pratt**.

-- muestra: Chris Pratt   4

SELECT 
    actores.nombreCompleto AS Actor,
    COUNT(contenido_actores.contenidoID) AS Cantidad_Contenidos /* Se cuentan cuántas veces aparece en la tabla contenido_actores, que representa en qué contenidos trabajó. */
FROM 
    actores
JOIN 
    contenido_actores ON actores.actorID = contenido_actores.actorID
WHERE 
    actores.nombreCompleto = 'Chris Pratt';

-------------
-- muestra: Chris Pratt   Her

SELECT 
    a.nombreCompleto AS Actor,
    c.titulo AS Contenido
FROM 
    actores a
JOIN 
    contenido_actores ca ON a.actorID = ca.actorID
JOIN 
    contenidos c ON ca.contenidoID = c.contenidoID
WHERE 
    a.nombreCompleto = 'Chris Pratt'
ORDER BY 
    c.titulo;

------------------------------------------------------------------------------

-- 6. Mostrar nombre completo de actrices/actores junto a:  
    -- título de los trabajos, categoría y género.

-- muestra: Aaron Paul   Black Mirror  series  Accion

SELECT 
    actores.nombreCompleto AS Actor,
    contenidos.titulo AS Titulo,
    categorias.categoria AS Categoría,
    generos.genero AS Género
FROM 
    actores
JOIN 
    contenido_actores ON actores.actorID = contenido_actores.actorID
JOIN 
    contenidos ON contenido_actores.contenidoID = contenidos.contenidoID
JOIN 
    categorias ON contenidos.categoriaID = categorias.categoriaID
JOIN 
    generos ON contenidos.generoID = generos.generoID
ORDER BY 
    actores.nombreCompleto, contenidos.titulo;

-----------------------------------------------------------------------------------

-- 7. Ver solo la categoría **"Películas"**:  
    -- mostrar título en mayúsculas, género en mayúsculas, tags separados por coma, duración y enlace al tráiler.



-- 7. Ver solo la categoría **"Películas"**:  
    -- mostrar título en mayúsculas, género en mayúsculas, tags separados por coma, duración y enlace al tráiler.

-- se muestra: Alien: covenant  Accion  Aventura, ciencia ficcion  122min  https://www.youtube.com/watch?v=5QzMVWfWmk8

SELECT 
    UPPER(contenidos.titulo) AS Título,
    UPPER(generos.genero) AS Género,
    GROUP_CONCAT(tags.tag ORDER BY tags.tag SEPARATOR ', ') AS Tags,
    contenidos.duracion AS Duración,
    contenidos.trailer AS Tráiler
FROM 
    contenidos
JOIN 
    categorias ON contenidos.categoriaID = categorias.categoriaID
JOIN 
    generos ON contenidos.generoID = generos.generoID
JOIN 
    contenido_tags ON contenidos.contenidoID = contenido_tags.contenidoID
JOIN 
    tags ON contenido_tags.tagID = tags.tagID
WHERE 
    categorias.categoria = 'Película'  -- se modifico de peliculas porque no tengo peliculas sino pelicula
GROUP BY 
    contenidos.contenidoID, contenidos.titulo, generos.genero, contenidos.duracion, contenidos.trailer
ORDER BY 
    contenidos.titulo;

-------------------------------------------------------------------------------

-- 8. Ver solo la categoría **"Series"**:  
    -- mostrar título en mayúsculas, género en mayúsculas, tags separados por coma, cantidad de temporadas, tráiler y resumen.

-- muestra Ecpedientes secretos X    Accion   drama, sci-fi, suspenso   11   trailer   Fox Mulder y Dana Scully....

SELECT 
    UPPER(contenidos.titulo) AS Título,
    UPPER(generos.genero) AS Género,
    GROUP_CONCAT(tags.tag ORDER BY tags.tag SEPARATOR ', ') AS Tags,
    contenidos.temporadas AS Temporadas,
    contenidos.trailer AS Tráiler,
    contenidos.resumen AS Resumen
FROM 
    contenidos 
JOIN 
    categorias ON contenidos.categoriaID = categorias.categoriaID
JOIN 
    generos ON contenidos.generoID = generos.generoID
JOIN 
    contenido_tags ON contenidos.contenidoID = contenido_tags.contenidoID
JOIN 
    tags ON contenido_tags.tagID = tags.tagID
WHERE 
    categorias.categoria = 'Serie'
GROUP BY 
    contenidos.contenidoID, contenidos.titulo, generos.genero, contenidos.temporadas, contenidos.trailer, contenidos.resumen
ORDER BY 
    contenidos.titulo;


--------------------------------------------------------------------------------

-- 9. Identificar la película/serie con **más actores** y la que tiene **menos actores**, indicando la cantidad en cada caso.

-- muestra: black mirror  70     Centrigrados  4

-- Contenido con MÁS actores
SELECT 
    Contenido,
    Cantidad_Actores
FROM (
    SELECT 
        contenidos.titulo AS Contenido,
        COUNT(contenido_actores.actorID) AS Cantidad_Actores
    FROM 
        contenidos
    JOIN 
        contenido_actores ON contenidos.contenidoID = contenido_actores.contenidoID
    GROUP BY 
        contenidos.contenidoID, contenidos.titulo
    ORDER BY 
        Cantidad_Actores DESC
    LIMIT 1
) AS mas_actores

UNION

-- Contenido con MENOS actores
SELECT 
    Contenido,
    Cantidad_Actores
FROM (
    SELECT 
        contenidos.titulo AS Contenido,
        COUNT(contenido_actores.actorID) AS Cantidad_Actores
    FROM 
        contenidos
    JOIN 
        contenido_actores ON contenidos.contenidoID = contenido_actores.contenidoID
    GROUP BY 
        contenidos.contenidoID, contenidos.titulo
    ORDER BY 
        Cantidad_Actores ASC
    LIMIT 1
) AS menos_actores;


-----------------------------------------------------------------------------------

-- 10. Contar la cantidad total de **películas** registradas.

 -- muestra 72

SELECT 
    COUNT(*) AS Total_Películas
FROM 
    contenidos
JOIN 
    categorias ON contenidos.categoriaID = categorias.categoriaID
WHERE 
    categorias.categoria = 'Película';


--------------------------------------------------------------------------------------

-- 11. Contar la cantidad total de **series** registradas.

--- muestra: 25

SELECT 
    COUNT(*) AS Total_Series
FROM 
    contenidos
JOIN 
    categorias ON contenidos.categoriaID = categorias.categoriaID
WHERE 
    categorias.categoria = 'Serie';



----------------------------------------------------------------------------------------

-- 12. Listar las series en orden **descendente por cantidad de temporadas**.

-- muestra: The Big Bang Theory    12

SELECT 
    contenidos.titulo AS Serie,
    contenidos.temporadas AS Temporadas
FROM 
    contenidos
JOIN 
    categorias ON contenidos.categoriaID = categorias.categoriaID
WHERE 
    categorias.categoria = 'Serie'
ORDER BY 
    contenidos.temporadas DESC;

---------------------------------------------------------------------------------------

-- 13. Agregar el campo `fecha_lanzamiento` (tipo `DATE`) a la tabla de trabajos fílmicos (contenidos) y actualizar las fechas de los títulos del género **"Aventura"**.

-- agregamos nueva columna
ALTER TABLE contenidos
ADD COLUMN fecha_lanzamiento DATE;

-- verificamos genero "aventura", muestra que son 8
SELECT 
    contenidoID, titulo
FROM 
    contenidos
JOIN 
    generos ON contenidos.generoID = generos.generoID
WHERE 
    generos.genero = 'Aventura';


/* No se porque me aparece este orden cuando quiero buscar las peliculas por genero: 
1 = Ciencia ficcion ,
2 = Drama, 
3 = Suceso real, 
4 = suspenso, 
5 = comedia, 
6 = Familia, 
7 = Terror, 
8 = Aventura, 
9 = Accion, 
10 = Fantasia. */

-- VERIFICAR, CREO QUE ARREGLE

--------------------------------------------------------------------------------------------------------

-- 14. Buscar películas por **palabra clave** en título o descripción (por ejemplo: **"Aventura"**, **"madre"**, **"Ambientada"**).

-- version corta:

SELECT 
    contenidoID,
    titulo AS Título,
    resumen AS Descripción
FROM 
    contenidos
WHERE 
    titulo LIKE '%Aventura%'
    OR resumen LIKE '%Aventura%';

/* se cambia la parte del WHERE por: WHERE titulo LIKE '%madre%' OR resumen LIKE '%madre%'; o por: WHERE titulo LIKE '%Ambientada%' OR resumen LIKE '%Ambientada%';*/

-------------------------
-- Version larga, en donde aparece alguna de las 3 opciones de palabra

SELECT 
    contenidoID,
    titulo AS Título,
    resumen AS Descripción
FROM 
    contenidos
WHERE 
    titulo     LIKE '%Aventura%' OR resumen LIKE '%Aventura%'
    OR titulo  LIKE '%madre%'    OR resumen LIKE '%madre%'
    OR titulo  LIKE '%Ambientada%' OR resumen LIKE '%Ambientada%';

-------------------------------------------------------------------------------------------------------

-- 15. Agregar una tabla **"Ranking"** con:  
    -- ID de película/serie, calificación y comentarios.  
    -- Realizar consultas utilizando **JOINS**, **UNION**, **CONCAT**, **COUNT**, **GROUP BY**, entre otras operaciones SQL.

-- crear la tabla Ranking:
DROP TABLE IF EXISTS Ranking;

CREATE TABLE Ranking (
    rankingID INT AUTO_INCREMENT PRIMARY KEY,
    contenidoID INT NOT NULL,
    calificacion INT CHECK (calificacion BETWEEN 1 AND 10), /* solo acepta enteros y tiene una restricción de validación (check constraint) que obliga a que los valores insertados estén entre 1 y 10, inclusive. */
    comentario TEXT,
    FOREIGN KEY (contenidoID) REFERENCES contenidos(contenidoID)
);

-- insertar ejemplos
INSERT INTO Ranking (contenidoID, calificacion, comentario) VALUES
(1, 9, 'Una serie magnífica sobre la realeza.'),
(2, 8, 'Drama juvenil con mucho misterio.'),
(3, 10, 'Una obra maestra del universo Star Wars.'),
(4, 7, 'Buena, pero algunas partes son lentas.'),
(5, 9, 'Muy interesante y bien actuada.'),
(6, 8, 'Divertida y bien hecha.'),
(7, 10, 'Oscura y poderosa.'),
(8, 9, 'Gran cierre para una saga épica.');

-- -- CONSULTAS AVANZADAS  --  --

-- a) Ver ranking promedio por película/serie
SELECT 
    contenidos.titulo AS Título,
    ROUND(AVG(ranking.calificacion), 2) AS Promedio,
    COUNT(ranking.rankingID) AS Total_Votos
FROM 
    contenidos
JOIN 
    Ranking ON contenidos.contenidoID = ranking.contenidoID
GROUP BY 
    contenidos.contenidoID, contenidos.titulo
ORDER BY 
    Promedio DESC;


/* explicacion: AVG(ranking.calificacion) → Calcula el promedio de todas las calificaciones que tiene un contenido.

                ROUND(..., 2) → Redondea ese promedio a 2 decimales. Por ejemplo, 7.6666 → 7.67 */


-- b) Ver todos los comentarios de usuarios unidos en una sola fila por contenido

SELECT 
    contenidos.titulo AS Título,
    GROUP_CONCAT(ranking.comentario SEPARATOR ' || ') AS Comentarios
FROM 
    contenidos
JOIN 
    Ranking ON contenidos.contenidoID = ranking.contenidoID
GROUP BY 
    contenidos.contenidoID, contenidos.titulo;

-- c) Ver las películas/series con calificación 10
SELECT 
    contenidos.titulo AS Título,
    ranking.calificacion,
    ranking.comentario
FROM 
    Ranking
JOIN 
    contenidos ON ranking.contenidoID = contenidos.contenidoID
WHERE 
    ranking.calificacion = 10;


-- d) Usar UNION para mostrar contenidos sin ranking
-- Contenidos con ranking
-- Contenidos con ranking
SELECT 
    contenidos.titulo AS Título,
    'Con Ranking' AS Estado
FROM 
    contenidos 
JOIN 
    Ranking ON contenidos.contenidoID = ranking.contenidoID
GROUP BY 
    contenidos.contenidoID

UNION

-- Contenidos sin ranking
SELECT 
    contenidos.titulo AS Título,
    'Sin Ranking' AS Estado
FROM 
    contenidos
WHERE 
    contenidos.contenidoID NOT IN (SELECT contenidoID FROM Ranking);


-- e) CONCAT para mostrar frase combinada
SELECT 
    CONCAT(contenidos.titulo, ': tiene una calificación promedio de ', ROUND(AVG(ranking.calificacion), 1)) AS Resumen
FROM 
    contenidos
JOIN 
    Ranking ON contenidos.contenidoID = ranking.contenidoID
GROUP BY 
    contenidos.contenidoID, contenidos.titulo;


...........................................


