-- CREAR Tabla intermedia: Contenido-Actores
CREATE TABLE contenido_actores (
  contenidoID INT NOT NULL,
  actorID INT NOT NULL,
  PRIMARY KEY (contenidoID, actorID),
  FOREIGN KEY (contenidoID) REFERENCES contenidos(contenidoID),
  FOREIGN KEY (actorID) REFERENCES actores(actorID)
);


-- INSERTAR Tabla contenido_actores

-- The Crown: Claire Fox, Olivia Colman, Matt Smith, Tobias Menzies, Vanesa Kirby, Helena Bonham Carter
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (1, 170), (1, 625), (1, 557), (1, 787), (1, 809), (1, 320);

-- Riverdale: Lili Reinhart, Casey Cott, Camila Mendes, Marisol Nichols, Madelaine Petsch, Mädchen Amick
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (2, 513), (2, 134), (2, 123), (2, 543), (2, 533), (2, 597);

-- The Mandalorian: Pedro Pascal, Carl Weathers, Misty Rosas, Chris Bartlett, Rio Hackford, Giancarlo Esposito
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (3, 645), (3, 126), (3, 592), (3, 154), (3, 683), (3, 295);

-- The Umbrella Academy: Tom Hopper, David Castañeda, Emmy Raver-Lampman, Robert Sheehan, Aidan Gallagher, Elliot Page
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (4, 798), (4, 212), (4, 254), (4, 692), (4, 10), (4, 247);

-- Gambito de Dama: Anya Taylor-Joy, Thomas Brodie-Sangster, Harry Melling, Moses Ingram, Chloe Pirrie, Janina Elkin
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (5, 66), (5, 780), (5, 315), (5, 596), (5, 152), (5, 370);

-- Enola Holmes: Millie Bobby Brown, Henry Cavill, Sam Claflin, Helena Bonham Carter, Louis Partridge, Adeel Akhtar
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (6, 588), (6, 321), (6, 717), (6, 320), (6, 520), (6, 8);

-- Guasón: Joaquin Phoenix, Robert De Niro, Zazie Beetz, Frances Conroy, Brett Cullen, Shea Whigham
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (7, 414), (7, 689), (7, 835), (7, 274), (7, 109), (7, 741);

-- Avengers: End Game: Robert Downey Jr., Chris Evans, Mark Ruffalo, Chris Hemsworth, Scarlett Johansson, Jeremy Renner
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (8, 690), (8, 156), (8, 544), (8, 157), (8, 724), (8, 396);

-- Juego de tronos: Emilia Clarke, Lena Headey, Sophie Turner, Kit Harington, Peter Dinklage, Nikolaj Coster-Waldau
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (9, 248), (9, 505), (9, 753), (9, 492), (9, 647), (9, 614);

-- The Flash: Grant Gustin, Carlos Valdes, Danielle Panabaker, Candice Patton, Jesse L. Martin, Tom Cavanagh
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (10, 299), (10, 130), (10, 205), (10, 124), (10, 400), (10, 793);

-- The Big Bang Theory: Jim Parsons, Johnny Galecki, Kaley Cuoco, Simon Helberg, Kunal Nayyar, Melissa Rauch, Mayim Bialik
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (11, 406), (11, 434), (11, 463), (11, 744), (11, 498), (11, 567), (11, 565);

-- Friends: Jennifer Aniston, Courteney Cox, Lisa Kudrow, David Schwimmer, Matthew Perry, Matt LeBlanc
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (12, 389), (12, 189), (12, 516), (12, 217), (12, 561), (12, 555);

-- Anne with an 'E': Amybeth McNulty, Geraldine James, R. H. Thomson, Corrine Koslo, Dalila Bela, Lucas Jade Zumann
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (13, 37), (13, 293), (13, 656), (13, 188), (13, 196), (13, 522);

-- Expedientes Secretos 'X': Gillian Anderson, David Duchovny, Mitch Pileggi, Robert Patrick, Tom Braidwood, Bruce Harwood
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (14, 296), (14, 214), (14, 593), (14, 691), (14, 792), (14, 111);

-- Chernobyl: Jared Harris, Stellan Skarsgård, Emily Watson, Paul Ritter, Jessie Buckley, Adam Nagaitis
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (15, 371), (15, 757), (15, 251), (15, 643), (15, 404), (15, 6);

-- Westworld: Evan Rachel Wood, Thandiwe Newton, Jeffrey Wright, Tessa Thompson, Ed Harris, Luke Hemsworth, Rodrigo Santoro, Simon Quarterman, Clifton Collins Jr., Anthony Hopkins, Ingrid Bolsø Berdal, Angela Sarafyan, Shannon Woodward, Talulah Riley, Louis Herthum, Ben Barnes, Jimmi Simpson, Leonardo Nam, Aaron Paul, Vincent Cassel, Izabella Alvarez, Jeff Daniel Phillips
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (16, 264), (16, 777), (16, 387), (16, 776), (16, 239), (16, 528), (16, 696), (16, 746), (16, 175), (16, 61), (16, 337), (16, 48), (16, 739), (16, 769), (16, 519), (16, 84), (16, 408), (16, 506), (16, 2), (16, 814), (16, 344), (16, 382);

