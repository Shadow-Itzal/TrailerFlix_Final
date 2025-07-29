-- Tabla intermedia: Contenido-Tags
CREATE TABLE Contenido_Tags (
    contenidoID INT NOT NULL,
    tagID INT NOT NULL,
    PRIMARY KEY (contenidoID, tagID),
    FOREIGN KEY (contenidoID) REFERENCES Contenidos(contenidoID),
    FOREIGN KEY (tagID) REFERENCES Tags(tagID)
);

-- INSERTAR Tabla Contenido-Tags

-- The Crown: drama, suceso real
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (1, 7), (1, 19);
-- Riverdale: drama, misterio, ficción
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (2, 7), (2, 14), (2, 10);
-- The Mandalorian: sci-fi, fantasía, acción
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (3, 18), (3, 9), (3, 1);
-- The Umbrella Academy: sci-fi, fantasía, drama
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (4, 18), (4, 9), (4, 7);
-- Gambito de Dama: drama, ficción, sucesos
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (5, 7), (5, 10), (5, 20);
-- Enola Holmes: ficción, drama, misterio
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (6, 10), (6, 7), (6, 14);
-- Guasón: crimen, suspenso
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (7, 6), (7, 21);
-- Avengers: End Game: aventura, sci-fi, acción
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (8, 3), (8, 18), (8, 1);
-- Juego de tronos: aventura, fantasía, drama
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (9, 3), (9, 9), (9, 7);
-- The Flash: sci-fi, fantasía, acción
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (10, 18), (10, 9), (10, 1);
-- The Big Bang Theory: comedia, fantasía, ficción
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (11, 5), (11, 9), (11, 10);
-- Friends: comedia, familia, drama
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (12, 5), (12, 8), (12, 7);
-- Anne with an 'E': drama, familia, western
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (13, 7), (13, 8), (13, 24);
-- Expedientes Secretos 'X': drama, sci-fi, suspenso
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (14, 7), (14, 18), (14, 21);
-- Chernobyl: drama, suceso real
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (15, 7), (15, 19);
-- Westworld: western, sci-fi, drama
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (16, 24), (16, 18), (16, 7);
-- Halt and Catch Fire: ficción, drama, tecnología
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (17, 10), (17, 7), (17, 22);
-- Ava: acción, drama, suspenso
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (18, 1), (18, 7), (18, 21);
-- Aves de presa y la fantabulosa emancipación de una Harley Quinn: acción, ficción, comedia
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (19, 1), (19, 10), (19, 5);
-- Archivo: acción, sci-fi, suspenso
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (20, 1), (20, 18), (20, 21);
-- Jumanji - The next level: comedia, ficción, aventura, fantasía
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (21, 5), (21, 10), (21, 3), (21, 9);
-- 3022: sci-fi, suspenso, futurista
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (22, 18), (22, 21), (22, 11);
-- IT - Capítulo 2: terror, suspenso, fantasía
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (23, 23), (23, 21), (23, 9);
-- Pantera Negra: acción, aventura, fantasía
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (24, 1), (24, 3), (24, 9);
-- Contra lo imposible (Ford versus Ferrari): drama, historia, aventura
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (25, 7), (25, 12), (25, 3);
-- Centígrados: drama, suspenso, intriga
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (26, 7), (26, 21), (26, 13);
-- DOOM: Aniquilación: terror, acción, sci-fi, futurista
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (27, 23), (27, 1), (27, 18), (27, 11);
-- Contagio: drama, suspenso, ficción
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (28, 7), (28, 21), (28, 10);
-- Viuda Negra: drama, acción, aventura
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (29, 7), (29, 1), (29, 3);
-- The Martian: drama, sci-fi, aventura
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (30, 7), (30, 18), (30, 3);
-- Ex-Machina: drama, sci-fi, suspenso
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (31, 7), (31, 18), (31, 21);
-- Jurassic World: suspenso, aventura, ficción
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (32, 21), (32, 3), (32, 10);
-- Soy leyenda: drama, terror, ficción
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (33, 7), (33, 23), (33, 10);
-- El primer hombre en la luna: drama, suceso real
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (34, 7), (34, 19);
-- Titanes del pacífico - La insurrección: acción, fantasía, sci-fi
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (35, 1), (35, 9), (35, 18);
-- JOBS: La Vida De Steve Jobs: drama, historia, tecnología
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (36, 7), (36, 12), (36, 22);
-- Piratas de Silicon Valey: tecnología, historia, comedia
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (37, 22), (37, 12), (37, 5);
-- Red Social: drama, historia, tecnología
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (38, 7), (38, 12), (38, 22);
-- Antitrust: acción, suspenso, drama
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (39, 1), (39, 21), (39, 7);
-- Stowaway: drama, ciencia ficción, suspenso
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (40, 7), (40, 4), (40, 21);
-- Liga de la Justicia - Zack Snyder: acción, aventura, ciencia ficción, fantasía
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (41, 1), (41, 3), (41, 4), (41, 9);
-- Two and a half men: familia, comedia, aventura
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (42, 8), (42, 5), (42, 3);
-- La casa de Papel: aventura, drama, acción
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (43, 3), (43, 7), (43, 1);
-- Stranger Things: misterio, suspenso, familia
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (44, 14), (44, 21), (44, 8);
-- Gravity: ciencia ficción, suspenso, drama
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (45, 4), (45, 21), (45, 7);
-- Apollo 13: drama, historia, suceso real
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (46, 7), (46, 12), (46, 19);
-- La profecía: terror, suspenso, drama
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (47, 23), (47, 21), (47, 7);
-- El exorcista: terror, suspenso, drama
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (48, 23), (48, 21), (48, 7);
-- It (eso): terror, suspenso, drama
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (49, 23), (49, 21), (49, 7);
-- The Office: comedia, familia
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (50, 5), (50, 8);
-- The Good Doctor: drama, familia
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (51, 7), (51, 8);
-- La teoría del todo: drama, romance, suceso real
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (52, 7), (52, 17), (52, 19);
-- Código enigma: drama, historia, suspenso, suceso real
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (53, 7), (53, 12), (53, 21), (53, 19);
-- Talentos ocultos: drama, historia, suspenso, suceso real
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (54, 7), (54, 12), (54, 21), (54, 19);
-- Una mente brillante: drama, historia, romance, suceso real
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (55, 7), (55, 12), (55, 17), (55, 19);
-- Passengers: drama, romance, sci-fi, ciencia ficción
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (56, 7), (56, 17), (56, 18), (56, 4);
-- Passengers: misterio, suspenso, drama, romance
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (57, 14), (57, 21), (57, 7), (57, 17);
-- Argo: suspenso, drama, suceso real
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (58, 21), (58, 7), (58, 19);
-- Prometheus: ciencia ficción, aventura, misterio
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (59, 4), (59, 3), (59, 14);
-- Alien: Covenant: ciencia ficción, aventura, misterio
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (60, 4), (60, 3), (60, 14);
-- Life: Vida inteligente: ciencia ficción, suspenso, terror
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (61, 4), (61, 21), (61, 23);
-- Madame Curie: drama, romance, historia, suceso real
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (62, 7), (62, 17), (62, 12), (62, 19);
-- The IT Crowd: comedia
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (63, 5);
-- Humans: ciencia ficción, sci-fi, fantasía, drama, misterio
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (64, 4), (64, 18), (64, 9), (64, 7), (64, 14);
-- Need for Speed: acción, drama, suspenso
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (65, 1), (65, 7), (65, 21);
-- Mare of Easttown: misterio, drama, crimen, suspenso
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (66, 14), (66, 7), (66, 6), (66, 21);
-- Ray: drama, música, suceso real, historia
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (67, 7), (67, 16), (67, 19), (67, 12);
-- Black Mirror: drama, ciencia ficción, fantasía
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (68, 7), (68, 4), (68, 9);
-- Detrás de sus ojos: drama, suspenso, crimen
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (69, 7), (69, 21), (69, 6);
-- Her: drama, sci-fi, ciencia ficción, romance
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (70, 7), (70, 18), (70, 4), (70, 17);
-- Misión Imposible: drama, acción, romance
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (71, 7), (71, 1), (71, 17);
-- El agente de C.I.P.O.L.: drama, acción, aventura, comedia
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (72, 7), (72, 1), (72, 3), (72, 5);
-- Jumanji - Bienvenidos a la jungla: comedia, ficción, aventura, fantasía
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (73, 5), (73, 10), (73, 3), (73, 9);
-- Mujer Maravilla 1984: comedia, ficción, aventura, fantasía
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (74, 5), (74, 10), (74, 3), (74, 9);
-- El Contador: aventura, acción, suspenso, crimen, drama
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (75, 3), (75, 1), (75, 21), (75, 6), (75, 7);
-- Mala Educación: suceso real, drama, historia
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (76, 19), (76, 7), (76, 12);
-- Noche en el Museo: aventura, ciencia ficción, comedia, familia, acción
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (77, 3), (77, 4), (77, 5), (77, 8), (77, 1);
-- Bohemian Rhapsody: suceso real, drama, historia, música
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (78, 19), (78, 7), (78, 12), (78, 16);
-- Rock of ages: música, musical, comedia, romance, drama
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (79, 16), (79, 15), (79, 5), (79, 17), (79, 7);
-- Super 8: suspenso, misterio, sci-fi
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (80, 21), (80, 14), (80, 18);
-- Jurassic World - El reino caido: aventura, acción, sci-fi
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (81, 3), (81, 1), (81, 18);
-- Indiana Jones - y el Reino de la Calavera de Cristal: aventura, acción
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (82, 3), (82, 1);
-- Los Goonies: familia, aventura, acción
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (83, 8), (83, 3), (83, 1);
-- Cars: familia, animación, aventura, comedia
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (84, 8), (84, 2), (84, 3), (84, 5);
-- Los pingüinos de Madagascar: familia, animación, aventura, comedia
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (85, 8), (85, 2), (85, 3), (85, 5);
-- Cementerio de animales: terror, drama, suspenso
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (86, 23), (86, 7), (86, 21);
-- Poltergeist: terror, drama, suspenso
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (87, 23), (87, 7), (87, 21);
-- El código Da Vinci: aventura, drama, suspenso, misterio
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (88, 3), (88, 7), (88, 21), (88, 14);
-- Johnny English: comedia, familia, acción
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (89, 5), (89, 8), (89, 1);
-- Almost Famous: drama, música, suceso real
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (90, 7), (90, 16), (90, 19);
-- Escuela de Rock: familia, comedia, música
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (91, 8), (91, 5), (91, 16);
-- Mi pobre angelito: familia, comedia, música
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (92, 8), (92, 5), (92, 16);
-- Aprendices fuera de línea: familia, comedia
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (93, 8), (93, 5);
-- Outsourced: familia, comedia
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (94, 8), (94, 5);
-- Miedo Profundo: suspenso, drama, terror
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (95, 21), (95, 7), (95, 23);
-- Everest: suceso real, drama, suspenso
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (96, 19), (96, 7), (96, 21);
-- La Familia Addams: familia, comedia, fantasía
INSERT INTO Contenido_Tags (contenidoID, tagID) VALUES (97, 8), (97, 5), (97, 9);

