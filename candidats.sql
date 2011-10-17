begin transaction;
create table listes(numero, nom);
create table candidats(liste, numero, nom, prenom);
insert into listes values(01, 'La Gauche - solidaritéS');
insert into candidats values(01, 01, 'DOLIVO', 'Jean-Michel');
insert into candidats values(01, 02, 'PAPILLOUD', 'Anne');
insert into candidats values(01, 03, 'CONSCIENCE', 'Pierre');
insert into candidats values(01, 04, 'DIAZ', 'Tania');
insert into candidats values(01, 05, 'BUCLIN', 'Hadrien');
insert into candidats values(01, 06, 'TOPKIRAN', 'Naima');
insert into candidats values(01, 07, 'SAHIN', 'FIDAN Yüksel');
insert into candidats values(01, 08, 'GUEX', 'Sébastien');
insert into candidats values(01, 09, 'HOFNER', 'Marie-Claude');
insert into candidats values(01, 10, 'PACCAUD', 'Isabelle');
insert into candidats values(01, 11, 'SÜRI', 'Daniel');
insert into candidats values(01, 12, 'LUCAS', 'Isabelle');
insert into candidats values(01, 13, 'NAGEL', 'Julien');
insert into candidats values(01, 14, 'KOCHER', 'Maïla');
insert into candidats values(01, 15, 'SCOTT', 'TCHUENTE Séverine');
insert into candidats values(01, 16, 'COSTA', 'Valentine');
insert into candidats values(01, 17, 'KÖHLER', 'Nora');
insert into candidats values(01, 18, 'OPPIKOFER', 'Pierre-Yves');
insert into listes values(02, 'PS - Jeunesse socialiste vaudoise');
insert into candidats values(02, 01, 'AUBERT', 'Philippe');
insert into candidats values(02, 02, 'COPPE', 'Axelle');
insert into candidats values(02, 03, 'DABBOUBI', 'Samia');
insert into candidats values(02, 04, 'ECUYER', 'Adrien');
insert into candidats values(02, 05, 'FEISSLI', 'Carolanne');
insert into candidats values(02, 06, 'GETAZ', 'Boris');
insert into candidats values(02, 07, 'GUTIERREZ', 'Pablo');
insert into candidats values(02, 08, 'LASSEB', 'Karim');
insert into candidats values(02, 09, 'MARTELLI', 'Lara');
insert into candidats values(02, 10, 'RIVOLA', 'Filippo');
insert into candidats values(02, 11, 'ROUGET', 'Line');
insert into candidats values(02, 12, 'SCHERLY', 'Myriam');
insert into candidats values(02, 13, 'TRAN-NHU', 'Thanh-My');
insert into candidats values(02, 14, 'WAEBER', 'Julien-Clément');
insert into candidats values(02, 15, 'WAEGER', 'Joël');
insert into listes values(03, 'Action Nationale - démocrates suisses - VD');
insert into candidats values(03, 01, 'GURTNER', 'Robert');
insert into candidats values(03, 02, 'RODRIGUEZ', 'Chantal');
insert into candidats values(03, 03, 'DUPONT', 'Bruno');
insert into candidats values(03, 04, 'VERNAY', 'Pierre-Maurice');
insert into candidats values(03, 05, 'JACOT', 'GUILLARMOD Blaise');
insert into candidats values(03, 06, 'VERNAY', 'Marguerite');
insert into listes values(04, 'UDC - Union Démocratique du Centre Jeunes UDC');
insert into candidats values(04, 01, 'BUFFAT', 'Michaël');
insert into candidats values(04, 02, 'KARLEN', 'Dylan');
insert into candidats values(04, 03, 'MASSEREY', 'Nicolas');
insert into candidats values(04, 04, 'DUBOIS', 'Maeva');
insert into candidats values(04, 05, 'CHRISTE', 'Valentin');
insert into candidats values(04, 06, 'URSENBACHER', 'Marc');
insert into candidats values(04, 07, 'LOSA', 'Michele');
insert into candidats values(04, 08, 'KUONEN', 'Axel');
insert into candidats values(04, 09, 'SCHNEEBERGER', 'Ludovic');
insert into candidats values(04, 10, 'SCHOBINGER', 'Bastien');
insert into candidats values(04, 11, 'ALEKSIC', 'Mirjana');
insert into candidats values(04, 12, 'RAPAZ', 'Grégoire');
insert into candidats values(04, 13, 'SCHLIENGER-JUNOD', 'Sandrine');
insert into candidats values(04, 14, 'HYNES', 'Kevin');
insert into candidats values(04, 15, 'VANANTY', 'Stéphane');
insert into candidats values(04, 16, 'WEISSERT', 'Christophe');
insert into candidats values(04, 17, 'EQUEY', 'Steve-François');
insert into candidats values(04, 18, 'ZIEHLI', 'Yohan');
insert into listes values(05, 'MCR-MCVD');
insert into candidats values(05, 01, 'JUNOD', 'Bernard');
insert into candidats values(05, 02, 'FTZNER', 'Mathias');
insert into candidats values(05, 03, 'VILLARD', 'Roland');
insert into candidats values(05, 04, 'CORBOZ', 'André');
insert into candidats values(05, 05, 'GRIVET', 'Jean-Louis');
insert into candidats values(05, 06, 'DA', 'FONSECA Antonio');
insert into candidats values(05, 07, 'GYGAX', 'Roger');
insert into candidats values(05, 08, 'MAEDER', 'Peter Rudolf');
insert into candidats values(05, 09, 'ROTTET', 'Manuela');
insert into candidats values(05, 10, 'CORDANI', 'Tiziana');
insert into candidats values(05, 11, 'VONNEZ', 'Antoine');
insert into candidats values(05, 12, 'HENRY', 'Raphaël');
insert into candidats values(05, 13, 'HENRY', 'Sabrina');
insert into listes values(06, 'PS - Parti socialiste vaudois');
insert into candidats values(06, 01, 'SAVARY', 'Géraldine');
insert into candidats values(06, 02, 'NORDMANN', 'Roger');
insert into candidats values(06, 03, 'MARRA', 'Ada');
insert into candidats values(06, 04, 'VORUZ', 'Eric');
insert into candidats values(06, 05, 'AUBERT', 'Josiane');
insert into candidats values(06, 06, 'BARRAUD', 'Olivier');
insert into candidats values(06, 07, 'AMARELLE', 'Cesla');
insert into candidats values(06, 08, 'MONTANGERO', 'Stéphane');
insert into candidats values(06, 09, 'RUIZ', 'Rebecca');
insert into candidats values(06, 10, 'SCHWAAB', 'Jean-Christophe');
insert into candidats values(06, 11, 'FREYMOND', 'CANTONE Fabienne');
insert into candidats values(06, 12, 'MATTENBERGER', 'Nicolas');
insert into candidats values(06, 13, 'LACHAT', 'Patricia Dominique');
insert into candidats values(06, 14, 'RYDLO', 'Alexandre');
insert into candidats values(06, 15, 'GAY', 'VALLOTTON Michèle');
insert into candidats values(06, 16, 'CHERIX', 'François');
insert into candidats values(06, 17, 'PELLET', 'Jacqueline');
insert into candidats values(06, 18, 'STRASSER', 'Rudolf');
insert into listes values(07, 'Parti Evangélique Vaud');
insert into candidats values(07, 01, 'OPPLIGER', 'Roland');
insert into candidats values(07, 02, 'TANNER', 'Steve');
insert into candidats values(07, 03, 'BOESCH', 'Philippe');
insert into candidats values(07, 04, 'RENTSCH', 'Dora');
insert into candidats values(07, 05, 'GUIGNARD', 'Katia');
insert into candidats values(07, 06, 'DONALDSON', 'Colin');
insert into candidats values(07, 07, 'HYKA', 'Silvia');
insert into candidats values(07, 08, 'HAUSMANN', 'David');
insert into candidats values(07, 09, 'YERSIN', 'Daisy');
insert into candidats values(07, 10, 'BAUMELER', 'David');
insert into candidats values(07, 11, 'CURINGA', 'Patrick');
insert into candidats values(07, 12, 'BACHMANN', 'François');
insert into candidats values(07, 13, 'COLLOMB', 'Yann');
insert into candidats values(07, 14, 'ROCHAT', 'Kerstin');
insert into candidats values(07, 15, 'EGG', 'Matthias');
insert into candidats values(07, 16, 'BRÉCHET', 'Jean-Marc');
insert into candidats values(07, 17, 'FAVRE', 'Hannah');
insert into candidats values(07, 18, 'BRANDT', 'Anne');
insert into listes values(08, 'Union Démocratique Fédérale');
insert into candidats values(08, 01, 'BERNHARD', 'Maximilien');
insert into candidats values(08, 02, 'WULLIAMOZ', 'Jérôme');
insert into candidats values(08, 03, 'MEYLAN', 'Jean-Louis');
insert into candidats values(08, 04, 'DELAPIERRE', 'Roland');
insert into candidats values(08, 05, 'AVONDET', 'Myriam');
insert into candidats values(08, 06, 'KAPPELER', 'Philippe');
insert into candidats values(08, 07, 'BLUNIER', 'CERRUELA Patricia');
insert into candidats values(08, 08, 'SCHNEIDER', 'Maryse');
insert into candidats values(08, 09, 'FIECHTER', 'Enrico');
insert into candidats values(08, 10, 'MAYER', 'David');
insert into candidats values(08, 11, 'CHAPUIS', 'Jean-David');
insert into candidats values(08, 12, 'BLANCHOUD', 'Anna');
insert into candidats values(08, 13, 'BALSIGER', 'Jean-Rodolphe');
insert into candidats values(08, 14, 'HERREN', 'Serge');
insert into candidats values(08, 15, 'WULLIAMOZ', 'David');
insert into candidats values(08, 16, 'MULLER', 'Walter');
insert into candidats values(08, 17, 'CRETIN-MEYLAN', 'Christine');
insert into candidats values(08, 18, 'SUTER', 'Luc-Olivier');
insert into listes values(09, 'PLR.Les Radicaux Vaud');
insert into candidats values(09, 01, 'MORET', 'Isabelle');
insert into candidats values(09, 02, 'FRANCAIS', 'Olivier');
insert into candidats values(09, 03, 'BORLOZ', 'Frédéric');
insert into candidats values(09, 04, 'BUFFAT', 'Marc-Olivier');
insert into candidats values(09, 05, 'CALPINI', 'Christa');
insert into candidats values(09, 06, 'DUTRUY', 'Nicolas');
insert into candidats values(09, 07, 'FELLER', 'Olivier');
insert into candidats values(09, 08, 'FURRER', 'Grégoire');
insert into candidats values(09, 09, 'GILLARD', 'Nicolas');
insert into candidats values(09, 10, 'GRATIER', 'Tristan');
insert into candidats values(09, 11, 'HURNI', 'Véronique');
insert into candidats values(09, 12, 'KELLER', 'Pierre');
insert into candidats values(09, 13, 'MARK', 'Olivier');
insert into candidats values(09, 14, 'NICOD', 'Bernard');
insert into candidats values(09, 15, 'ROULET-GRIN', 'Pierrette');
insert into candidats values(09, 16, 'SCHENK', 'Frédéric');
insert into candidats values(09, 17, 'SONNAY', 'Eric');
insert into candidats values(09, 18, 'WINKLER', 'Christine');
insert into listes values(10, 'Parti vert''libéral');
insert into candidats values(10, 01, 'CHEVALLEY', 'Isabelle');
insert into candidats values(10, 02, 'COURDESSE', 'Régis');
insert into candidats values(10, 03, 'HAURY', 'Jacques-André');
insert into candidats values(10, 04, 'BORNAND', 'Lilly');
insert into candidats values(10, 05, 'BERNEY', 'Michel');
insert into candidats values(10, 06, 'DICK', 'Anne-Marie');
insert into candidats values(10, 07, 'BONA', 'Urs');
insert into candidats values(10, 08, 'GILLARDIN', 'GRAF Anne');
insert into candidats values(10, 09, 'DEMAUREX', 'Aurélien');
insert into candidats values(10, 10, 'LIO', 'Lena');
insert into candidats values(10, 11, 'ETHENOZ', 'Pierre');
insert into candidats values(10, 12, 'RICHARD', 'Claire');
insert into candidats values(10, 13, 'GALLIKER', 'Alain');
insert into candidats values(10, 14, 'SCHALLER', 'Graziella');
insert into candidats values(10, 15, 'LEROY-BEAULIEU', 'Benjamin');
insert into candidats values(10, 16, 'POINTET', 'François');
insert into candidats values(10, 17, 'VALLAT', 'Patrick');
insert into candidats values(10, 18, 'WARPELIN', 'Billy');
insert into listes values(11, 'Parti Pirate Vaudois');
insert into candidats values(11, 01, 'MARMILLOD', 'Gaël');
insert into candidats values(11, 02, 'GARDET', 'Joel');
insert into candidats values(11, 03, 'MORET', 'Thomas');
insert into candidats values(11, 04, 'LANGUETIN', 'Fabien');
insert into candidats values(11, 05, 'GASCHEN', 'Christopher');
insert into candidats values(11, 06, 'CLERC', 'Alexis');
insert into candidats values(11, 07, 'MATAR', 'Bassim');
insert into candidats values(11, 08, 'JEANNERET', 'Cédric');
insert into listes values(12, 'UDC - Union Démocratique du Centre');
insert into candidats values(12, 01, 'PARMELIN', 'Guy');
insert into candidats values(12, 02, 'GLAUSER', 'Alice');
insert into candidats values(12, 03, 'BUGNON', 'André');
insert into candidats values(12, 04, 'GRIN', 'Jean-Pierre');
insert into candidats values(12, 05, 'VEILLON', 'Pierre-François');
insert into candidats values(12, 06, 'VOIBLET', 'Claude-Alain');
insert into candidats values(12, 07, 'KARLEN', 'Pierre-Alain');
insert into candidats values(12, 08, 'DUCOMMUN', 'Philippe');
insert into candidats values(12, 09, 'RUBATTEL', 'Denis');
insert into candidats values(12, 10, 'DAINA', 'Nicolas');
insert into candidats values(12, 11, 'DESPOT', 'Fabienne');
insert into candidats values(12, 12, 'SORDET', 'Jean-Marc');
insert into candidats values(12, 13, 'BORY', 'Marc-André');
insert into candidats values(12, 14, 'STAUBER', 'Philipp');
insert into candidats values(12, 15, 'BONJOUR', 'Eric');
insert into candidats values(12, 16, 'MIEVILLE', 'Michel');
insert into candidats values(12, 17, 'MARGUET', 'Michaël');
insert into candidats values(12, 18, 'JOBIN', 'Philippe');
insert into listes values(13, 'PDC Génération 20-40');
insert into candidats values(13, 01, 'MARION', 'Axel');
insert into candidats values(13, 02, 'JAQUENOUD', 'Antoine');
insert into candidats values(13, 03, 'CORNUT', 'Sandrine');
insert into candidats values(13, 04, 'MÜLLER', 'Valentin');
insert into candidats values(13, 05, 'ROUD', 'Jean-Nicolas');
insert into candidats values(13, 06, 'STAUFFER', 'David');
insert into candidats values(13, 07, 'DONZÉ', 'Manuel');
insert into candidats values(13, 08, 'CARRON', 'Joëlle');
insert into candidats values(13, 09, 'NEIRYNCK', 'Julien');
insert into candidats values(13, 10, 'BÉGLÉ', 'Arnaud');
insert into candidats values(13, 11, 'ODY', 'Jean-Eudes');
insert into candidats values(13, 12, 'DESPONDS', 'Alexandre');
insert into listes values(14, 'Parti Bourgeois et Démocratique du canton de Vaud');
insert into candidats values(14, 01, 'BELOTTI', 'Romain');
insert into candidats values(14, 02, 'BOSCHETTI', 'Steen');
insert into candidats values(14, 03, 'BURNAND', 'Frédéric');
insert into candidats values(14, 04, 'CHEVALLAZ', 'BELOTTI Evelyne');
insert into candidats values(14, 05, 'CHEVALLAZ', 'Martin');
insert into candidats values(14, 06, 'GONIN', 'Ludovic');
insert into candidats values(14, 07, 'MONNEY', 'François');
insert into candidats values(14, 08, 'MONNIER', 'Luc');
insert into candidats values(14, 09, 'PERNET', 'Pierre');
insert into listes values(15, 'La Gauche - POP & Gauche en mouvement');
insert into candidats values(15, 01, 'SANSONNENS', 'Julien');
insert into candidats values(15, 02, 'FRUND', 'Sarah');
insert into candidats values(15, 03, 'ALABAY', 'Behram');
insert into candidats values(15, 04, 'APARICIO', 'Isabelle');
insert into candidats values(15, 05, 'BLANC', 'Jean-Baptiste');
insert into candidats values(15, 06, 'BOREL', 'Bernard');
insert into candidats values(15, 07, 'CONOD', 'Aloïs Olivier');
insert into candidats values(15, 08, 'DIVORNE', 'Didier');
insert into candidats values(15, 09, 'DUDT', 'Jean-Paul');
insert into candidats values(15, 10, 'GRAND-GREUB', 'Hélène');
insert into candidats values(15, 11, 'JAQUET', 'Christiane');
insert into candidats values(15, 12, 'JEANNERET', 'Pierre');
insert into candidats values(15, 13, 'MISIEGO', 'Céline');
insert into candidats values(15, 14, 'PINSON', 'Gavriel');
insert into candidats values(15, 15, 'ROUYET', 'Jean-Pierre');
insert into candidats values(15, 16, 'SARRASIN', 'Larry');
insert into candidats values(15, 17, 'TETAZ', 'Myriam');
insert into candidats values(15, 18, 'TORRIANI', 'Elena');
insert into listes values(16, 'PLR.Les Libéraux Vaud');
insert into candidats values(16, 01, 'DERDER', 'Fathi');
insert into candidats values(16, 02, 'ASSAL', 'Mercédès');
insert into candidats values(16, 03, 'BARDE', 'Cédric');
insert into candidats values(16, 04, 'BAUDET', 'Julie');
insert into candidats values(16, 05, 'BLANC', 'Mathieu');
insert into candidats values(16, 06, 'BOLAY', 'Guy-Philippe');
insert into candidats values(16, 07, 'BONNY', 'Dominique');
insert into candidats values(16, 08, 'FUCINOS', 'Manuel');
insert into candidats values(16, 09, 'GEX', 'Philippe');
insert into candidats values(16, 10, 'KELLER', 'Felix');
insert into candidats values(16, 11, 'LABOUCHERE', 'Catherine');
insert into candidats values(16, 12, 'LASSERRE', 'ROUILLER Colette');
insert into candidats values(16, 13, 'LEUBA', 'Nicolas');
insert into candidats values(16, 14, 'MASMEJAN', 'Lydia');
insert into candidats values(16, 15, 'MINGARD', 'Christophe');
insert into candidats values(16, 16, 'REYMOND', 'Jacques');
insert into candidats values(16, 17, 'ROSTAN', 'Jacqueline');
insert into candidats values(16, 18, 'WYSSA', 'Stéphane');
insert into listes values(17, 'PLR.ECO2 Ecologie - Economie');
insert into candidats values(17, 01, 'PERRIN', 'Charles-Denis');
insert into candidats values(17, 02, 'TRIPET', 'Nicolas');
insert into candidats values(17, 03, 'BAUD', 'Georges');
insert into candidats values(17, 04, 'BELOTTI', 'Daniel');
insert into candidats values(17, 05, 'CAVIN', 'Pierre-André');
insert into candidats values(17, 06, 'CHARBON', 'Stéphane');
insert into candidats values(17, 07, 'CHITRA', 'SAVIOZ Emilie');
insert into candidats values(17, 08, 'CORNAMUSAZ', 'Alain');
insert into candidats values(17, 09, 'DEGAUDENZI', 'Dominique');
insert into candidats values(17, 10, 'EHRLICH', 'Marc');
insert into candidats values(17, 11, 'MASSIN', 'Hubert');
insert into candidats values(17, 12, 'MAWJEE', 'Rasul');
insert into candidats values(17, 13, 'MONGE', 'Olivier');
insert into candidats values(17, 14, 'NELLEN', 'Stefan');
insert into candidats values(17, 15, 'REBETEZ', 'Christophe');
insert into candidats values(17, 16, 'REICH', 'Philippe');
insert into candidats values(17, 17, 'SCHELKER', 'Carole');
insert into candidats values(17, 18, 'VERAGUTH', 'Marc');
insert into listes values(18, 'Les Verts - Mouvement écologiste vaudois');
insert into candidats values(18, 01, 'RECORDON', 'Luc');
insert into candidats values(18, 02, 'THORENS', 'GOUMAZ Adèle');
insert into candidats values(18, 03, 'VAN', 'SINGER Christian');
insert into candidats values(18, 04, 'FRUND', 'Vinciane');
insert into candidats values(18, 05, 'MAHAIM', 'Raphaël');
insert into candidats values(18, 06, 'TANNER', 'Carmen');
insert into candidats values(18, 07, 'PILLONEL', 'Cédric');
insert into candidats values(18, 08, 'BAEHLER', 'BECH Anne');
insert into candidats values(18, 09, 'TOLUSSO', 'Clémens');
insert into candidats values(18, 10, 'BAVAUD', 'Sandrine');
insert into candidats values(18, 11, 'ZWAHLEN', 'Jacques');
insert into candidats values(18, 12, 'MICHAUD', 'GIGON Sophie');
insert into candidats values(18, 13, 'MARGUET', 'Paul-Henri');
insert into candidats values(18, 14, 'KRIER', 'Irina');
insert into candidats values(18, 15, 'CHOLLET', 'Jean-Marc');
insert into candidats values(18, 16, 'JUNGCLAUS', 'DELARZE Susanne');
insert into candidats values(18, 17, 'HUBLEUR', 'Frédéric');
insert into candidats values(18, 18, 'PINTO-LISCHER', 'Helene Helene');
insert into listes values(19, 'PDC');
insert into candidats values(19, 01, 'NEIRYNCK', 'Jacques');
insert into candidats values(19, 02, 'MOSSI', 'Michele');
insert into candidats values(19, 03, 'BÉGLÉ', 'Claude');
insert into candidats values(19, 04, 'BOTTLANG-PITTET', 'Jaqueline');
insert into candidats values(19, 05, 'VILLA', 'Sylvie');
insert into candidats values(19, 06, 'HENZELIN', 'Bertrand');
insert into candidats values(19, 07, 'DE', 'PREUX Thierry');
insert into candidats values(19, 08, 'SAGBO', 'Serge');
insert into candidats values(19, 09, 'FARINE', 'Jean-Claude');
insert into candidats values(19, 10, 'PEIRY-KLUNGE', 'Florence');
insert into candidats values(19, 11, 'BARJOLLE', 'MUSARD Dominique');
insert into candidats values(19, 12, 'RUFFIEUX', 'Christian');
insert into candidats values(19, 13, 'MEYLAN', 'François');
insert into candidats values(19, 14, 'CHEVALIER', 'DELERCE Céline');
insert into candidats values(19, 15, 'PASQUIER', 'Benoît');
insert into candidats values(19, 16, 'GOMEZ', 'ARANCIBIA Sara');
insert into candidats values(19, 17, 'NUNES', 'José');
insert into candidats values(19, 18, 'THURRE', 'Jean-Pierre');
insert into listes values(20, 'Parti Nationaliste Suisse - PNS - PNOS');
insert into candidats values(20, 01, 'BRENNENSTUHL', 'PHILIPPE');
insert into listes values(21, 'Les Verts - Les Jeunes Vert-e-s');
insert into candidats values(21, 01, 'MOCCHI', 'Alberto');
insert into candidats values(21, 02, 'GENOUD', 'Alice');
insert into candidats values(21, 03, 'ROCHAT', 'Yannick');
insert into candidats values(21, 04, 'BORREGO', 'Joana');
insert into candidats values(21, 05, 'MELLINA', 'Maxime');
insert into candidats values(21, 06, 'PORCHET', 'Léonore');
insert into candidats values(21, 07, 'KOLLER', 'Sarah');
insert into candidats values(21, 08, 'SIMOS', 'Dimitri');
insert into candidats values(21, 09, 'RUSSBACH', 'Magali');
insert into candidats values(21, 10, 'RAEDLER', 'David');
insert into candidats values(21, 11, 'COMPANY', 'Xavier');
insert into candidats values(21, 12, 'SCHERZ', 'Aline');
insert into candidats values(21, 13, 'MAURY', 'Yannick');
insert into candidats values(21, 14, 'BOUCHEZ', 'Géraldine');
insert into candidats values(21, 15, 'RAYMONDON', 'Guillaume');
insert into candidats values(21, 16, 'BOTTERON', 'Anne-Laure');
insert into candidats values(21, 17, 'BEAUVERD', 'Valérie');
insert into candidats values(21, 18, 'BEETSCHEN', 'Céline');
insert into listes values(22, 'PLR.Les Jeunes Libéraux - Radicaux Vaud');
insert into candidats values(22, 01, 'LOPEZ', 'Barry');
insert into candidats values(22, 02, 'ENGEL', 'Oriane');
insert into candidats values(22, 03, 'ARLETTAZ', 'Vincent');
insert into candidats values(22, 04, 'BIARD-CHAUVET', 'Alexandre');
insert into candidats values(22, 05, 'BIRBAUM', 'Adrienne');
insert into candidats values(22, 06, 'CARREL', 'Matthieu');
insert into candidats values(22, 07, 'CLAPASSON', 'Julien');
insert into candidats values(22, 08, 'HISLAIRE', 'William');
insert into candidats values(22, 09, 'MICELI', 'Romain');
insert into candidats values(22, 10, 'MULLER', 'Baptiste');
insert into candidats values(22, 11, 'RACINE', 'Quentin');
insert into candidats values(22, 12, 'REYMOND', 'Marc');
insert into candidats values(22, 13, 'RYAN', 'Hannah');
insert into candidats values(22, 14, 'SÉGURA', 'Marion Morgane');
insert into candidats values(22, 15, 'THÉVOZ', 'Olivier');
insert into candidats values(22, 16, 'WUERSCH', 'Maxim');
insert into candidats values(22, 17, 'YOAKIM', 'William');
insert into candidats values(22, 18, 'ZWICKY', 'Cédric');
commit;