-- Halt and Catch Fire: Lee Pace, Scoot McNairy, Mackenzie Davis, Kerry Bishé, Toby Huss, Alana Cavanaugh
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (17, 503), (17, 725), (17, 532), (17, 482), (17, 789), (17, 14);

-- Ava: Jessica Chastain, John Malkovich, Colin Farrell, Common, Geena Davis, Ioan Gruffudd
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (18, 402), (18, 433), (18, 179), (18, 182), (18, 285), (18, 338);

-- Aves de presa y la fantabulosa emancipación de una Harley Quinn: Margot Robbie, Ewan McGregor, Mary Elizabeth Winstead, Jurnee Smollett, Rosie Perez, Chris Messina
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (19, 539), (19, 266), (19, 550), (19, 457), (19, 705), (19, 158);

-- Archivo: Stacy Martin, Rhona Mitra, Theo James, Peter Ferdinando, Lia Williams, Toby Jones
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (20, 756), (20, 675), (20, 778), (20, 648), (20, 511), (20, 790);

-- Jumanji - The next level: Dwayne Johnson, Kevin Hart, Jack Black, Karen Gillan, Awkwafina, Nick Jonas, Rhys Darby, Bobby Cannavale, Alex Wolff, Ser'Darius Blain, Madison Iseman, Morgan Turner, Sean Buxton, Mason Guccione, Marin Hinkle, Colin Hanks, Danny DeVito, Danny Glover
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (21, 237), (21, 486), (21, 347), (21, 467), (21, 75), (21, 610), (21, 676), (21, 103), (21, 20), (21, 734), (21, 535), (21, 595), (21, 731), (21, 552), (21, 541), (21, 180), (21, 206), (21, 207);

-- 3022: Miranda Cosgrove, Kate Walsh, Omar Epps, Angus Macfadyen, Jorja Fox, Enver Gjokaj
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (22, 590), (22, 473), (22, 627), (22, 51), (22, 442), (22, 257);

-- IT - Capítulo 2: Bill Skarsgård, Jessica Chastain, Bill Hader, James McAvoy, Isaiah Mustafa, Jay Ryan
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (23, 97), (23, 402), (23, 95), (23, 364), (23, 341), (23, 377);

-- Pantera Negra: Chadwick Boseman, Michael B. Jordan, Lupita Nyong'o, Danai Gurira, Martin Freeman, Daniel Kaluuya
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (24, 140), (24, 571), (24, 529), (24, 199), (24, 548), (24, 201);

-- Contra lo imposible (Ford versus Ferrari): Christian Bale, Matt Damon, Caitriona Balfe, Josh Lucas, Noah Jupe, Jon Bernthal
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (25, 163), (25, 554), (25, 119), (25, 447), (25, 617), (25, 436);

-- Centígrados: Génesis Rodríguez, Vincent Piazza, Benjamin Sokolow, Emily Bayiokos
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (26, 308), (26, 816), (26, 93), (26, 249);

-- DOOM: Aniquilación: Amy Manson, Luke Allen-Gale, Nina Bergman, Dominic Mafham, James Weber Brown, Lorina Kamburova
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (27, 34), (27, 527), (27, 615), (27, 233), (27, 366), (27, 518);

-- Contagio: Marion Cotillard, Matt Damon, Laurence Fishburne, Jude Law, Kate Winslet, Jennifer Ehle, Gwyneth Paltrow
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (28, 542), (28, 554), (28, 501), (28, 450), (28, 474), (28, 392), (28, 307);

-- Viuda Negra: Scarlett Johansson, Florence Pugh, David Harbour, O.T. Fagbenle, Rachel Weisz, William Hurt, Ray Winstone
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (29, 724), (29, 273), (29, 215), (29, 621), (29, 658), (29, 828), (29, 669);

-- The Martian: Matt Damon, Jessica Chastain, Kristen Wiig, Jeff Daniels, Michael Peña, Sean Bean, Kate Mara
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (30, 554), (30, 402), (30, 494), (30, 383), (30, 578), (30, 730), (30, 471);

-- Ex-Machina: Alicia Vikander, Domhnall Gleeson, Oscar Isaac, Sonoya Mizuno, Corey Johnson, Claire Selby, Gana Bayarsaikhan
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (31, 25), (31, 231), (31, 630), (31, 750), (31, 186), (31, 173), (31, 281);

-- Jurassic World: Bryce Dallas Howard, Chris Pratt, Irrfan Khan, Vincent D'Onofrio, Omar Sy, Nick Robinson, Judy Greer
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (32, 114), (32, 162), (32, 339), (32, 815), (32, 628), (32, 611), (32, 451);

-- Soy leyenda: Will Smith, Alice Braga, Charlie Tahan, Dash Mihok, Salli Richardson-Whitfield, Willow Smith, Emma Thompson
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (33, 824), (33, 23), (33, 145), (33, 210), (33, 716), (33, 830), (33, 252);

-- El primer hombre en la luna: Ryan Gosling, Claire Foy, Jason Clarke, Kyle Chandler, Corey Stoll, Patrick Fugit
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (34, 710), (34, 171), (34, 372), (34, 499), (34, 187), (34, 635);

-- Titanes del pacífico - La insurrección: John Boyega, Scott Eastwood, Cailee Spaeny, Jing Tian, Rinko Kikuchi, Burn Gorman
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (35, 423), (35, 726), (35, 118), (35, 410), (35, 682), (35, 115);

-- JOBS: La Vida De Steve Jobs: Ahston Kutcher, Dermot Mulroney, Josh Gad, Lukas Haas, Matthew Modine, J.K. Simmons, Lesley Ann Warren
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (36, 9), (36, 224), (36, 446), (36, 526), (36, 560), (36, 346), (36, 507);

-- Piratas de Silicon Valey: Noah Wyle, Anthony Michael, Joey Slotnick, J.G. Hertzler, Wayne Pére, Sheila Shaw, Gemma Zamprogna, John DiMaggio
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (37, 618), (37, 63), (37, 419), (37, 345), (37, 821), (37, 742), (37, 287), (37, 424);

-- Red Social: Jesse Eisenberg, Andrew Garfield, Justin Timberlake, Armie Hammer, Max Minghella, Rooney Mara, Brenda Song, Rashida Jones, John Gertz
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (38, 399), (38, 40), (38, 460), (38, 69), (38, 562), (38, 700), (38, 108), (38, 665), (38, 426);

-- Antitrust: Ryan Phillippe, Rachael Leigh Cook, Tim Robbins, Claire Forlani, Richard Rountree, Tygh Runyan, Ned Bellamy, Tyler Labine
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (39, 712), (39, 657), (39, 784), (39, 169), (39, 678), (39, 805), (39, 603), (39, 807);

-- Stowaway: Anna Kendrick, Daniel Dae Kim, Shamier Anderson, Toni Collette
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (40, 55), (40, 200), (40, 736), (40, 802);

-- Liga de la Justicia - Zack Snyder: Ben Affleck, Henry Cavill, Gal Gadot, Jason Momoa, Ezra Miller, Ray Fisher, Amy Adams, Jeremy Irons, Connie Nielsen
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (41, 83), (41, 321), (41, 280), (41, 375), (41, 267), (41, 667), (41, 31), (41, 394), (41, 184);

-- Two and a half men: Charlie Sheen, Jon Cryer, Angus T. Jones, Conchata Ferrel, Holland Taylor, Marin Hinkle, Jennifer Bini Taylor, Melanie Lynskey, Ashton Kutcher, Amber Tamblyn
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (42, 144), (42, 437), (42, 52), (42, 183), (42, 326), (42, 541), (42, 390), (42, 566), (42, 72), (42, 29);

-- La casa de Papel: Úrsula Corberó, Álvaro Morte, Itziar Ituño, Pedro Alonso, Alba Flores, Miguel Herrán, Jaime Lorente, Esther Acebo, Enrique Arce
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (43, 839), (43, 837), (43, 342), (43, 644), (43, 16), (43, 583), (43, 352), (43, 260), (43, 256);

-- Stranger Things: Winona Ryder, David Harbour, Finn Wolfhard, Millie Bobby Brown, Gaten Matarazzo, Caleb McLaughlin, Natalia Dyer, Charlie, Heaton, Joe Keery
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (44, 831), (44, 215), (44, 271), (44, 588), (44, 284), (44, 120), (44, 599), (44, 142), (44, 319), (44, 415);

-- Gravity: Sandra Bullock, George Clooney, Ed Harris, Orto Ignatiussen, Phaldut Sharma, Amy Warren, Basher Savage, Adam Cozens
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (45, 720), (45, 289), (45, 239), (45, 629), (45, 650), (45, 36), (45, 80), (45, 4);

-- Apollo 13: Tom Hanks, Bill Paxton, Kevin Bacon, Gary Sinise, Ed Harris, Kathleen Quinlan, Roger Corman, Chris Ellis, Xander Berkeley
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (46, 796), (46, 96), (46, 484), (46, 283), (46, 239), (46, 477), (46, 697), (46, 155), (46, 834);

-- La profecía: Liev Schreiber, Julia Stiles, Seamus Davey-Fitzpatrick, David Thewils, Pete Postlethwaite, Mia Farrow, Predrag Bjelac, Carlo Sabatini, Amy Huck
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (47, 512), (47, 454), (47, 728), (47, 218), (47, 646), (47, 568), (47, 655), (47, 129), (47, 33);

-- El exorcista: Ellen Burstyn, Linda Blair, Max vox Sydow, Lee J. Cobb, Kitty Winn, Jack MacGowran, Jason Miller, William O'Malley, Barton Heyman
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (48, 246), (48, 515), (48, 563), (48, 502), (48, 493), (48, 349), (48, 374), (48, 829), (48, 79);

-- It (eso): Jaeden Martell, Jeremy Ray, Sophia Lillis, Finn Wolfhard, Chosen Jacobs, Jack Dylan, Wyatt Oleff, Bill Skarsgård, Nicholas Hamilton
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (49, 351), (49, 395), (49, 752), (49, 271), (49, 153), (49, 348), (49, 833), (49, 97), (49, 606);

-- The Office: Rainn Wilson, Steve Carell, Jenna Fischer, John Krasinski, B.J. Novak, Kate Flannery, Brian Baumgartner, Leslie David Baker, Mindy Kaling, Angela Kinsey
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (50, 662), (50, 760), (50, 388), (50, 430), (50, 76), (50, 469), (50, 110), (50, 508), (50, 589), (50, 47);

-- The Good Doctor: Freddie Highmore, Antonia Thomas, Hill Harper, Richard Schiff, Christina Chang, Paige Spara, Fiona Gubelmann, Will Yun Lee, Nicholas Gonzalez
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (51, 278), (51, 65), (51, 323), (51, 679), (51, 165), (51, 633), (51, 272), (51, 826), (51, 605);

-- La teoría del todo: Eddie Redmayne, Felicity Jones, Charlie Cox, Emily Watson, Simon McBurney, David Thewlis, Maxine Peake, Harry Lloyd, Tom Prior
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (52, 240), (52, 270), (52, 143), (52, 251), (52, 745), (52, 219), (52, 564), (52, 314), (52, 800);

-- Código enigma: Benedict Cumberbatch, Keira Knightley, Matthew Goode, Rory Kinnear, Allen Leech, Matthew Beard, Charles Dance, Mark Strong, James Northcote
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (53, 89), (53, 479), (53, 559), (53, 702), (53, 27), (53, 558), (53, 141), (53, 545), (53, 365);

-- Talentos ocultos: Taraji P. Henson, Octavia Spencer, Janelle Monáe, Kevin Costner, Kirsten Dunst, Jim Parsons, Mahershala Ali, Glen Powell, Ariana Neal
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (54, 770), (54, 622), (54, 369), (54, 485), (54, 491), (54, 406), (54, 536), (54, 297), (54, 67);

-- Una mente brillante: Russell Crowe, Jennifer Connelly, Ed Harris, Paul Bettany, Christopher Plummer, Josh Lucas, Adam Goldberg, Anthony Rapp, Judd Hirsch
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (55, 708), (55, 391), (55, 239), (55, 637), (55, 168), (55, 447), (55, 5), (55, 64), (55, 449);

-- Passengers: Jennifer Lawrence, Chris Pratt, Michael Sheen, Laurence Fishburne, Andy García, Aurora Perrineau, Kristin Brock, Julee Cerda, Fred Melamed
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (56, 393), (56, 162), (56, 579), (56, 501), (56, 42), (56, 74), (56, 495), (56, 452), (56, 277);

-- Passengers: Anne Hathaway, Patrick Wilson, Andre Braugher, Dianne Wiest, David Morse, William B. Davis, Ryan Robbins, Clea DuVall, Don Thompson
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (57, 60), (57, 636), (57, 38), (57, 226), (57, 216), (57, 827), (57, 714), (57, 174), (57, 235);

-- Argo: Ben Affleck, Bryan Cranston, Alan Arkin, Jogn Goodman, Victor Garber, Tate Donovan, Clea DuVall, Scoot McNairy, Rory Cochrane, Kerry Bishé
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (58, 83), (58, 113), (58, 13), (58, 420), (58, 812), (58, 772), (58, 174), (58, 725), (58, 701), (58, 482);

-- Prometheus: Noomi Rapace, Michael Fassbender, Charlize Theron, Logan Marshall-Green, Guy Pearce, Idris Elba, Sean Harris, Rafe Spall, Kate Dickie, Emut Elliott, Benedict Wong, Lucy Hutchinson, Patrick Wilson, Ian Whyte, Branwell Donaghey, Vladimir Furdik, C.C. Smiff, Shane Steyn, John Lebar
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (59, 620), (59, 573), (59, 146), (59, 517), (59, 303), (59, 332), (59, 732), (59, 661), (59, 468), (59, 255), (59, 90), (59, 525), (59, 636), (59, 331), (59, 107), (59, 819), (59, 116), (59, 738), (59, 431);

-- Alien: Covenant: Michael Fassbender, Katherine Waterston, Billy Crudup, Danny McBride, Demián Bichir, Carmen Ejogo, Jussie Smollett, Callie Hernandez, Amy Seimetz, Nathaniel Dean, Alexander England, Benjamin Rigby, Uli Latukefu, Tess Haubrich, Andrew Crawford, Guy Pierce, James Franco, Noomi Rapace, Javier Botet
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (60, 573), (60, 476), (60, 98), (60, 208), (60, 221), (60, 132), (60, 458), (60, 121), (60, 35), (60, 601), (60, 21), (60, 92), (60, 808), (60, 775), (60, 39), (60, 304), (60, 360), (60, 620), (60, 376);

-- Life: Vida inteligente: Jake Gyllenhaal Rebecca Ferguson, Ryan Reynolds, Hiroyuki Sanada, Airyon Bakare, Olga Dihovichnaya, Naoko Mori, Haruka Kuroda Camiel Warren-Taylor
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (61, 356), (61, 713), (61, 325), (61, 12), (61, 623), (61, 598), (61, 316);

-- Madame Curie: Rosamund Pike, Sam Riley, Aneurin Barnard, Anya Taylor-Joy, Simon Russell Beale, Jonathan Aris, Corey Johnson, Tim Woodward, Katherine Parkinson
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (62, 703), (62, 718), (62, 45), (62, 66), (62, 747), (62, 440), (62, 186), (62, 785), (62, 475);

-- The IT Crowd: Chris O'Dowd, Richard Ayoade, Katherine Parkinson, Matt Berry, Noel Fielding, Peter Serafinowicz, Gragam Linehan, Tom Binns, Lewis Macleod
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (63, 160), (63, 677), (63, 475), (63, 553), (63, 619), (63, 649), (63, 298), (63, 791), (63, 510);

-- Humans: Katherine Parkinson, Gemma Chan, Emily Berrington, Lucy Carless, Colin Morgan, Theo Stevenson, Pixie Daves, Tom Goodman-Hill, Ivanno Jeremiah, Ruth Bradley, Will Tudor, Neil Maskell, Billy Jenkins, Bella Dayne, Thusitha Jayasumdera, Danny Webb, Carrie-Anne Moss, William Hurt
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (64, 475), (64, 286), (64, 250), (64, 524), (64, 181), (64, 779), (64, 653), (64, 795), (64, 343), (64, 709), (64, 825), (64, 604), (64, 100), (64, 82), (64, 783), (64, 209), (64, 133), (64, 828);

-- Need for Speed: Aaron Paul, Dominic Cooper, Imogen Poots, Ramón Rodríguez, Michael Keaton, Rami Malek, Kid Cudi, Dakota Johnson, Harrison Gilbertson, Carmela Zumbado, Jalil Jay Lynch, Nick Chinlund, Chad Randall
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (65, 2), (65, 232), (65, 334), (65, 664), (65, 574), (65, 663), (65, 488), (65, 194), (65, 312), (65, 131), (65, 358), (65, 609), (65, 139);

-- Mare of Easttown: Kate Winslet, Julianne Nicholson, Jean Smart, Angourie Rice, Evan Peters, Sosie Bacon, David Denman, Neal Huff, James McArdle, Guy Pearce, Cailee Spaeny, John Douglas Thompson, Joe Tippett, Cameron Mann, Chinasa Ogbuagu
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (66, 474), (66, 456), (66, 379), (66, 50), (66, 263), (66, 754), (66, 213), (66, 602), (66, 363), (66, 303), (66, 118), (66, 425), (66, 417), (66, 122), (66, 151);

-- Ray: Jamie Foxx, Kerry Washington, Regina King, Harry Lennix, Clifton Powell, Bokeem Woodbine, Sharon Warren, C.J. Sanders, Curtis Armstrong
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (67, 367), (67, 483), (67, 673), (67, 313), (67, 176), (67, 104), (67, 740), (67, 117), (67, 191);

-- Black Mirror: Michaela Coel, Daniel Lapaine, Hannah John-Kamen, Andrew Roux, Claire Keelan, Sinéad Matthews, Anna Wilson-Jones, Paul Popplewell, Julia Davis, Ashely Thomas, Kerrie Hayes, Amy Beth Hayes, Rebekah Staton, Rhashan Stone, Phoebe Fox, Jimi Mistry, Tobias Menzies, Cherry Jones, Alice Eve, Susannah Fielding, Demetri Goritsas, Kadiff Kirwan, Sope Dirisu, Jackson Bews, Annabel Davis, Billy Griffin Jr., Paul Lawrence Kitson, Jeff Mash Patrick Kennedy, Lydia Wilson, Alastair Mackenzie, Chetna Pandya, Tuppence Middleton, Ian Bonar, Elisabeth Hopper, Nick Bartlett, Wunmi Mosaku, Alex Lawther, Jerome Flynn, Susannah Doyle, Madeline Brewer, Ariane Labed, Sarah Snook, Michael Kelly, Jola Bokinni, Faye Marsay, Benefict Wong, Jonas Karlsson, Chloe Pirrie, Eugene O'Hare, Indira Ainger, James Lance, David Ajala, Sarah Abbott, Maxine Peake, Jake Davies, Clint Dyer, Letitia Wright, Babs Olusanmokun, Georgina Campbell, Jesse Plemons, Jimmi Simpson, Aaron Paul, Aldis Hodge, Kiran Sonia Sawar, Miley Cyrus, Anthony Mackie, Nicole Beharie, Bryce Dallas Howard, Mackenzie Davis, Gugu Mbatha-Raw
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (68, 581), (68, 202), (68, 309), (68, 41), (68, 172), (68, 749), (68, 57), (68, 642), (68, 453), (68, 71), (68, 481), (68, 32), (68, 672), (68, 674), (68, 651), (68, 407), (68, 787), (68, 149), (68, 24), (68, 765), (68, 220), (68, 462), (68, 751), (68, 350), (68, 58), (68, 99), (68, 640), (68, 385), (68, 530), (68, 15), (68, 150), (68, 804), (68, 329), (68, 242), (68, 608), (68, 832), (68, 19), (68, 397), (68, 764), (68, 534), (68, 68), (68, 723), (68, 575), (68, 435), (68, 269), (68, 91), (68, 439), (68, 152), (68, 262), (68, 335), (68, 361), (68, 211), (68, 721), (68, 564), (68, 354), (68, 177), (68, 509), (68, 78), (68, 291), (68, 401), (68, 408), (68, 2), (68, 17), (68, 490), (68, 587), (68, 62), (68, 612), (68, 114), (68, 532), (68, 301);

-- Detrás de sus ojos: Simona Brown, Eve Hewson, Toma Bateman, Robert Aramayo, Tyler Howitt, Georgie Glen, Kamontip Krissy Ashton, Rob Horrocks, Joakim Skarli
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (69, 748), (69, 265), (69, 801), (69, 687), (69, 806), (69, 290), (69, 464), (69, 685), (69, 412);

-- Her: Joaquin Phoenix, Scarlett Johansson, Amy Adams, Rooney Mara, Olivia Wilde, Chris Pratt, Matt Letscher, Portia Doubleday, Spike Jonze
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (70, 414), (70, 724), (70, 31), (70, 700), (70, 626), (70, 162), (70, 556), (70, 654), (70, 755);

-- Misión Imposible: Tom Cruise, Jon Voight, Emmanuelle Béart, Henry Czerny, Jean Reno, Ving Rhames, Kristin Scott Thomas, Vanessa Redgrave, Ingeborga Dapkünaitè
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (71, 794), (71, 438), (71, 253), (71, 322), (71, 378), (71, 817), (71, 496), (71, 811), (71, 336);

-- El agente de C.I.P.O.L.: Henry Cavill, Armie Hammer Alicia Vikander, Elizabeth Debicki, Luca Calvani, Sylvester Groth, Hugh Grant, Jared Harris, Christian Berkel, Misha Kuznetsov, Guy Williams, Marianna Di Martino
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (72, 321), (72, 70), (72, 243), (72, 521), (72, 767), (72, 327), (72, 371), (72, 164), (72, 591), (72, 305), (72, 540);

-- Jumanji - Bienvenidos a la jungla: Dwayne Johnson, Kevin Hart, Jack Black, Karen Gillan, Nick Jonas, Rhys Darby, Bobby Cannavale, Alex Wolff, Ser'Darius Blain, Madison Iseman, Morgan Turner, Sean Buxton, Mason Guccione, Marin Hinkle, Colin Hanks
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (73, 237), (73, 486), (73, 347), (73, 467), (73, 610), (73, 676), (73, 103), (73, 20), (73, 734), (73, 535), (73, 595), (73, 731), (73, 552), (73, 541), (73, 180);

-- Mujer Maravilla 1984: Gal Gadot, Chris Pine, Kristen Wiig, Pedro Pascal, Robin Wright, Connie Nielsen, Lilly Aspell, Amr Waked, Kristoffer Polaha
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (74, 280), (74, 161), (74, 494), (74, 645), (74, 695), (74, 184), (74, 514), (74, 30), (74, 497);

-- El Contador: Ben Affleck, Anna Kendrick, J.K. Simmons, Jon Bernthal, Jeffrey Tambor, Cynthia Addai-Robinson, John Lithgow, Jean Smart, Andy Umberger, Alison Wright, Daeg Faerch, Seth Lee, Tait Fletcher, Angel Giuffria, Ron Yuan, Scott Hunter, Dennis Keiffer, Jake Presley
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (75, 83), (75, 55), (75, 346), (75, 436), (75, 386), (75, 192), (75, 432), (75, 379), (75, 44), (75, 26), (75, 193), (75, 735), (75, 768), (75, 46), (75, 699), (75, 727), (75, 223), (75, 357);

-- Mala Educación: Hugh Jackman, Allison Janney, Geraldine Viswanathan, Alex Wolff, Rafael Casal, Stephen Spinella, Annaleigh Ashford, Ray Romano, Hari Dhillon, Jerremy Shamos, Stephanie Kurtzuba, Catherine Curtin, Kathrine Narducci, Ray Abruzzo
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (76, 328), (76, 28), (76, 294), (76, 20), (76, 660), (76, 759), (76, 59), (76, 668), (76, 310), (76, 398), (76, 758), (76, 136), (76, 478), (76, 666);

-- Noche en el Museo: Ben Stiller, Robin Williams, Carla Gugino, Dick Van Dyke, Steve Coogan, Jake Cherry, Mickey Rooney, Bill Cobbs, Owen Wilson, Ricky Gervais, Kim Raver, Rami Malek, Mizuo Peck
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (77, 88), (77, 694), (77, 128), (77, 227), (77, 761), (77, 353), (77, 582), (77, 94), (77, 631), (77, 680), (77, 489), (77, 663), (77, 594);

-- Bohemian Rhapsody: Rami Malek, Gwilym Lee, Ben Hardy, Joseph Mazzello, Lucy Boynton, Aidan Gillen, Allen Leech, Tom Hollander, Mike Myers
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (78, 663), (78, 306), (78, 85), (78, 443), (78, 523), (78, 11), (78, 27), (78, 797), (78, 584);

-- Rock of ages: Julianne Hough, Diego Boneta, Tom Cruise, Alec Baldwin, Russell Brand, Malin Åkerman, Paul Giamatti, Bryan Cranston, Catherine Zeta-Jones, Mary J. Blige, Erica Frene, Shane Hartline, James Martin Kelly, Will Forte, Eli Roth
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (79, 455), (79, 229), (79, 794), (79, 18), (79, 707), (79, 537), (79, 639), (79, 113), (79, 138), (79, 551), (79, 259), (79, 737), (79, 362), (79, 823), (79, 241);

-- Super 8: Joel Courtney, Elle Fanning, Riley Griffiths, Kyle Chandler, Noah Emmerich, AJ Michalka, Ryan Lee, Ron Eldard, Gabriel Basso
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (80, 418), (80, 245), (80, 681), (80, 499), (80, 616), (80, 1), (80, 711), (80, 698), (80, 279);

-- Jurassic World - El reino caido: Chris Pratt, Bryce Dallas Howard, Rafe Spall, Justice Smith, Daniella Pineda, James Cromwell, Toby Jones, Ted Levine, Jeff Goldblum, BD Wong, Geraldine Chaplin, Isabella Sermon, Kevin Layne
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (81, 162), (81, 114), (81, 661), (81, 459), (81, 204), (81, 359), (81, 790), (81, 773), (81, 384), (81, 77), (81, 292), (81, 340), (81, 487);

-- Indiana Jones - y el Reino de la Calavera de Cristal: Harrison Ford, Shia LaBeouf, Cate Blanchett, Karen Allen, Ray Winstone, John Hurt, Jim Broadbent, Igor Jijikine, Dimitri Diatchenko
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (82, 311), (82, 743), (82, 135), (82, 465), (82, 669), (82, 429), (82, 405), (82, 333), (82, 230);

-- Los Goonies: Sean Astin, Josh Brolin, Jeff Cohen, Corey Feldman, Kerri Green, Martha Plimpton, Jonathan Ke Quan, Jogn matuszak, Robert Davi
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (83, 729), (83, 445), (83, 381), (83, 185), (83, 480), (83, 546), (83, 441), (83, 422), (83, 688);

-- Cars: Owen Wilson, Bonnie Hunt, Paul Newman, Larry the Cable Guy, Tony Shalhoub, Cheech Marin, Michael Wallis, George Carlin, Paul Dooley
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (84, 631), (84, 105), (84, 641), (84, 500), (84, 803), (84, 147), (84, 580), (84, 288), (84, 638);

-- Los pingüinos de Madagascar: John DiMaggio, Chris Miller, Tom McGrath Danny Jacobs, Andy Richter, Nicole Sullivan Christopher Knights, Wayne Knight
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (85, 424), (85, 159), (85, 799), (85, 43), (85, 613), (85, 820);

-- Cementerio de animales: Dale Midkiff, Fred Gwynne, Denise Crosby, Brad Greenquist, Michael Lombard, Miko Hughes, Blaze Berdahl, Susan Blommaert, Mara Clark
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (86, 195), (86, 276), (86, 222), (86, 106), (86, 576), (86, 586), (86, 102), (86, 763), (86, 538);

-- Poltergeist: Craig T. Nelson, JoBeth Williams, Beatrice Straight, Dominique Dunne, Oliver Robins, Heather O'Rourke, Michael McManus, Virginia Kiser, Martin Casella
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (87, 190), (87, 411), (87, 81), (87, 234), (87, 624), (87, 318), (87, 577), (87, 818), (87, 547);

-- El código Da Vinci: Tom Hanks, Audrey Tautou, Ian McKellen, Jean Reno, Paul Bettany, Alfred Molina, Jürgen Prochnow, Jean-Yves Berteloot, Etienne Chicot
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (88, 796), (88, 73), (88, 330), (88, 378), (88, 637), (88, 22), (88, 461), (88, 380), (88, 261);

-- Johnny English: Rowan Atkinson, Natalie Imbruglia, Ben Miller, John Malkovich, Greg Wise, Tasha de Vasconcelos, Douglas McFerran, Steve Nicolson, Terence Harvey
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (89, 706), (89, 600), (89, 86), (89, 433), (89, 300), (89, 771), (89, 236), (89, 762), (89, 774);

-- Almost Famous: Billy Crudup, Frances McDormand, Kate Hudson, Patrick Fugit, Jason Lee, Zoey Deschanel, Michael Angarano, Anna Paquin, Fairuzza Balk
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (90, 98), (90, 275), (90, 470), (90, 635), (90, 373), (90, 836), (90, 570), (90, 56), (90, 268);

-- Escuela de Rock: Jack Black, Joan Cusack, Mike White, Sarah Silverman, Lee Wilkof, Kate McGregor-Stewart, Adam Pascal, Suzzane Douglas, Miranda Cosgrove
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (91, 347), (91, 413), (91, 585), (91, 722), (91, 504), (91, 472), (91, 7), (91, 766), (91, 590);

-- Mi pobre angelito: Macaulay Culkin, Joe Pesci, Daniel Stern, John Heard, Catherine O'Hara, Roberts Blossom, Devin Ratray, Michael C. Maronna, Hillary Wolf
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (92, 531), (92, 416), (92, 203), (92, 428), (92, 137), (92, 693), (92, 225), (92, 572), (92, 324);

-- Aprendices fuera de línea: Owen Wilson, Vince Vaughn, Will Ferrell, Rose Byrne, Aasif Mandvi, Max Minghella, Josh Brener, Dylan O'Brien, Tiya Sircar, Tobit Raphael, Josh Gad, Jessica Szohr, Rob Riggle, Eric André, Harvey Guillén, Gary Anthony Williams, Bruno Amato, B.J. Novak, Karen Ceesay, John Goodman
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (93, 631), (93, 813), (93, 822), (93, 704), (93, 3), (93, 562), (93, 444), (93, 238), (93, 786), (93, 788), (93, 446), (93, 403), (93, 686), (93, 258), (93, 317), (93, 282), (93, 112), (93, 76), (93, 466), (93, 427);

-- Outsourced: Rebecca Hazlewood, Sacha Dhawan, Diedrich Bader, Pippa Black, Parvesh Ceena, Thushari Jayasekera, Ben Rappaport, Guru Singh, Rizwan Manji, Anisha Nagarajan, Carla Gallo, Radhika Chaudhari, Nicholas Logan
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (94, 671), (94, 715), (94, 228), (94, 652), (94, 634), (94, 782), (94, 87), (94, 302), (94, 684), (94, 53), (94, 127), (94, 659), (94, 607);

-- Miedo Profundo: Blake Lively, Óscar Jaenada, Janelle Bailley, Chelsea Moody, Angelo Josue Lozano Corzo, José Manuel Trujillo Salas, Brett Cullen, Sedona Legge, Pablo Calva
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (95, 101), (95, 838), (95, 368), (95, 148), (95, 49), (95, 448), (95, 109), (95, 733), (95, 632);

-- Everest: Jason Clarke, Josh Brolin, Jake Gyllenhaal, Jogn Hawkes, Sam Worthington, Emily Watson, Martin Henderson, Michael Kelly, Keira Knightley, Robin Wright, Thomas M. Wright, Clive StandenNaoko Mori, Mia Goth, Elizabeth Debicki, Tom Goodman-Hill, Vanessa Kirby
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (96, 372), (96, 445), (96, 355), (96, 421), (96, 719), (96, 251), (96, 549), (96, 575), (96, 479), (96, 695), (96, 781), (96, 178), (96, 569), (96, 243), (96, 795), (96, 810);

-- La Familia Addams: Raúl Juliá, Anjelica Huston, Christopher Lloyd, Christina Ricci, Carel Struycken, Dan Hedaya, Jimmy Workman, Elizabeth Wilson, Dana Ivey
INSERT INTO Contenido_Actores (contenidoID, actorID) VALUES (97, 670), (97, 54), (97, 167), (97, 166), (97, 125), (97, 197), (97, 409), (97, 244), (97, 198);