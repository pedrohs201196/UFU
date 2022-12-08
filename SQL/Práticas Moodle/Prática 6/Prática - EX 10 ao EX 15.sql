-- Grupo PK
SET SEARCH_PATH TO banco;
-- 10) CONSULTAS COM JUNÇÕES ENVOLVENDO DUAS TABELAS  
-- >> Atenção: colocar a condição de junção no FROM e demais condição no WHERE
-- (a) Listar o número funcional e o nome de todos os funcionarios juntamente com todos os seus dependentes
SELECT num_funcional,nome,nome_dependente FROM funcionario INNER JOIN dependentes ON num_funcional = funcionario;
/*
3;"Daniel Dias Alves";"Rodney Alves"
2;"Fabricio Ismael";"Mateus Felipe"
5;"Jose Roberto";"Carlos Eduardo"
1;"Thiago Moreira Borges";"Jonas Augusto"
4;"Johnata Ferreira";"Danilo Borges"
100;"﻿Brenda Melo";"﻿Diego Castro"
101;"Leonor Goncalves";"Laura Martins"
102;"Luiz Cunha";"Maria Cavalcanti"
103;"Carlos Sousa";"Gabrielle Barros"
104;"Paulo Barbosa";"Amanda Fernandes"
700;"Joao da Silva";"Camila Almeida"
701;"Jose da Costa";"Vanessa Tavares"
702;"Joaquim Nascimento";"Felipe Amaral"
703;"Francisco da Silva";"Joao do Pulo"
704;"Jair das Couves";"Willian Alves"
800;"Antonio Oliveira";"Mariana Oliveira"
801;"Cesar Naves";"Kauã Naves"
802;"Maria Aparecida";"Eliane Aparecida"
802;"Maria Aparecida";"Pedro Dias"
804;"Flavia de Almeida";"Ana Laura de Almeida"
900;"Lorenzo Breno Cauê Almeida";"Elisa Caroline Araújo"
901;"Cauê Davi Enrico da Silva";"Lara Juliana Lorena de Paula"
902;"Julio Igor Cauã Campos";"Nicole Brenda Barros"
903;"Nicolas Breno Luan Moura";"Heloisa Juliana da Silva"
904;"Miguel Ricardo Costa";"Julia Mirella Souza"
1100;"Caio";"Kevin De Bruyne"
1100;"Caio";"David Silva"
1101;"Luiz";"Joe Hart"
1101;"Luiz";"Vincent Kompany"
1102;"Rafael";"Nicolas Otamendi"
1102;"Rafael";"Bacary Sagna"
1103;"Carlos";"Gael Clichy"
1103;"Carlos";"Fernandinho"
1104;"Lionel Messi";"Yaya Toure"
1104;"Lionel Messi";"Sergio Aguero"
1105;"Jose Roberto";"Kelechi Iheanacho"
1105;"Jose Roberto";"Ikay Gundogan"
1300;"Arthur";"Caio"
1301;"Rhaniel";"Rafael"
1302;"Jean";"Josino"
1303;"Sandro";"Gabriel"
1304;"Augusto";"Thiago"
1720;"Lucas Rezende";"Roberto Alvarez"
1721;"Cristiane Dias";"Paula Siqueira"
1722;"Paulo Roberto";"Igor Motta"
1728;"Ricardo Filho";"Bruno Roberto"
1729;"Maria da Silva";"Matheus Dias"
1600;"Adão Casalinho";"Abigail Casalinho"
1601;"Adélia Barroqueiro";"Adelaide Barroqueiro"
1602;"Alarico Alancastro";"Adosindo Alancastro"
1603;"Alcides Zagalo";"Aida Zagalo"
1604;"Aluísio Gentil";"Alcides Gentil"
1605;"Aluísio Herrera";"Aleixo Herrera"
1606;"Alvito Cachão";"Aniana Cachão"
1607;"Amílcar Soeiro";"Antão Soeiro"
1608;"Anhangüera Silva";"Aníbal Silva"
1609;"Apoena Villar";"Apoena Villar"
1610;"Arcidres Fonseca";"Augusta Fonseca"
1611;"Arminda Carneiro";"Baltasar Carneiro"
1612;"Baltasar Otero";"Bernardino Otero"
1613;"Barnabé Cesário";"Blasco Cesário"
1614;"Belmira Rodrigues";"Boaventura Rodrigues"
1615;"Bernardina Pereira";"Burtira Pereira"
1616;"Bernardo Vellozo";"Bárbara Vellozo"
1617;"Caetano Louzada";"Capitolina Louzada"
1618;"Camila Almeida";"Catarino Almeida"
1619;"Caubi Villar";"Cecília Villar"
1620;"Celso Vasconcellos";"Comecus Vasconcellos"
1621;"Clarisse Espírito Santo";"Dinarte Espírito Santo"
1622;"Claudemira Villela";"Dorindo Villela"
1623;"Cosme Palha";"Dulce Palha"
1624;"Célia Lobato";"Elba Lobato"
1625;"Delfina Ornelas";"Eládio Ornelas"
1626;"Denise Taperebá";"Emílio Taperebá"
1627;"Diamantino Pozas";"Ernesto Pozas"
1628;"Dinarte Torrado";"Eunice Torrado"
1629;"Domingos Antas";"Evangelista Antas"
1630;"Dorindo Portela";"Ezequiel Portela"
1631;"Délio Grangeia";"Fabiano Grangeia"
1632;"Eduardo Palmeira";"Feliciano Palmeira"
1633;"Eloi Amarante";"Filipa Amarante"
1634;"Emiliano Gracia";"Florbela Gracia"
1635;"Emílio García";"Genoveva García"
1636;"Epaminondas Marcondes";"Gertrudes Marcondes"
1637;"Eva Quinterno";"Giovana Quinterno"
1638;"Feliciana Ventura";"Honorina Ventura"
1639;"Felícia Quinzeiro";"Horácio Quinzeiro"
1640;"Fernão Ataí";"Ilídio Ataí"
1641;"Filena Vilhena";"Iraci Vilhena"
1642;"Flamínia Vega";"Jadir Vega"
1643;"Flávia Meirelles";"Jamari Meirelles"
1644;"Fábio Pamplona";"Juliano Pamplona"
1645;"Gaspar Tavera";"Laura Tavera"
1646;"Gonçalo Carvalhaes";"Laurinda Carvalhaes"
1647;"Guido Morais";"Leopoldina Morais"
1648;"Hipólito Quadros";"Lina Quadros"
1649;"Ildefonso Castello Branco";"Lídia Castello Branco"
1650;"Jacinto Garcez";"Lígia Garcez"
1625;"Delfina Ornelas";"Efraim Ornelas"
1626;"Denise Taperebá";"Jakquelini Taperebá"
1627;"Diamantino Pozas";"Ricardo Pozas"
1628;"Dinarte Torrado";"Vanderlei Torrado"
1629;"Domingos Antas";"Ana Paula Antas"
1630;"Dorindo Portela";"Debora Portela"
1631;"Délio Grangeia";"Monalisa Grangeia"
1632;"Eduardo Palmeira";"Geraldo Palmeira"
1633;"Eloi Amarante";"Juliana Amarante"
1634;"Emiliano Gracia";"Nayani Gracia"
1635;"Emílio García";"Aniangeles García"
1636;"Epaminondas Marcondes";"Leila Marcondes"
1637;"Eva Quinterno";"José Quinterno"
1638;"Feliciana Ventura";"Paulo Ventura"
1639;"Felícia Quinzeiro";"Wander Quinzeiro"
1640;"Fernão Ataí";"Mariana Ataí"
1641;"Filena Vilhena";"Jule Vilhena"
1642;"Flamínia Vega";"Jéssica Vega"
1643;"Flávia Meirelles";"Jéssyca Meirelles"
1644;"Fábio Pamplona";"Lorena Pamplona"
1645;"Gaspar Tavera";"Fernanda Tavera"
1646;"Gonçalo Carvalhaes";"Horácio Carvalhaes"
1647;"Guido Morais";"Daniel Morais"
1648;"Hipólito Quadros";"Lino Quadros"
1649;"Ildefonso Castello Branco";"Matthew Castello Branco"
1650;"Jacinto Garcez";"Dominic Garcez"
1651;"Janaína Paranaguá";"Lília Paranaguá"
1652;"Jorgina Anlicoara";"Marlene Anlicoara"
1653;"Julieta Villas Boas";"Matias Villas Boas"
1654;"Laurinda Dutra";"Maíra Dutra"
1655;"Laurinda Lima";"Melissa Lima"
1656;"Liedson Domingos";"Mem Domingos"
1657;"Liliana Brites";"Miguelina Brites"
1658;"Marco Mortágua";"Mileide Mortágua"
1659;"Marilda Toledo";"Minervina Toledo"
1660;"Melissa Chousa";"Moaci Chousa"
1661;"Mem Mangueira";"Márcia Mangueira"
1662;"Natália Reyes";"Máxima Reyes"
1663;"Nazaré Arantes";"Máximo Arantes"
1664;"Nicolau Travassos";"Neuza Travassos"
1665;"Noémia Cavadas";"Nídia Cavadas"
1666;"Nádia Monforte";"Oriana Monforte"
1667;"Olavo Negromonte";"Palmira Negromonte"
1668;"Olga Jucá";"Piedade Jucá"
1669;"Ordonho Lira";"Piedade Lira"
1670;"Palmira Garcés";"Piedade Garcés"
1671;"Paulino Brião";"Plácido Brião"
1672;"Pedro Valido";"Potira Valido"
1673;"Plínio Moita";"Querubim Moita"
1674;"Potira Caminha";"Raimundo Caminha"
1651;"Janaína Paranaguá";"Anderson Paranaguá"
1652;"Jorgina Anlicoara";"Lélio Anlicoara"
1653;"Julieta Villas Boas";"Tainá Villas Boas"
1654;"Laurinda Dutra";"Analinda Dutra"
1655;"Laurinda Lima";"Cássia Lima"
1656;"Liedson Domingos";"Christopher Domingos"
1657;"Liliana Brites";"Dom Brites"
1658;"Marco Mortágua";"Chris Mortágua"
1659;"Marilda Toledo";"Matt Toledo"
1660;"Melissa Chousa";"Hector Chousa"
1661;"Mem Mangueira";"Fabrício Mangueira"
1662;"Natália Reyes";"Neuler Reyes"
1663;"Nazaré Arantes";"Neuber Arantes"
1664;"Nicolau Travassos";"Gislaine Travassos"
1665;"Noémia Cavadas";"Rodolfo Cavadas"
1666;"Nádia Monforte";"Kleverson Monforte"
1667;"Olavo Negromonte";"Paula Negromonte"
1668;"Olga Jucá";"Jussara Jucá"
1669;"Ordonho Lira";"Moisés Lira"
1670;"Palmira Garcés";"Renato Garcés"
1671;"Paulino Brião";"Fausto Brião"
1672;"Pedro Valido";"Nikolas Valido"
1673;"Plínio Moita";"Diogo Moita"
1674;"Potira Caminha";"Matheus Caminha"
1651;"Janaína Paranaguá";"Eli Paranaguá"
1652;"Jorgina Anlicoara";"Célia Anlicoara"
1653;"Julieta Villas Boas";"Marta Villas Boas"
1654;"Laurinda Dutra";"Carlos Dutra"
1655;"Laurinda Lima";"Joana Lima"
1656;"Liedson Domingos";"Ephram Domingos"
1657;"Liliana Brites";"Kal-El Brites"
1658;"Marco Mortágua";"Kárita Mortágua"
1659;"Marilda Toledo";"Harry Toledo"
1660;"Melissa Chousa";"Pedro Chousa"
1661;"Mem Mangueira";"Marcelo Mangueira"
1662;"Natália Reyes";"Arthur Reyes"
1663;"Nazaré Arantes";"Sheila Arantes"
1664;"Nicolau Travassos";"Patrícia Travassos"
1665;"Noémia Cavadas";"Neide Cavadas"
1666;"Nádia Monforte";"Cleber Monforte"
1667;"Olavo Negromonte";"Bruno Negromonte"
1668;"Olga Jucá";"Bruno Jucá"
1669;"Ordonho Lira";"Bruno Lira"
1670;"Palmira Garcés";"Bruna Garcés"
1671;"Paulino Brião";"Giselle Brião"
1672;"Pedro Valido";"Juliette Valido"
1673;"Plínio Moita";"Jefferson Moita"
1674;"Potira Caminha";"Jordan Caminha"
*/
-- (b) Listar os nomes dos funcionários e os municípios em que eles trabalham
SELECT f.nome,municipio FROM funcionario f INNER JOIN agencia ON agencia = codigo;
/*
"Thiago Moreira Borges";"Aquidauana"
"Fabricio Ismael";"Aparecida do Taboado"
"Daniel Dias Alves";"Angelica"
"Johnata Ferreira";"Anaurilandia"
"Jose Roberto";"Amamba"
"﻿Brenda Melo";"RIO DE JANEIRO"
"Leonor Goncalves";"RIO DE JANEIRO"
"Luiz Cunha";"RIO DE JANEIRO"
"Carlos Sousa";"TERESOPOLIS"
"Paulo Barbosa";"RIO DE JANEIRO"
"Joao da Silva";"Uberlândia"
"Jose da Costa";"Uberlândia"
"Joaquim Nascimento";"Belo Horizonte"
"Francisco da Silva";"Uberlândia"
"Jair das Couves";"Uberlândia"
"Antonio Oliveira";"Porto Alegre"
"Cesar Naves";"Porto Alegre"
"Maria Aparecida";"Passo Fundo"
"Evandro Santos";"Passo Fundo"
"Flavia de Almeida";"Santa Maria"
"Gustavo Dias";"Porto Alegre"
"Sebastião José";"Porto Alegre"
"Ana Maria Matias";"Passo Fundo"
"Bruna Castro";"Passo Fundo"
"Hiago Cintra";"Santa Maria"
"Thiago Nunes";"Porto Alegre"
"Alisson dos Reis";"Porto Alegre"
"Eduardo Oliveira";"Passo Fundo"
"Josiane Silva";"Passo Fundo"
"Natalia Araujo";"Santa Maria"
"Lorenzo Breno Cauê Almeida";"blumenau"
"Cauê Davi Enrico da Silva";"blumenau"
"Julio Igor Cauã Campos";"blumenau"
"Nicolas Breno Luan Moura";"blumenau"
"Miguel Ricardo Costa";"blumenau"
"Caio";"Gurupi"
"Luiz";"Bernardo Sayao"
"Carlos";"Araguaina"
"Jose Roberto";"Gurupi"
"Lionel Messi";"Palmas"
"Rafael";"Bernardo Sayao"
"Arthur";"Porto Velho"
"Rhaniel";"Porto Velho"
"Jean";"Porto Velho"
"Sandro";"Porto Velho"
"Augusto";"Porto Velho"
"Lucas Rezende";"Itapira"
"Cristiane Dias";"Bebedouro"
"Paulo Roberto";"Ribeirão Bonito"
"Ricardo Filho";"Sertãozinho"
"Maria da Silva";"Mirandopolis"
"Adão Casalinho";"SAO PAULO"
"Adélia Barroqueiro";"SAO PAULO"
"Alarico Alancastro";"SAO PAULO"
"Alcides Zagalo";"SAO PAULO"
"Aluísio Gentil";"SAO PAULO"
"Aluísio Herrera";"SAO PAULO"
"Alvito Cachão";"SAO PAULO"
"Amílcar Soeiro";"SAO PAULO"
"Anhangüera Silva";"SAO PAULO"
"Apoena Villar";"SAO PAULO"
"Arcidres Fonseca";"SAO PAULO"
"Arminda Carneiro";"SAO PAULO"
"Baltasar Otero";"SAO PAULO"
"Barnabé Cesário";"SAO PAULO"
"Belmira Rodrigues";"SAO PAULO"
"Bernardina Pereira";"SAO PAULO"
"Bernardo Vellozo";"SAO PAULO"
"Caetano Louzada";"SAO PAULO"
"Camila Almeida";"SAO PAULO"
"Caubi Villar";"SAO PAULO"
"Celso Vasconcellos";"SAO PAULO"
"Clarisse Espírito Santo";"SAO PAULO"
"Claudemira Villela";"SAO PAULO"
"Cosme Palha";"SAO PAULO"
"Célia Lobato";"SAO PAULO"
"Delfina Ornelas";"SAO PAULO"
"Denise Taperebá";"SAO PAULO"
"Diamantino Pozas";"SAO PAULO"
"Dinarte Torrado";"SAO PAULO"
"Domingos Antas";"SAO PAULO"
"Dorindo Portela";"SAO PAULO"
"Délio Grangeia";"SAO PAULO"
"Eduardo Palmeira";"SAO PAULO"
"Eloi Amarante";"SAO PAULO"
"Emiliano Gracia";"SAO PAULO"
"Emílio García";"SAO PAULO"
"Epaminondas Marcondes";"SAO PAULO"
"Eva Quinterno";"SAO PAULO"
"Feliciana Ventura";"SAO PAULO"
"Felícia Quinzeiro";"SAO PAULO"
"Fernão Ataí";"SAO PAULO"
"Filena Vilhena";"SAO PAULO"
"Flamínia Vega";"SAO PAULO"
"Flávia Meirelles";"SAO PAULO"
"Fábio Pamplona";"SAO PAULO"
"Gaspar Tavera";"SAO PAULO"
"Gonçalo Carvalhaes";"SAO PAULO"
"Guido Morais";"SAO PAULO"
"Hipólito Quadros";"SAO PAULO"
"Ildefonso Castello Branco";"SAO PAULO"
"Jacinto Garcez";"SAO PAULO"
"Janaína Paranaguá";"SAO PAULO"
"Jorgina Anlicoara";"SAO PAULO"
"Julieta Villas Boas";"SAO PAULO"
"Laurinda Dutra";"SAO PAULO"
"Laurinda Lima";"SAO PAULO"
"Liedson Domingos";"SAO PAULO"
"Liliana Brites";"SAO PAULO"
"Marco Mortágua";"SAO PAULO"
"Marilda Toledo";"SAO PAULO"
"Melissa Chousa";"SAO PAULO"
"Mem Mangueira";"SAO PAULO"
"Natália Reyes";"SAO PAULO"
"Nazaré Arantes";"SAO PAULO"
"Nicolau Travassos";"SAO PAULO"
"Noémia Cavadas";"SAO PAULO"
"Nádia Monforte";"SAO PAULO"
"Olavo Negromonte";"SAO PAULO"
"Olga Jucá";"SAO PAULO"
"Ordonho Lira";"SAO PAULO"
"Palmira Garcés";"SAO PAULO"
"Paulino Brião";"SAO PAULO"
"Pedro Valido";"SAO PAULO"
"Plínio Moita";"SAO PAULO"
"Potira Caminha";"SAO PAULO"
"Quitério Tabajara";"SAO PAULO"
"Ricardina Soares";"SAO PAULO"
"Roque Alancastre";"SAO PAULO"
"Rui Lucas";"SAO PAULO"
"Rúben Figueroa";"SAO PAULO"
"Salomé Valentín";"SAO PAULO"
"Santiago Caballero";"SAO PAULO"
"Sarita Taborda";"SAO PAULO"
"Silvana Magallanes";"SAO PAULO"
"Socorro Quadros";"SAO PAULO"
"Sonás Teles";"SAO PAULO"
"Sílvio Hierro";"SAO PAULO"
"Tadeu Monforte";"SAO PAULO"
"Teresina Varella";"SAO PAULO"
"Ubaldo Thamily";"SAO PAULO"
"Ubiratã Lucas";"SAO PAULO"
"Ulisses Canejo";"SAO PAULO"
"Valentim Themes";"SAO PAULO"
"Vanda Tabajara";"SAO PAULO"
"Verónica Eiró";"SAO PAULO"
"Xavier Balladares";"SAO PAULO"
"Xavier Vázquez";"SAO PAULO"
"Zacarias Tupinambá";"SAO PAULO"
"Zoraide Patrício";"SAO PAULO"
"Énia Leiria ";"SAO PAULO"
*/
-- (c) Listar os nomes do clientes juntamente com as informações de suas contas (código da agência e número da conta)
SELECT nome,cod_agencia,numero_conta FROM cliente INNER JOIN clienteconta ON id = id_cliente;
/*
"Arthur Cesar";"1324";993005
"José Marques";"0706";993997
"Maria Joaquina";"1323";908837
"Vitor Borges";"3928";997790
"Thais Felipe";"0743";899769
"﻿Matilde Souza";"1792";199
"Nicolas Cavalcanti";"3075";198
"Isabela Dias";"1797";197
"Cauã Pinto";"0775";196
"Daniel Almeida";"1808";195
"Joao Santana";"2918";703
"Dilma Lana";"1221";704
"Luis Inacio";"1001";701
"Aecio Neves";"1221";702
"Renan Calheiros";"5874";700
"César De Alencar Sartin";"2794";27100
"Rodrigo Francisco De Oliveira";"2794";27101
"Maria Fernanda Ferreira Da Silva";"2794";27102
"Gabriel Silva De Barros Antunes";"2794";27103
"Lorena Alves Silva Ottoni";"2794";27104
"Etiene Borges Silva";"2794";27105
"Sávio Antunes Maciel Ribeiro";"2794";27106
"Emiliano Teixeira Martins";"2794";27107
"Daniela De Oliveira Marques";"2794";27108
"Rodrigo Soares Siqueira";"2794";27109
"Isis Cristiane De Camargos Mendes";"2794";27110
"Diego Gouvêa Couto";"3536";35600
"Ruan Moraes Cardoso";"3536";35601
"Litória Maria Alves De Souza Filha";"3536";35602
"Rayane Ferreira Da Silva";"3536";35603
"Desirre Tomaz Martins Pereira";"3536";35604
"Rafael Paulino Silva Sobrinho";"3536";35605
"Cristiano Almeida Silveira";"3536";35606
"Lauriane Soares Costa";"3536";35607
"Carlos De Souza Novais";"3536";35608
"Diego Rabelo Damasceno";"3536";35609
"Victor Vinicius De Rezende";"3536";35610
"Liana Travaglia De Sousa";"3536";35611
"Tatiana Cristina Silva";"3534";35400
"Marina Barbosa De Freitas Vieira";"3534";35401
"Adriana Santos Farias";"3534";35402
"Fabricio Soares Borges";"3534";35403
"Talita Vieira Barbosa Martins";"3534";35404
"Carlos Henrique De Araujo";"3534";35405
"Angela Aparecida Silva Siqueira";"3534";35406
"Débora Cristina Alves Rita";"3534";35407
"Lorena Fonseca Martins";"3534";35408
"Letícia Maria Rosa Lima";"3534";35409
"Lais Sousa Costa";"3534";35410
"Ludmilla Vilas Boas Simoneti";"3534";35411
"Laiza Marie Roldao";"2692";26900
"Wanessa Danielly Fernandes";"2692";26901
"Sandro Mayrink Paula";"2692";26902
"Duíllio Tomaz Silva";"2692";26903
"Paulo Victor Machado Prado";"2692";26904
"Eden Vilarinho Costa Junior";"2692";26905
"Lidiane Margarida Do Carmo";"2692";26906
"Ricardo Marcelo Mota Filho";"2692";26907
"Rafael Henrique Araujo Dos Reis";"2692";26908
"Amon Ribeiro Lopes";"2692";26909
"Angelo Alves Ferreira Júnior";"2692";26910
"Francisco Assis Miguel Jardine";"2692";26911
"Gledmar Pires De Moura";"1484";14800
"Wilza Assuncao Braz";"1484";14801
"Cleo Custodio Ferreira";"1484";14802
"Isis Cristiane De Camargos Mendes";"1484";14803
"Liana Travaglia De Sousa";"1484";14804
"Ludmilla Vilas Boas Simoneti";"1484";14805
"Francisco Assis Miguel Jardine";"1484";14806
"Cleo Custodio Ferreira";"1484";14807
"Diego Rabelo Damasceno";"1484";14808
"Lorena Alves Silva Ottoni";"1484";14809
"Angela Aparecida Silva Siqueira";"1484";14810
"Victor Vinicius De Rezende";"1484";14811
"Liana Travaglia De Sousa";"1484";14812
"Laura Luna Oliveira";"0095";123
"Isabelle Pietra Pinto";"0128";456
"Tomás Miguel Rocha";"0411";789
"Heitor Cauã de Paula";"7134";321
"Luiza Flávia Rodrigues";"1232";987
"Neymar Jr";"1100";1100
"Neymar Jr";"1101";1100
"Luis Suarez";"1102";1100
"Luis Suarez";"1103";1100
"Andres Iniesta";"1104";1100
"Andres Iniesta";"1100";1101
"Ivan Rakitic";"1101";1101
"Ivan Rakitic";"1102";1101
"Jordi Alba";"1103";1101
"Jordi Alba";"1104";1101
"Marc Andre Ter Stegen";"1100";1102
"Marc Andre Ter Stegen";"1101";1102
"Daniel Alves";"1102";1102
"Daniel Alves";"1103";1102
"Rafinha";"1104";1102
"Rafinha";"1100";1103
"Arda Turan";"1101";1103
"Arda Turan";"1102";1103
"Douglas";"1103";1103
"Douglas";"1104";1103
"Marco Reus";"1100";1104
"Marco Reus";"1101";1104
"Pierre-Emerick Aubameyang";"1102";1104
"Pierre-Emerick Aubameyang";"1103";1104
"Shinji Kagawa";"1104";1104
"Luiz";"1300";1
"Marcelo";"1301";1
"Pedro";"1302";1
"Steffan";"1303";1
"Heitor";"1304";1
"Carlos Eduardo";"1701";1789
"Claudio Nascimento";"1707";1799
"Alexandre Pereira";"1710";1788
"Isabella Gontijo";"1708";1798
"Sandra Cristina";"1709";1777
"Abílio Guedes";"1600";1
"Acacio Estrella";"1601";1
"Acacio Vianna";"1602";1
"Adelino Benevides";"1603";1
"Ajuricaba Braga";"1604";1
"Alarico Vieira";"1605";1
"Aleixo Moura";"1606";1
"Almerinda Villar";"1607";1
"Aluísio Pessanha";"1608";1
"André Pais";"1609";1
"Aniano Garrau";"1610";1
"Augusta Camacho";"1611";1
"Baltasar Marino";"1612";1
"Belmiro Prado";"1613";1
"Bernardete Mourão";"1614";1
"Bernardina Duarte";"1615";1
"Blasco Antúnez";"1616";1
"Branca Diniz";"1617";1
"Bukake Jesus";"1618";1
"Carmem Campelo";"1619";1
"Casimiro Mattos";"1620";1
"Cauê Cintra";"1621";1
"Celso Alves";"1622";1
"Celso Sousa";"1623";1
"Clotilde Ríos";"1624";1
"Célia Álvarez";"1600";2
"Deise Trindade";"1601";2
"Derli Guerra";"1602";2
"Diodete Figueiredo";"1603";2
"Diodete Leça";"1604";2
"Dulce Chousa";"1605";2
"Dulce Ferreira";"1606";2
"Délio Candal";"1607";2
"Edgar Frois";"1608";2
"Emília Canejo";"1609";2
"Eva Bulhão";"1610";2
"Faustino Pedrozo";"1611";2
"Feliciano Moutinho";"1612";2
"Fernão Butantã";"1613";2
"Filena Guerra";"1614";2
"Floripes Suaçuna";"1615";2
"Flávia Pavía";"1616";2
"Frederica Cabreira";"1617";2
"Frutuoso Suaçuna";"1618";2
"Genoveva Uchoa";"1619";2
"Son Goku";"1620";2
"Graça Vale";"1621";2
"Guilherme Antunes";"1622";2
"Hugo Sosa";"1623";2
"Hélder Morais";"1624";2
"Ilídio Bernardes";"1600";3
"Irene Guerrero";"1601";3
"Isilda Prado";"1602";3
"Ivete Rosa";"1603";3
"Jordana Gaspar";"1604";3
"Jordana Oliveira";"1605";3
"Jordão Tabalipa";"1606";3
"Lineu Mansilla";"1607";3
"Lopo Vidigal";"1608";3
"Luzia Ferro";"1609";3
"Magda Fitas";"1610";3
"Mamede Saldaña";"1611";3
"Marli Tupinambá";"1612";3
"Matias Travassos";"1613";3
"Melissa Jiménez";"1614";3
"Micaela Bugallo";"1615";3
"Micaela Ferrera";"1616";3
"Milu Diegues";"1617";3
"Máxima Cotegipe";"1618";3
"Natália Viveros";"1619";3
"Nelson Martínez";"1620";3
"Nilza Freiria";"1621";3
"Nivaldo Gomes";"1622";3
"Otília Trindade";"1623";3
"Paulo Loio";"1624";3
"Peri Coito";"1600";4
"Quintiliana Vieira";"1601";4
"Quintiliano Malheiro";"1602";4
"Quintilien Chávez";"1603";4
"Raquel Madureira";"1604";4
"Raul Varejão";"1605";4
"Renato Balladares";"1606";4
"Rodrigo Sabrosa";"1607";4
"Roquita Ramírez";"1608";4
"Rui Varanda";"1609";4
"Sabrina Machado";"1610";4
"Sidônio Mascarenhas";"1611";4
"Simone Gameiro";"1612";4
"Solange Saldanha";"1613";4
"Solange Sales";"1614";4
"Teresina Oliveira";"1615";4
"Tibúrcio Cirne";"1616";4
"Tobias Belo";"1617";4
"Tânia Ignacio";"1618";4
"Valentina Correia";"1619";4
"Sebastien Lefebvre";"1620";4
"David Desrosiers";"1621";4
"Charles Andrea Comeau";"1622";4
"Jean Francois Stinco";"1623";4
"Pierre Bouvier";"1624";4
*/
-- 11) CONSULTAS COM JUNÇÕES ENVOLVENDO DUAS OU MAIS TABELAS  
-- >> Atenção: colocar a condição de junção no FROM e demais condição no WHERE
-- (a) Liste o nome do cliente e o saldo em sua conta corrente
SELECT cli.nome,con.saldo FROM cliente cli INNER JOIN clienteconta clicon ON cli.id = clicon.id_cliente INNER JOIN conta con ON clicon.cod_agencia = con.cod_agencia AND clicon.numero_conta = con.numero;
/*
"Arthur Cesar";350.00
"José Marques";100.00
"Maria Joaquina";5239.00
"Vitor Borges";873.40
"Thais Felipe";1400.00
"﻿Matilde Souza";6303.17
"Nicolas Cavalcanti";6675.36
"Isabela Dias";5361.79
"Cauã Pinto";36.39
"Daniel Almeida";1040.39
"Joao Santana";99999999.99
"Dilma Lana";120005555.99
"Luis Inacio";1000012000.32
"Aecio Neves";10000000.55
"Renan Calheiros";12000.23
"César De Alencar Sartin";123.45
"Rodrigo Francisco De Oliveira";154574.12
"Maria Fernanda Ferreira Da Silva";15479.21
"Gabriel Silva De Barros Antunes";154547.66
"Lorena Alves Silva Ottoni";18466.58
"Lorena Alves Silva Ottoni";1212121.45
"Etiene Borges Silva";152457.32
"Sávio Antunes Maciel Ribeiro";11546.15
"Emiliano Teixeira Martins";321584.00
"Daniela De Oliveira Marques";154684.32
"Rodrigo Soares Siqueira";78263.32
"Isis Cristiane De Camargos Mendes";21256464.14
"Isis Cristiane De Camargos Mendes";21256464.14
"Diego Gouvêa Couto";16148.14
"Ruan Moraes Cardoso";14565.32
"Litória Maria Alves De Souza Filha";112.23
"Rayane Ferreira Da Silva";14563.34
"Desirre Tomaz Martins Pereira";454.52
"Rafael Paulino Silva Sobrinho";18466.58
"Cristiano Almeida Silveira";2316.26
"Lauriane Soares Costa";2215.52
"Carlos De Souza Novais";23215936.36
"Diego Rabelo Damasceno";454.52
"Diego Rabelo Damasceno";123.45
"Victor Vinicius De Rezende";2215.52
"Victor Vinicius De Rezende";154574.12
"Liana Travaglia De Sousa";23215936.36
"Liana Travaglia De Sousa";16148.14
"Liana Travaglia De Sousa";15479.20
"Tatiana Cristina Silva";154547.66
"Marina Barbosa De Freitas Vieira";1212121.45
"Adriana Santos Farias";152457.32
"Fabricio Soares Borges";11546.15
"Talita Vieira Barbosa Martins";321584.10
"Carlos Henrique De Araujo";154684.32
"Angela Aparecida Silva Siqueira";2316.26
"Angela Aparecida Silva Siqueira";78263.32
"Débora Cristina Alves Rita";21256464.14
"Lorena Fonseca Martins";16148.14
"Letícia Maria Rosa Lima";14565.32
"Lais Sousa Costa";112.23
"Ludmilla Vilas Boas Simoneti";14565.32
"Ludmilla Vilas Boas Simoneti";14563.34
"Laiza Marie Roldao";454.52
"Wanessa Danielly Fernandes";18466.58
"Sandro Mayrink Paula";2316.26
"Duíllio Tomaz Silva";2215.52
"Paulo Victor Machado Prado";23215936.36
"Eden Vilarinho Costa Junior";123.45
"Lidiane Margarida Do Carmo";154574.12
"Ricardo Marcelo Mota Filho";15479.29
"Rafael Henrique Araujo Dos Reis";154547.66
"Amon Ribeiro Lopes";1212121.45
"Angelo Alves Ferreira Júnior";152457.32
"Francisco Assis Miguel Jardine";112.23
"Francisco Assis Miguel Jardine";11546.15
"Gledmar Pires De Moura";321584.00
"Wilza Assuncao Braz";154684.32
"Cleo Custodio Ferreira";14563.34
"Cleo Custodio Ferreira";78263.32
"Laura Luna Oliveira";7000.00
"Isabelle Pietra Pinto";100.00
"Tomás Miguel Rocha";2000.00
"Heitor Cauã de Paula";469.04
"Luiza Flávia Rodrigues";982209.95
"Neymar Jr";3250.00
"Neymar Jr";3250.00
"Luis Suarez";3250.00
"Luis Suarez";3250.00
"Andres Iniesta";3250.00
"Andres Iniesta";3250.00
"Ivan Rakitic";3250.00
"Ivan Rakitic";3250.00
"Jordi Alba";3250.00
"Jordi Alba";3250.00
"Marc Andre Ter Stegen";3250.00
"Marc Andre Ter Stegen";3250.00
"Daniel Alves";3250.00
"Daniel Alves";3250.00
"Rafinha";3250.00
"Rafinha";3250.00
"Arda Turan";3250.00
"Arda Turan";3250.00
"Douglas";3250.00
"Douglas";3250.00
"Marco Reus";3250.00
"Marco Reus";3250.00
"Pierre-Emerick Aubameyang";3250.00
"Pierre-Emerick Aubameyang";3250.00
"Shinji Kagawa";3250.00
"Luiz";1000000000.00
"Marcelo";1000000000.00
"Pedro";1000000000.00
"Steffan";1000000000.00
"Heitor";1000000000.00
"Carlos Eduardo";400.00
"Claudio Nascimento";498.25
"Alexandre Pereira";322.12
"Isabella Gontijo";500.98
"Sandra Cristina";798.22
"Abílio Guedes";100.00
"Acacio Estrella";200.00
"Acacio Vianna";300.00
"Adelino Benevides";400.00
"Ajuricaba Braga";500.00
"Alarico Vieira";600.00
"Aleixo Moura";700.00
"Almerinda Villar";800.00
"Aluísio Pessanha";900.00
"André Pais";1000.00
"Aniano Garrau";1100.00
"Augusta Camacho";1200.00
"Baltasar Marino";1300.00
"Belmiro Prado";1400.00
"Bernardete Mourão";1500.00
"Bernardina Duarte";1600.00
"Blasco Antúnez";1700.00
"Branca Diniz";1800.00
"Bukake Jesus";1900.00
"Carmem Campelo";2000.00
"Casimiro Mattos";2100.00
"Cauê Cintra";2200.00
"Celso Alves";2300.00
"Celso Sousa";2400.00
"Clotilde Ríos";2500.00
"Célia Álvarez";2600.00
"Deise Trindade";2700.00
"Derli Guerra";2800.00
"Diodete Figueiredo";2900.00
"Diodete Leça";3000.00
"Dulce Chousa";3100.00
"Dulce Ferreira";3200.00
"Délio Candal";3300.00
"Edgar Frois";3400.00
"Emília Canejo";3500.00
"Eva Bulhão";3600.00
"Faustino Pedrozo";3700.00
"Feliciano Moutinho";3800.00
"Fernão Butantã";3900.00
"Filena Guerra";4000.00
"Floripes Suaçuna";4100.00
"Flávia Pavía";4200.00
"Frederica Cabreira";4300.00
"Frutuoso Suaçuna";4400.00
"Genoveva Uchoa";4500.00
"Son Goku";4600.00
"Graça Vale";4700.00
"Guilherme Antunes";4800.00
"Hugo Sosa";4900.00
"Hélder Morais";5000.00
"Ilídio Bernardes";5100.00
"Irene Guerrero";5200.00
"Isilda Prado";5300.00
"Ivete Rosa";5400.00
"Jordana Gaspar";5500.00
"Jordana Oliveira";5600.00
"Jordão Tabalipa";5700.00
"Lineu Mansilla";5800.00
"Lopo Vidigal";5900.00
"Luzia Ferro";6000.00
"Magda Fitas";6100.00
"Mamede Saldaña";6200.00
"Marli Tupinambá";6300.00
"Matias Travassos";6400.00
"Melissa Jiménez";6500.00
"Micaela Bugallo";6600.00
"Micaela Ferrera";6700.00
"Milu Diegues";6800.00
"Máxima Cotegipe";6900.00
"Natália Viveros";7000.00
"Nelson Martínez";7100.00
"Nilza Freiria";7200.00
"Nivaldo Gomes";7300.00
"Otília Trindade";7400.00
"Paulo Loio";7500.00
"Peri Coito";7600.00
"Quintiliana Vieira";7700.00
"Quintiliano Malheiro";7800.00
"Quintilien Chávez";7900.00
"Raquel Madureira";8000.00
"Raul Varejão";8100.00
"Renato Balladares";8200.00
"Rodrigo Sabrosa";8300.00
"Roquita Ramírez";8400.00
"Rui Varanda";8500.00
"Sabrina Machado";8600.00
"Sidônio Mascarenhas";8700.00
"Simone Gameiro";8800.00
"Solange Saldanha";8900.00
"Solange Sales";9000.00
"Teresina Oliveira";9100.00
"Tibúrcio Cirne";9200.00
"Tobias Belo";9300.00
"Tânia Ignacio";9400.00
"Valentina Correia";9500.00
"Sebastien Lefebvre";9600.00
"David Desrosiers";9700.00
"Charles Andrea Comeau";9800.00
"Jean Francois Stinco";9900.00
"Pierre Bouvier";10000.00
*/
-- (b) Liste o nome do cliente juntamente com o nome do seu gerente e o nome da agência que o SUPERVISOR trabalha
SELECT c.nome,g.nome,COALESCE(a.nome,'<sem supervisor>') FROM cliente c INNER JOIN funcionario g ON c.gerente = g.num_funcional LEFT JOIN funcionario s ON g.supervisor = s.num_funcional LEFT JOIN agencia a ON s.agencia = a.codigo;
/*
"Arthur Cesar";"Jose Roberto";"Agência Amambai"
"José Marques";"Johnata Ferreira";"Agência Aquidauana"
"Maria Joaquina";"Daniel Dias Alves";"Agência Aparecida Do Taboado"
"Vitor Borges";"Fabricio Ismael";"Agência Angelica"
"Thais Felipe";"Thiago Moreira Borges";"Agência Anaurilandia"
"﻿Matilde Souza";"Paulo Barbosa";"001-1792 SHOP METROPOLITANO-RIO-RJ"
"Nicolas Cavalcanti";"Paulo Barbosa";"001-1792 SHOP METROPOLITANO-RIO-RJ"
"Isabela Dias";"Paulo Barbosa";"001-1792 SHOP METROPOLITANO-RIO-RJ"
"Cauã Pinto";"Paulo Barbosa";"001-1792 SHOP METROPOLITANO-RIO-RJ"
"Daniel Almeida";"Leonor Goncalves";"001-1792 SHOP METROPOLITANO-RIO-RJ"
"Joao Santana";"Francisco da Silva";"Avenida Floriano Peixoto"
"Dilma Lana";"Joaquim Nascimento";"Carijos"
"Luis Inacio";"Joao da Silva";"Bairro Martins"
"Aecio Neves";"Joaquim Nascimento";"Carijos"
"Renan Calheiros";"Jose da Costa";"Avenida João Naves"
"César De Alencar Sartin";"Antonio Oliveira";"<sem supervisor>"
"Rodrigo Francisco De Oliveira";"Antonio Oliveira";"<sem supervisor>"
"Maria Fernanda Ferreira Da Silva";"Antonio Oliveira";"<sem supervisor>"
"Gabriel Silva De Barros Antunes";"Thiago Nunes";"Bairro Anchieta"
"Lorena Alves Silva Ottoni";"Thiago Nunes";"Bairro Anchieta"
"Etiene Borges Silva";"Thiago Nunes";"Bairro Anchieta"
"Sávio Antunes Maciel Ribeiro";"Gustavo Dias";"Bairro Anchieta"
"Emiliano Teixeira Martins";"Gustavo Dias";"Bairro Anchieta"
"Daniela De Oliveira Marques";"Gustavo Dias";"Bairro Anchieta"
"Rodrigo Soares Siqueira";"Gustavo Dias";"Bairro Anchieta"
"Isis Cristiane De Camargos Mendes";"Cesar Naves";"<sem supervisor>"
"Diego Gouvêa Couto";"Cesar Naves";"<sem supervisor>"
"Ruan Moraes Cardoso";"Cesar Naves";"<sem supervisor>"
"Litória Maria Alves De Souza Filha";"Cesar Naves";"<sem supervisor>"
"Rayane Ferreira Da Silva";"Sebastião José";"Carlos Gomes"
"Desirre Tomaz Martins Pereira";"Sebastião José";"Carlos Gomes"
"Rafael Paulino Silva Sobrinho";"Sebastião José";"Carlos Gomes"
"Cristiano Almeida Silveira";"Sebastião José";"Carlos Gomes"
"Lauriane Soares Costa";"Alisson dos Reis";"Carlos Gomes"
"Carlos De Souza Novais";"Alisson dos Reis";"Carlos Gomes"
"Diego Rabelo Damasceno";"Maria Aparecida";"<sem supervisor>"
"Victor Vinicius De Rezende";"Maria Aparecida";"<sem supervisor>"
"Liana Travaglia De Sousa";"Maria Aparecida";"<sem supervisor>"
"Tatiana Cristina Silva";"Maria Aparecida";"<sem supervisor>"
"Marina Barbosa De Freitas Vieira";"Ana Maria Matias";"Bairro Boqueirao"
"Adriana Santos Farias";"Ana Maria Matias";"Bairro Boqueirao"
"Fabricio Soares Borges";"Ana Maria Matias";"Bairro Boqueirao"
"Talita Vieira Barbosa Martins";"Eduardo Oliveira";"Bairro Boqueirao"
"Carlos Henrique De Araujo";"Eduardo Oliveira";"Bairro Boqueirao"
"Angela Aparecida Silva Siqueira";"Eduardo Oliveira";"Bairro Boqueirao"
"Débora Cristina Alves Rita";"Evandro Santos";"<sem supervisor>"
"Lorena Fonseca Martins";"Evandro Santos";"<sem supervisor>"
"Letícia Maria Rosa Lima";"Evandro Santos";"<sem supervisor>"
"Lais Sousa Costa";"Bruna Castro";"Bento Brasil"
"Ludmilla Vilas Boas Simoneti";"Bruna Castro";"Bento Brasil"
"Laiza Marie Roldao";"Bruna Castro";"Bento Brasil"
"Wanessa Danielly Fernandes";"Bruna Castro";"Bento Brasil"
"Sandro Mayrink Paula";"Josiane Silva";"Bento Brasil"
"Duíllio Tomaz Silva";"Josiane Silva";"Bento Brasil"
"Paulo Victor Machado Prado";"Josiane Silva";"Bento Brasil"
"Eden Vilarinho Costa Junior";"Flavia de Almeida";"<sem supervisor>"
"Lidiane Margarida Do Carmo";"Flavia de Almeida";"<sem supervisor>"
"Ricardo Marcelo Mota Filho";"Flavia de Almeida";"<sem supervisor>"
"Rafael Henrique Araujo Dos Reis";"Hiago Cintra";"Dr.Mariano Da Rocha"
"Amon Ribeiro Lopes";"Hiago Cintra";"Dr.Mariano Da Rocha"
"Angelo Alves Ferreira Júnior";"Hiago Cintra";"Dr.Mariano Da Rocha"
"Francisco Assis Miguel Jardine";"Natalia Araujo";"Dr.Mariano Da Rocha"
"Gledmar Pires De Moura";"Natalia Araujo";"Dr.Mariano Da Rocha"
"Wilza Assuncao Braz";"Natalia Araujo";"Dr.Mariano Da Rocha"
"Cleo Custodio Ferreira";"Natalia Araujo";"Dr.Mariano Da Rocha"
"Laura Luna Oliveira";"Lorenzo Breno Cauê Almeida";"<sem supervisor>"
"Isabelle Pietra Pinto";"Cauê Davi Enrico da Silva";"banco do brasil"
"Tomás Miguel Rocha";"Julio Igor Cauã Campos";"banco do brasil"
"Heitor Cauã de Paula";"Nicolas Breno Luan Moura";"banco do brasil"
"Luiza Flávia Rodrigues";"Miguel Ricardo Costa";"banco do brasil"
"Neymar Jr";"Caio";"<sem supervisor>"
"Luis Suarez";"Caio";"<sem supervisor>"
"Andres Iniesta";"Luiz";"<sem supervisor>"
"Ivan Rakitic";"Luiz";"<sem supervisor>"
"Jordi Alba";"Rafael";"Bernardo Sayao 1"
"Marc Andre Ter Stegen";"Rafael";"Bernardo Sayao 1"
"Daniel Alves";"Carlos";"<sem supervisor>"
"Rafinha";"Carlos";"<sem supervisor>"
"Arda Turan";"Lionel Messi";"Gurupi 1"
"Douglas";"Lionel Messi";"Gurupi 1"
"Marco Reus";"Jose Roberto";"<sem supervisor>"
"Pierre-Emerick Aubameyang";"Jose Roberto";"<sem supervisor>"
"Shinji Kagawa";"Caio";"<sem supervisor>"
"Luiz";"Arthur";"Banco do Brasil S.A. - Nova Porto Velho"
"Marcelo";"Rhaniel";"Banco do Brasil S.A. - Nova Porto Velho"
"Pedro";"Jean";"Banco do Brasil S.A. - Nova Porto Velho"
"Steffan";"Sandro";"Banco do Brasil S.A. - Nova Porto Velho"
"Heitor";"Augusto";"<sem supervisor>"
"Carlos Eduardo";"Lucas Rezende";"Agência 0171"
"Claudio Nascimento";"Cristiane Dias";"Agência 0054"
"Alexandre Pereira";"Paulo Roberto";"Agência 0154"
"Isabella Gontijo";"Ricardo Filho";"Agência 0987"
"Sandra Cristina";"Maria da Silva";"Agência 0300"
"Abílio Guedes";"Adão Casalinho";"<sem supervisor>"
"Acacio Estrella";"Adélia Barroqueiro";"<sem supervisor>"
"Acacio Vianna";"Alarico Alancastro";"<sem supervisor>"
"Adelino Benevides";"Alcides Zagalo";"<sem supervisor>"
"Ajuricaba Braga";"Aluísio Gentil";"<sem supervisor>"
"Alarico Vieira";"Aluísio Herrera";"<sem supervisor>"
"Aleixo Moura";"Alvito Cachão";"<sem supervisor>"
"Almerinda Villar";"Amílcar Soeiro";"<sem supervisor>"
"Aluísio Pessanha";"Anhangüera Silva";"<sem supervisor>"
"André Pais";"Apoena Villar";"<sem supervisor>"
"Aniano Garrau";"Arcidres Fonseca";"<sem supervisor>"
"Augusta Camacho";"Arminda Carneiro";"<sem supervisor>"
"Baltasar Marino";"Baltasar Otero";"<sem supervisor>"
"Belmiro Prado";"Barnabé Cesário";"<sem supervisor>"
"Bernardete Mourão";"Belmira Rodrigues";"<sem supervisor>"
"Bernardina Duarte";"Bernardina Pereira";"<sem supervisor>"
"Blasco Antúnez";"Bernardo Vellozo";"<sem supervisor>"
"Branca Diniz";"Caetano Louzada";"<sem supervisor>"
"Bukake Jesus";"Camila Almeida";"<sem supervisor>"
"Carmem Campelo";"Caubi Villar";"<sem supervisor>"
"Casimiro Mattos";"Celso Vasconcellos";"<sem supervisor>"
"Cauê Cintra";"Clarisse Espírito Santo";"<sem supervisor>"
"Celso Alves";"Claudemira Villela";"<sem supervisor>"
"Celso Sousa";"Cosme Palha";"<sem supervisor>"
"Clotilde Ríos";"Célia Lobato";"<sem supervisor>"
"Célia Álvarez";"Delfina Ornelas";"BANCO DO BRASIL S.A.-SAO PAULO"
"Deise Trindade";"Denise Taperebá";"BANCO DO BRASIL S.A.-BARAO DE DUPRAT"
"Derli Guerra";"Diamantino Pozas";"BANCO DO BRASIL S.A.-SETE DE ABRIL"
"Diodete Figueiredo";"Dinarte Torrado";"BANCO DO BRASIL S.A.-GOVERNO SAO PAULO"
"Diodete Leça";"Domingos Antas";"BANCO DO BRASIL S.A.-MINISTERIO FAZENDA"
"Dulce Chousa";"Dorindo Portela";"BANCO DO BRASIL S.A.-PREVIDENCIA"
"Dulce Ferreira";"Délio Grangeia";"BANCO DO BRASIL S.A.-PCA.DOM JOSE GASPAR"
"Délio Candal";"Eduardo Palmeira";"BANCO DO BRASIL S.A.-GECEX SAO PAULO II"
"Edgar Frois";"Eloi Amarante";"BANCO DO BRASIL S.A.-24 DE MAIO"
"Emília Canejo";"Emiliano Gracia";"BANCO DO BRASIL S.A.-BOULEVARD SAO JOAO"
"Eva Bulhão";"Emílio García";"BANCO DO BRASIL S.A.-EMPR.CENTRO S.PAULO"
"Faustino Pedrozo";"Epaminondas Marcondes";"BANCO DO BRASIL S.A.-PODER JUDICIARIO"
"Feliciano Moutinho";"Eva Quinterno";"BANCO DO BRASIL S.A.-XAVIER DE TOLEDO"
"Fernão Butantã";"Feliciana Ventura";"BANCO DO BRASIL S.A.-ESTILO SAO PAULO"
"Filena Guerra";"Felícia Quinzeiro";"BANCO DO BRASIL S.A.-CATEDRAL DA SE"
"Floripes Suaçuna";"Fernão Ataí";"BANCO DO BRASIL S.A.-GALERIA OLIDO"
"Flávia Pavía";"Filena Vilhena";"BANCO DO BRASIL S.A.-EDIFICIO ITALIA"
"Frederica Cabreira";"Flamínia Vega";"BANCO DO BRASIL S.A.-PRACA DO PATRIARCA"
"Frutuoso Suaçuna";"Flávia Meirelles";"BANCO DO BRASIL S.A.-ESTILO SAO JOAO"
"Genoveva Uchoa";"Fábio Pamplona";"BANCO DO BRASIL S.A.-PALACIO DA JUSTICA"
"Son Goku";"Gaspar Tavera";"BANCO DO BRASIL S.A.-PALACIO MAUA"
"Graça Vale";"Gonçalo Carvalhaes";"BANCO DO BRASIL S.A.-R.BOA VISTA-S.PAULO"
"Guilherme Antunes";"Guido Morais";"BANCO DO BRASIL S.A.-R.DA QUITANDA-S.PAULO"
"Hugo Sosa";"Hipólito Quadros";"BANCO DO BRASIL S.A.-ANHANGABAU-SAO PAULO"
"Hélder Morais";"Ildefonso Castello Branco";"BANCO DO BRASIL S.A.-ESTILO JOAO MENDES"
"Ilídio Bernardes";"Jacinto Garcez";"BANCO DO BRASIL S.A.-SAO PAULO"
"Irene Guerrero";"Janaína Paranaguá";"BANCO DO BRASIL S.A.-BARAO DE DUPRAT"
"Isilda Prado";"Jorgina Anlicoara";"BANCO DO BRASIL S.A.-SETE DE ABRIL"
"Ivete Rosa";"Julieta Villas Boas";"BANCO DO BRASIL S.A.-GOVERNO SAO PAULO"
"Jordana Gaspar";"Laurinda Dutra";"BANCO DO BRASIL S.A.-MINISTERIO FAZENDA"
"Jordana Oliveira";"Laurinda Lima";"BANCO DO BRASIL S.A.-PREVIDENCIA"
"Jordão Tabalipa";"Liedson Domingos";"BANCO DO BRASIL S.A.-PCA.DOM JOSE GASPAR"
"Lineu Mansilla";"Liliana Brites";"BANCO DO BRASIL S.A.-GECEX SAO PAULO II"
"Lopo Vidigal";"Marco Mortágua";"BANCO DO BRASIL S.A.-24 DE MAIO"
"Luzia Ferro";"Marilda Toledo";"BANCO DO BRASIL S.A.-BOULEVARD SAO JOAO"
"Magda Fitas";"Melissa Chousa";"BANCO DO BRASIL S.A.-EMPR.CENTRO S.PAULO"
"Mamede Saldaña";"Mem Mangueira";"BANCO DO BRASIL S.A.-PODER JUDICIARIO"
"Marli Tupinambá";"Natália Reyes";"BANCO DO BRASIL S.A.-XAVIER DE TOLEDO"
"Matias Travassos";"Nazaré Arantes";"BANCO DO BRASIL S.A.-ESTILO SAO PAULO"
"Melissa Jiménez";"Nicolau Travassos";"BANCO DO BRASIL S.A.-CATEDRAL DA SE"
"Micaela Bugallo";"Noémia Cavadas";"BANCO DO BRASIL S.A.-GALERIA OLIDO"
"Micaela Ferrera";"Nádia Monforte";"BANCO DO BRASIL S.A.-EDIFICIO ITALIA"
"Milu Diegues";"Olavo Negromonte";"BANCO DO BRASIL S.A.-PRACA DO PATRIARCA"
"Máxima Cotegipe";"Olga Jucá";"BANCO DO BRASIL S.A.-ESTILO SAO JOAO"
"Natália Viveros";"Ordonho Lira";"BANCO DO BRASIL S.A.-PALACIO DA JUSTICA"
"Nelson Martínez";"Palmira Garcés";"BANCO DO BRASIL S.A.-PALACIO MAUA"
"Nilza Freiria";"Paulino Brião";"BANCO DO BRASIL S.A.-R.BOA VISTA-S.PAULO"
"Nivaldo Gomes";"Pedro Valido";"BANCO DO BRASIL S.A.-R.DA QUITANDA-S.PAULO"
"Otília Trindade";"Plínio Moita";"BANCO DO BRASIL S.A.-ANHANGABAU-SAO PAULO"
"Paulo Loio";"Potira Caminha";"BANCO DO BRASIL S.A.-ESTILO JOAO MENDES"
"Peri Coito";"Quitério Tabajara";"BANCO DO BRASIL S.A.-SAO PAULO"
"Quintiliana Vieira";"Ricardina Soares";"BANCO DO BRASIL S.A.-BARAO DE DUPRAT"
"Quintiliano Malheiro";"Roque Alancastre";"BANCO DO BRASIL S.A.-SETE DE ABRIL"
"Quintilien Chávez";"Rui Lucas";"BANCO DO BRASIL S.A.-GOVERNO SAO PAULO"
"Raquel Madureira";"Rúben Figueroa";"BANCO DO BRASIL S.A.-MINISTERIO FAZENDA"
"Raul Varejão";"Salomé Valentín";"BANCO DO BRASIL S.A.-PREVIDENCIA"
"Renato Balladares";"Santiago Caballero";"BANCO DO BRASIL S.A.-PCA.DOM JOSE GASPAR"
"Rodrigo Sabrosa";"Sarita Taborda";"BANCO DO BRASIL S.A.-GECEX SAO PAULO II"
"Roquita Ramírez";"Silvana Magallanes";"BANCO DO BRASIL S.A.-24 DE MAIO"
"Rui Varanda";"Socorro Quadros";"BANCO DO BRASIL S.A.-BOULEVARD SAO JOAO"
"Sabrina Machado";"Sonás Teles";"BANCO DO BRASIL S.A.-EMPR.CENTRO S.PAULO"
"Sidônio Mascarenhas";"Sílvio Hierro";"BANCO DO BRASIL S.A.-PODER JUDICIARIO"
"Simone Gameiro";"Tadeu Monforte";"BANCO DO BRASIL S.A.-XAVIER DE TOLEDO"
"Solange Saldanha";"Teresina Varella";"BANCO DO BRASIL S.A.-ESTILO SAO PAULO"
"Solange Sales";"Ubaldo Thamily";"BANCO DO BRASIL S.A.-CATEDRAL DA SE"
"Teresina Oliveira";"Ubiratã Lucas";"BANCO DO BRASIL S.A.-GALERIA OLIDO"
"Tibúrcio Cirne";"Ulisses Canejo";"BANCO DO BRASIL S.A.-EDIFICIO ITALIA"
"Tobias Belo";"Valentim Themes";"BANCO DO BRASIL S.A.-PRACA DO PATRIARCA"
"Tânia Ignacio";"Vanda Tabajara";"BANCO DO BRASIL S.A.-ESTILO SAO JOAO"
"Valentina Correia";"Verónica Eiró";"BANCO DO BRASIL S.A.-PALACIO DA JUSTICA"
"Sebastien Lefebvre";"Xavier Balladares";"BANCO DO BRASIL S.A.-PALACIO MAUA"
"David Desrosiers";"Xavier Vázquez";"BANCO DO BRASIL S.A.-R.BOA VISTA-S.PAULO"
"Charles Andrea Comeau";"Zacarias Tupinambá";"BANCO DO BRASIL S.A.-R.DA QUITANDA-S.PAULO"
"Jean Francois Stinco";"Zoraide Patrício";"BANCO DO BRASIL S.A.-ANHANGABAU-SAO PAULO"
"Pierre Bouvier";"Énia Leiria ";"BANCO DO BRASIL S.A.-ESTILO JOAO MENDES"

*/
-- (c) Liste os nomes dos clientes que fizeram operações acima de R$ 20.000,00
SELECT nome FROM cliente INNER JOIN clienteconta c ON id = c.id_cliente INNER JOIN operacao o ON c.cod_agencia = o.cod_agencia AND c.numero_conta = o.numero_conta WHERE o.valor > 20000;
/*
"Luiz"
"Marcelo"
"Pedro"
"Steffan"
"Heitor"
*/
-- 12) CONSULTAS ENVOLVENDO JUNÇÕES COM UM RELAÇÃO SENDO USADA MAIS DE UMA VEZ
-- (a) Listar o nome do funcionário juntamente com o *nome* de seu supervisor. 
-- Renomei o nome dos atributos da relação resultante para nome_funcionario e nome_supervisor, respectivamente.
SELECT f.nome AS nome_funcionario, s.nome AS nome_supervisor FROM funcionario f INNER JOIN funcionario s ON f.supervisor = s.num_funcional;
/*
"Thiago Moreira Borges";"Johnata Ferreira"
"Fabricio Ismael";"Daniel Dias Alves"
"Daniel Dias Alves";"Fabricio Ismael"
"Johnata Ferreira";"Thiago Moreira Borges"
"Jose Roberto";"Jose Roberto"
"Leonor Goncalves";"﻿Brenda Melo"
"Luiz Cunha";"﻿Brenda Melo"
"Carlos Sousa";"﻿Brenda Melo"
"Paulo Barbosa";"﻿Brenda Melo"
"Joao da Silva";"Joao da Silva"
"Jose da Costa";"Jose da Costa"
"Joaquim Nascimento";"Joaquim Nascimento"
"Francisco da Silva";"Francisco da Silva"
"Jair das Couves";"Francisco da Silva"
"Gustavo Dias";"Antonio Oliveira"
"Sebastião José";"Cesar Naves"
"Ana Maria Matias";"Maria Aparecida"
"Bruna Castro";"Evandro Santos"
"Hiago Cintra";"Flavia de Almeida"
"Thiago Nunes";"Antonio Oliveira"
"Alisson dos Reis";"Cesar Naves"
"Eduardo Oliveira";"Maria Aparecida"
"Josiane Silva";"Evandro Santos"
"Natalia Araujo";"Flavia de Almeida"
"Cauê Davi Enrico da Silva";"Lorenzo Breno Cauê Almeida"
"Julio Igor Cauã Campos";"Lorenzo Breno Cauê Almeida"
"Nicolas Breno Luan Moura";"Lorenzo Breno Cauê Almeida"
"Miguel Ricardo Costa";"Lorenzo Breno Cauê Almeida"
"Lionel Messi";"Caio"
"Rafael";"Luiz"
"Arthur";"Augusto"
"Rhaniel";"Augusto"
"Jean";"Augusto"
"Sandro";"Augusto"
"Lucas Rezende";"Lucas Rezende"
"Cristiane Dias";"Cristiane Dias"
"Paulo Roberto";"Paulo Roberto"
"Ricardo Filho";"Ricardo Filho"
"Maria da Silva";"Maria da Silva"
"Delfina Ornelas";"Adão Casalinho"
"Denise Taperebá";"Adélia Barroqueiro"
"Diamantino Pozas";"Alarico Alancastro"
"Dinarte Torrado";"Alcides Zagalo"
"Domingos Antas";"Aluísio Gentil"
"Dorindo Portela";"Aluísio Herrera"
"Délio Grangeia";"Alvito Cachão"
"Eduardo Palmeira";"Amílcar Soeiro"
"Eloi Amarante";"Anhangüera Silva"
"Emiliano Gracia";"Apoena Villar"
"Emílio García";"Arcidres Fonseca"
"Epaminondas Marcondes";"Arminda Carneiro"
"Eva Quinterno";"Baltasar Otero"
"Feliciana Ventura";"Barnabé Cesário"
"Felícia Quinzeiro";"Belmira Rodrigues"
"Fernão Ataí";"Bernardina Pereira"
"Filena Vilhena";"Bernardo Vellozo"
"Flamínia Vega";"Caetano Louzada"
"Flávia Meirelles";"Camila Almeida"
"Fábio Pamplona";"Caubi Villar"
"Gaspar Tavera";"Celso Vasconcellos"
"Gonçalo Carvalhaes";"Clarisse Espírito Santo"
"Guido Morais";"Claudemira Villela"
"Hipólito Quadros";"Cosme Palha"
"Ildefonso Castello Branco";"Célia Lobato"
"Jacinto Garcez";"Adão Casalinho"
"Janaína Paranaguá";"Adélia Barroqueiro"
"Jorgina Anlicoara";"Alarico Alancastro"
"Julieta Villas Boas";"Alcides Zagalo"
"Laurinda Dutra";"Aluísio Gentil"
"Laurinda Lima";"Aluísio Herrera"
"Liedson Domingos";"Alvito Cachão"
"Liliana Brites";"Amílcar Soeiro"
"Marco Mortágua";"Anhangüera Silva"
"Marilda Toledo";"Apoena Villar"
"Melissa Chousa";"Arcidres Fonseca"
"Mem Mangueira";"Arminda Carneiro"
"Natália Reyes";"Baltasar Otero"
"Nazaré Arantes";"Barnabé Cesário"
"Nicolau Travassos";"Belmira Rodrigues"
"Noémia Cavadas";"Bernardina Pereira"
"Nádia Monforte";"Bernardo Vellozo"
"Olavo Negromonte";"Caetano Louzada"
"Olga Jucá";"Camila Almeida"
"Ordonho Lira";"Caubi Villar"
"Palmira Garcés";"Celso Vasconcellos"
"Paulino Brião";"Clarisse Espírito Santo"
"Pedro Valido";"Claudemira Villela"
"Plínio Moita";"Cosme Palha"
"Potira Caminha";"Célia Lobato"
"Quitério Tabajara";"Adão Casalinho"
"Ricardina Soares";"Adélia Barroqueiro"
"Roque Alancastre";"Alarico Alancastro"
"Rui Lucas";"Alcides Zagalo"
"Rúben Figueroa";"Aluísio Gentil"
"Salomé Valentín";"Aluísio Herrera"
"Santiago Caballero";"Alvito Cachão"
"Sarita Taborda";"Amílcar Soeiro"
"Silvana Magallanes";"Anhangüera Silva"
"Socorro Quadros";"Apoena Villar"
"Sonás Teles";"Arcidres Fonseca"
"Sílvio Hierro";"Arminda Carneiro"
"Tadeu Monforte";"Baltasar Otero"
"Teresina Varella";"Barnabé Cesário"
"Ubaldo Thamily";"Belmira Rodrigues"
"Ubiratã Lucas";"Bernardina Pereira"
"Ulisses Canejo";"Bernardo Vellozo"
"Valentim Themes";"Caetano Louzada"
"Vanda Tabajara";"Camila Almeida"
"Verónica Eiró";"Caubi Villar"
"Xavier Balladares";"Celso Vasconcellos"
"Xavier Vázquez";"Clarisse Espírito Santo"
"Zacarias Tupinambá";"Claudemira Villela"
"Zoraide Patrício";"Cosme Palha"
"Énia Leiria ";"Célia Lobato"
*/
set search_path o banco
-- (b) Listar os nomes dos funcionários que foram admitidos antes que seus supervisores
SELECT f.nome FROM funcionario f INNER JOIN funcionario s ON f.supervisor = s.num_funcional WHERE f.data_admissao < s.data_admissao;
/*
"Thiago Moreira Borges"
"Fabricio Ismael"
"Luiz Cunha"
"Jair das Couves"
"Cauê Davi Enrico da Silva"
"Julio Igor Cauã Campos"
"Nicolas Breno Luan Moura"
"Miguel Ricardo Costa"
"Arthur"
"Rhaniel"
"Jean"
"Sandro"
*/
-- (c) Listar os nomes dos funcionários que trabalham em agências distintas das agências de seus supervisores
SELECT f.nome FROM funcionario f INNER JOIN funcionario s ON f.supervisor = s.num_funcional WHERE f.agencia <> s.agencia;
/*
"Thiago Moreira Borges"
"Fabricio Ismael"
"Daniel Dias Alves"
"Johnata Ferreira"
"Leonor Goncalves"
"Luiz Cunha"
"Carlos Sousa"
"Paulo Barbosa"
"Cauê Davi Enrico da Silva"
"Julio Igor Cauã Campos"
"Nicolas Breno Luan Moura"
"Miguel Ricardo Costa"
"Lionel Messi"
"Arthur"
"Rhaniel"
"Jean"
"Sandro"
*/
-- (d) Listar os nomes dos funcionários que trabalham em agências localizadas em estados distintos das agências de seus supervisores
SELECT f.nome FROM funcionario f INNER JOIN funcionario s ON f.supervisor = s.num_funcional INNER JOIN agencia fa ON f.agencia = fa.codigo INNER JOIN agencia fs ON s.agencia = fs.codigo WHERE UPPER(fa.estado) <> UPPER(fs.estado);
-- Esta pesquisa não retornou nada.
-- 13) CONSULTAS COM OPERADOR 'IN' / 'NOT IN' / <> ou !=
-- (a) Listar o nome dos funcionários que não são gerentes
SELECT nome FROM funcionario WHERE num_funcional NOT IN (SELECT DISTINCT gerente FROM cliente);
/*
"﻿Brenda Melo"
"Luiz Cunha"
"Carlos Sousa"
"Jair das Couves"
*/
-- (b) Listar o nome dos clientes que não possuem conta
SELECT * FROM cliente WHERE id NOT IN (SELECT DISTINCT id_cliente FROM clienteconta);
--Nenhum resultado, todos os clientes possuem ao menos uma conta!
-- (c) Listar as agências que não possuem conta
SELECT * FROM agencia WHERE codigo NOT IN (SELECT DISTINCT cod_agencia FROM conta);
--"3139";"Halfeld";"Juiz de Fora";"MG"
-- (d) Listar as contas bancárias sem operações bancárias (dica: use parênteses nos atributos envolvidos no WHERE)
--SELECT * from conta c where c.numero NOT IN (SELECT DISTINCT o.numero_conta from operacao o where c.cod_agencia = o.cod_agencia); --SELECT c.* FROM conta c LEFT JOIN operacao o ON c.cod_agencia = o.cod_agencia AND c.numero = o.numero_conta WHERE o.* IS NULL;
select * from conta c where c.cod_agencia || c.numero not in (select distinct o.cod_agencia || o.numero_conta from operacao o where c.cod_agencia = o.cod_agencia and c.numero = o.numero_conta)
/*
"2794";27101;154574.12;"2016-09-27"
"2794";27102;15479.21;"2016-09-26"
"2794";27103;154547.66;"2016-09-24"
"2794";27104;1212121.45;"2016-08-10"
"2794";27105;152457.32;"2015-01-11"
"2794";27106;11546.15;"2014-07-22"
"2794";27107;321584.00;"2014-11-23"
"2794";27108;154684.32;"2014-07-22"
"2794";27109;78263.32;"2014-11-23"
"2794";27110;21256464.14;"2016-02-12"
"3536";35601;14565.32;"2016-09-24"
"3536";35602;112.23;"2016-08-10"
"3536";35603;14563.34;"2015-01-11"
"3536";35604;454.52;"2014-07-22"
"3536";35605;18466.58;"2014-11-23"
"3536";35606;2316.26;"2016-09-27"
"3536";35607;2215.52;"2016-09-27"
"3536";35608;23215936.36;"2016-02-12"
"3536";35609;123.45;"2014-07-22"
"3536";35610;154574.12;"2014-11-23"
"3536";35611;15479.20;"2016-09-27"
"3534";35401;1212121.45;"2016-08-10"
"3534";35402;152457.32;"2015-01-11"
"3534";35403;11546.15;"2014-07-22"
"3534";35404;321584.10;"2014-11-23"
"3534";35405;154684.32;"2016-09-27"
"3534";35406;78263.32;"2016-09-24"
"3534";35407;21256464.14;"2016-08-10"
"3534";35408;16148.14;"2015-01-11"
"3534";35409;14565.32;"2016-09-27"
"3534";35410;112.23;"2016-09-27"
"3534";35411;14563.34;"2014-07-22"
"2692";26900;454.52;"2014-11-23"
"2692";26902;2316.26;"2016-09-27"
"2692";26903;2215.52;"2016-09-27"
"2692";26904;23215936.36;"2014-07-22"
"2692";26905;123.45;"2014-11-23"
"2692";26906;154574.12;"2016-09-27"
"2692";26907;15479.29;"2016-09-24"
"2692";26908;154547.66;"2016-08-10"
"2692";26909;1212121.45;"2015-01-11"
"2692";26910;152457.32;"2014-07-22"
"2692";26911;11546.15;"2014-11-23"
"1484";14801;154684.32;"2014-07-22"
"1484";14802;78263.32;"2014-11-23"
"1484";14803;21256464.14;"2016-09-27"
"1484";14804;16148.14;"2016-09-27"
"1484";14805;14565.32;"2016-09-24"
"1484";14806;112.23;"2016-08-10"
"1484";14807;14563.34;"2015-01-11"
"1484";14808;454.52;"2016-09-27"
"1484";14809;18466.58;"2016-09-24"
"1484";14810;2316.26;"2016-08-10"
"1484";14811;2215.52;"2015-01-11"
"1484";14812;23215936.36;"2016-09-27"
*/
-- (e) Verificar se existem contas bancárias sem clientes (dica: use parênteses nos atributos envolvidos no WHERE)
--SELECT * FROM conta c WHERE c.numero NOT IN (SELECT DISTINCT cc.numero_conta FROM clienteconta cc where c.cod_agencia = cc.cod_agencia); --SELECT * FROM conta c LEFT JOIN clienteconta cc ON c.cod_agencia = cc.cod_agencia AND c.numero = cc.numero_conta WHERE cc.* IS NULL;
select * from conta c where c.cod_agencia||','||c.numero not in (select distinct cod_agencia||','||numero_conta from clienteconta)
--Não existe nenhuma conta sem cliente 
-- (f) Listar o nome dos funcionários que trabalham em agências de 'SP' e 'MS' que não são gerentes
SELECT f.nome FROM funcionario f INNER JOIN agencia a ON f.agencia = a.codigo WHERE UPPER(a.estado) IN ('SP','MS') AND f.num_funcional NOT IN (SELECT DISTINCT gerente FROM cliente);
--Nenhum caso
-- (g) Verificar se existe clientes que possuem contas em agências distintas da agência de trabalho de seus gerentes
SELECT c.* FROM cliente c INNER JOIN funcionario f ON c.gerente = f.num_funcional INNER JOIN clienteconta cc ON c.id = cc.id_cliente WHERE cc.cod_agencia <> f.agencia;
/*
1;"Arthur Cesar";"32112354397";"1995-02-20";"Rua Beija Flor N 341";"Uberlandia";"MG";5
2;"José Marques";"10399599157";"1990-01-10";"Rua Dolores Duran N 275";"São Paulo";"SP";4
4;"Vitor Borges";"23939997833";"2000-01-01";"Alameda Mario Cardoso N 174";"Rio de Janeiro";"RG";2
5;"Thais Felipe";"99897738735";"1991-02-07";"Rua da Maçã N 185";"Uberlandia";"MG";1
100;"﻿Matilde Souza";"98151129450";"1930-11-21";"Rua Ferdinando Mollon 493";"Santa Bárbara D Oeste";"SP";104
101;"Nicolas Cavalcanti";"57069343710";"1983-09-18";"Rua Rosângela Cunha Redondo 1689";"Londrina";"PR";104
102;"Isabela Dias";"29087694920";"1974-05-08";"Rua Vereador Ozias Santana 961";"Guarapari";"ES";104
103;"Cauã Pinto";"87329143421";"1998-09-18";"Travessa Cerqueira Torres 353";"Salvador";"BA";104
104;"Daniel Almeida";"69387268683";"1982-11-12";"Avenida José Cutrale Junior 521";"Bebedouro";"SP";101
825;"Isis Cristiane De Camargos Mendes";"12345678921";"1990-04-27";"Rua Castro Alves N 110";"Porto Alegre";"Rs";801
835;"Diego Rabelo Damasceno";"12345678931";"1988-10-07";"Avenida Brasil Leste N 1210 ";"Passo Fundo";"Rs";802
836;"Victor Vinicius De Rezende";"12345678932";"1989-07-18";"Avenida Brasil Leste N 1220 ";"Passo Fundo";"Rs";802
837;"Liana Travaglia De Sousa";"12345678933";"1981-05-04";"Avenida Brasil Leste N 1230 ";"Passo Fundo";"Rs";802
845;"Débora Cristina Alves Rita";"12345678941";"1983-11-09";"Avenida Brasil Leste N 1310 ";"Passo Fundo";"Rs";803
846;"Lorena Fonseca Martins";"12345678942";"1986-04-16";"Avenida Brasil Leste N 1320 ";"Passo Fundo";"Rs";803
847;"Letícia Maria Rosa Lima";"12345678943";"1989-12-06";"Avenida Brasil Leste N 1330 ";"Passo Fundo";"Rs";803
848;"Lais Sousa Costa";"12345678944";"1991-03-27";"Avenida Brasil Leste N 1340 ";"Passo Fundo";"Rs";808
849;"Ludmilla Vilas Boas Simoneti";"12345678945";"1981-05-23";"Avenida Brasil Leste N 1350 ";"Passo Fundo";"Rs";808
855;"Eden Vilarinho Costa Junior";"12345678951";"1993-10-08";"Avenida Borges de Medeiros N 165";"Santa Maria";"Rs";804
856;"Lidiane Margarida Do Carmo";"12345678952";"1982-05-16";"Avenida Borges de Medeiros N 175";"Santa Maria";"Rs";804
857;"Ricardo Marcelo Mota Filho";"12345678953";"1990-03-18";"Avenida Borges de Medeiros N 185";"Santa Maria";"Rs";804
858;"Rafael Henrique Araujo Dos Reis";"12345678954";"1985-02-07";"Avenida Borges de Medeiros N 195";"Santa Maria";"Rs";809
859;"Amon Ribeiro Lopes";"12345678955";"1990-04-25";"Avenida Borges de Medeiros N 205";"Santa Maria";"Rs";809
860;"Angelo Alves Ferreira Júnior";"12345678956";"1991-09-04";"Avenida Borges de Medeiros N 215";"Santa Maria";"Rs";809
861;"Francisco Assis Miguel Jardine";"12345678957";"1994-01-10";"Avenida Borges de Medeiros N 225";"Santa Maria";"Rs";814
825;"Isis Cristiane De Camargos Mendes";"12345678921";"1990-04-27";"Rua Castro Alves N 110";"Porto Alegre";"Rs";801
837;"Liana Travaglia De Sousa";"12345678933";"1981-05-04";"Avenida Brasil Leste N 1230 ";"Passo Fundo";"Rs";802
849;"Ludmilla Vilas Boas Simoneti";"12345678945";"1981-05-23";"Avenida Brasil Leste N 1350 ";"Passo Fundo";"Rs";808
835;"Diego Rabelo Damasceno";"12345678931";"1988-10-07";"Avenida Brasil Leste N 1210 ";"Passo Fundo";"Rs";802
819;"Lorena Alves Silva Ottoni";"12345678915";"1987-07-17";"Rua Castro Alves N 50";"Porto Alegre";"Rs";810
844;"Angela Aparecida Silva Siqueira";"12345678940";"1980-04-27";"Avenida Brasil Leste N 1300 ";"Passo Fundo";"Rs";812
836;"Victor Vinicius De Rezende";"12345678932";"1989-07-18";"Avenida Brasil Leste N 1220 ";"Passo Fundo";"Rs";802
837;"Liana Travaglia De Sousa";"12345678933";"1981-05-04";"Avenida Brasil Leste N 1230 ";"Passo Fundo";"Rs";802
1100;"Neymar Jr";"73405243041";"1986-12-17";"Rua Santa Catarina";"Porto Nacional";"TO";1100
1101;"Luis Suarez";"53467736068";"1988-05-25";"Rua do Carteiro";"Palmas";"TO";1100
1101;"Luis Suarez";"53467736068";"1988-05-25";"Rua do Carteiro";"Palmas";"TO";1100
1102;"Andres Iniesta";"29984302016";"1987-04-12";"Rua da Cozinheira";"Araguaina";"TO";1101
1103;"Ivan Rakitic";"28839881964";"1990-06-29";"Rua do Mecanico";"Gurupi";"TO";1101
1103;"Ivan Rakitic";"28839881964";"1990-06-29";"Rua do Mecanico";"Gurupi";"TO";1101
1104;"Jordi Alba";"22267918412";"1980-10-29";"Rua do Funcionario";"Colinas do Tocantins";"TO";1102
1105;"Marc Andre Ter Stegen";"43390845810";"1990-12-01";"Rua do Cobrador";"Augustinopolis";"TO";1102
1105;"Marc Andre Ter Stegen";"43390845810";"1990-12-01";"Rua do Cobrador";"Augustinopolis";"TO";1102
1106;"Daniel Alves";"38104193970";"1979-01-31";"Rua do Motorista";"Axixa do Tocantins";"TO";1103
1107;"Rafinha";"89917571035";"1989-02-28";"Rua da Manicure";"Mateiros";"TO";1103
1107;"Rafinha";"89917571035";"1989-02-28";"Rua da Manicure";"Mateiros";"TO";1103
1108;"Arda Turan";"01541771990";"1991-03-09";"Rua do Psicologo";"Abreulandia";"TO";1104
1109;"Douglas";"89180090460";"1992-06-26";"Rua do Psiquiatra";"Campos Lindos";"TO";1104
1109;"Douglas";"89180090460";"1992-06-26";"Rua do Psiquiatra";"Campos Lindos";"TO";1104
1110;"Marco Reus";"02725651999";"1990-09-26";"Rua da Faxineira";"Conceicao do Tocantins";"TO";1105
1111;"Pierre-Emerick Aubameyang";"08991927777";"1990-06-03";"Rua do Garcom";"Cristalandia";"TO";1105
1111;"Pierre-Emerick Aubameyang";"08991927777";"1990-06-03";"Rua do Garcom";"Cristalandia";"TO";1105
1112;"Shinji Kagawa";"69780496114";"1987-12-28";"Rua do Cliente";"Cariri do Tocantins";"TO";1100
*/
-- (h) Listar os clientes que possuem contas vinculadas a agências situadas cidades distintas das cidades dos clientes.
SELECT DISTINCT c.* FROM cliente c INNER JOIN clienteconta cc ON c.id = cc.id_cliente INNER JOIN agencia a ON cc.cod_agencia = a.codigo WHERE UPPER(c.cidade) <> UPPER(a.municipio);
/*
857;"Ricardo Marcelo Mota Filho";"12345678953";"1990-03-18";"Avenida Borges de Medeiros N 185";"Santa Maria";"Rs";804
1112;"Shinji Kagawa";"69780496114";"1987-12-28";"Rua do Cliente";"Cariri do Tocantins";"TO";1100
850;"Laiza Marie Roldao";"12345678946";"1983-05-11";"Avenida Borges de Medeiros N 115";"Santa Maria";"Rs";808
1751;"Claudio Nascimento";"20358425120";"1988-04-15";"Rua do Barreiro";"Sertaozinho";"SP";1721
836;"Victor Vinicius De Rezende";"12345678932";"1989-07-18";"Avenida Brasil Leste N 1220 ";"Passo Fundo";"Rs";802
100;"﻿Matilde Souza";"98151129450";"1930-11-21";"Rua Ferdinando Mollon 493";"Santa Bárbara D Oeste";"SP";104
2;"José Marques";"10399599157";"1990-01-10";"Rua Dolores Duran N 275";"São Paulo";"SP";4
1107;"Rafinha";"89917571035";"1989-02-28";"Rua da Manicure";"Mateiros";"TO";1103
851;"Wanessa Danielly Fernandes";"12345678947";"1983-12-11";"Avenida Borges de Medeiros N 125";"Santa Maria";"Rs";808
1;"Arthur Cesar";"32112354397";"1995-02-20";"Rua Beija Flor N 341";"Uberlandia";"MG";5
1106;"Daniel Alves";"38104193970";"1979-01-31";"Rua do Motorista";"Axixa do Tocantins";"TO";1103
852;"Sandro Mayrink Paula";"12345678948";"1987-05-14";"Avenida Borges de Medeiros N 135";"Santa Maria";"Rs";813
854;"Paulo Victor Machado Prado";"12345678950";"1989-12-16";"Avenida Borges de Medeiros N 155";"Santa Maria";"Rs";813
859;"Amon Ribeiro Lopes";"12345678955";"1990-04-25";"Avenida Borges de Medeiros N 205";"Santa Maria";"Rs";809
844;"Angela Aparecida Silva Siqueira";"12345678940";"1980-04-27";"Avenida Brasil Leste N 1300 ";"Passo Fundo";"Rs";812
1100;"Neymar Jr";"73405243041";"1986-12-17";"Rua Santa Catarina";"Porto Nacional";"TO";1100
102;"Isabela Dias";"29087694920";"1974-05-08";"Rua Vereador Ozias Santana 961";"Guarapari";"ES";104
860;"Angelo Alves Ferreira Júnior";"12345678956";"1991-09-04";"Avenida Borges de Medeiros N 215";"Santa Maria";"Rs";809
1758;"Isabella Gontijo";"03585695235";"1989-08-06";"Rua das Palmas";"Belo Horizonte";"MG";1728
101;"Nicolas Cavalcanti";"57069343710";"1983-09-18";"Rua Rosângela Cunha Redondo 1689";"Londrina";"PR";104
849;"Ludmilla Vilas Boas Simoneti";"12345678945";"1981-05-23";"Avenida Brasil Leste N 1350 ";"Passo Fundo";"Rs";808
853;"Duíllio Tomaz Silva";"12345678949";"1987-07-28";"Avenida Borges de Medeiros N 145";"Santa Maria";"Rs";813
858;"Rafael Henrique Araujo Dos Reis";"12345678954";"1985-02-07";"Avenida Borges de Medeiros N 195";"Santa Maria";"Rs";809
861;"Francisco Assis Miguel Jardine";"12345678957";"1994-01-10";"Avenida Borges de Medeiros N 225";"Santa Maria";"Rs";814
1752;"Alexandre Pereira";"20579635842";"1991-02-03";"Rua Martinesia";"Sao Paulo";"SP";1722
705;"Renan Calheiros";"93090394006";"1948-08-02";"Rua dos Corruptos, 93";"Uberlandia";"MG";701
4;"Vitor Borges";"23939997833";"2000-01-01";"Alameda Mario Cardoso N 174";"Rio de Janeiro";"RG";2
3;"Maria Joaquina";"44599512397";"2002-02-03";"Avenida Marcos de Freitas N 112";"Araguari";"MG";3
837;"Liana Travaglia De Sousa";"12345678933";"1981-05-04";"Avenida Brasil Leste N 1230 ";"Passo Fundo";"Rs";802
819;"Lorena Alves Silva Ottoni";"12345678915";"1987-07-17";"Rua Castro Alves N 50";"Porto Alegre";"Rs";810
855;"Eden Vilarinho Costa Junior";"12345678951";"1993-10-08";"Avenida Borges de Medeiros N 165";"Santa Maria";"Rs";804
1109;"Douglas";"89180090460";"1992-06-26";"Rua do Psiquiatra";"Campos Lindos";"TO";1104
1104;"Jordi Alba";"22267918412";"1980-10-29";"Rua do Funcionario";"Colinas do Tocantins";"TO";1102
1111;"Pierre-Emerick Aubameyang";"08991927777";"1990-06-03";"Rua do Garcom";"Cristalandia";"TO";1105
1750;"Carlos Eduardo";"25612054235";"1990-06-21";"Rua Rezende";"Sao Paulo";"SP";1720
1105;"Marc Andre Ter Stegen";"43390845810";"1990-12-01";"Rua do Cobrador";"Augustinopolis";"TO";1102
835;"Diego Rabelo Damasceno";"12345678931";"1988-10-07";"Avenida Brasil Leste N 1210 ";"Passo Fundo";"Rs";802
1101;"Luis Suarez";"53467736068";"1988-05-25";"Rua do Carteiro";"Palmas";"TO";1100
856;"Lidiane Margarida Do Carmo";"12345678952";"1982-05-16";"Avenida Borges de Medeiros N 175";"Santa Maria";"Rs";804
1110;"Marco Reus";"02725651999";"1990-09-26";"Rua da Faxineira";"Conceicao do Tocantins";"TO";1105
1102;"Andres Iniesta";"29984302016";"1987-04-12";"Rua da Cozinheira";"Araguaina";"TO";1101
5;"Thais Felipe";"99897738735";"1991-02-07";"Rua da Maçã N 185";"Uberlandia";"MG";1
1103;"Ivan Rakitic";"28839881964";"1990-06-29";"Rua do Mecanico";"Gurupi";"TO";1101
1759;"Sandra Cristina";"21896358420";"1992-11-25";"Avenida Joao Naves de Avila";"Uberlandia";"MG";1729
825;"Isis Cristiane De Camargos Mendes";"12345678921";"1990-04-27";"Rua Castro Alves N 110";"Porto Alegre";"Rs";801
103;"Cauã Pinto";"87329143421";"1998-09-18";"Travessa Cerqueira Torres 353";"Salvador";"BA";104
1108;"Arda Turan";"01541771990";"1991-03-09";"Rua do Psicologo";"Abreulandia";"TO";1104
104;"Daniel Almeida";"69387268683";"1982-11-12";"Avenida José Cutrale Junior 521";"Bebedouro";"SP";101

*/
-- (i) Sem utilizar junção, mostre o nome dos funcionários que são supervisores
SELECT nome FROM funcionario s WHERE s.num_funcional IN (SELECT DISTINCT supervisor FROM funcionario f);
/*
"Thiago Moreira Borges"
"Fabricio Ismael"
"Daniel Dias Alves"
"Johnata Ferreira"
"Jose Roberto"
"﻿Brenda Melo"
"Joao da Silva"
"Jose da Costa"
"Joaquim Nascimento"
"Francisco da Silva"
"Antonio Oliveira"
"Cesar Naves"
"Maria Aparecida"
"Evandro Santos"
"Flavia de Almeida"
"Lorenzo Breno Cauê Almeida"
"Caio"
"Luiz"
"Augusto"
"Lucas Rezende"
"Cristiane Dias"
"Paulo Roberto"
"Ricardo Filho"
"Maria da Silva"
"Adão Casalinho"
"Adélia Barroqueiro"
"Alarico Alancastro"
"Alcides Zagalo"
"Aluísio Gentil"
"Aluísio Herrera"
"Alvito Cachão"
"Amílcar Soeiro"
"Anhangüera Silva"
"Apoena Villar"
"Arcidres Fonseca"
"Arminda Carneiro"
"Baltasar Otero"
"Barnabé Cesário"
"Belmira Rodrigues"
"Bernardina Pereira"
"Bernardo Vellozo"
"Caetano Louzada"
"Camila Almeida"
"Caubi Villar"
"Celso Vasconcellos"
"Clarisse Espírito Santo"
"Claudemira Villela"
"Cosme Palha"
"Célia Lobato"
*/
-- (j) Sem utilizar junção, mostre o nome dos funcionários que não são supervisores. Se a resposta for nula
--     pode ser que a consulta esteja errada - conferir na base para ter certeza.
SELECT nome FROM funcionario s WHERE s.num_funcional NOT IN (SELECT DISTINCT supervisor FROM funcionario f WHERE supervisor IS NOT NULL);	
/*
"Leonor Goncalves"
"Luiz Cunha"
"Carlos Sousa"
"Paulo Barbosa"
"Jair das Couves"
"Gustavo Dias"
"Sebastião José"
"Ana Maria Matias"
"Bruna Castro"
"Hiago Cintra"
"Thiago Nunes"
"Alisson dos Reis"
"Eduardo Oliveira"
"Josiane Silva"
"Natalia Araujo"
"Cauê Davi Enrico da Silva"
"Julio Igor Cauã Campos"
"Nicolas Breno Luan Moura"
"Miguel Ricardo Costa"
"Carlos"
"Jose Roberto"
"Lionel Messi"
"Rafael"
"Arthur"
"Rhaniel"
"Jean"
"Sandro"
"Delfina Ornelas"
"Denise Taperebá"
"Diamantino Pozas"
"Dinarte Torrado"
"Domingos Antas"
"Dorindo Portela"
"Délio Grangeia"
"Eduardo Palmeira"
"Eloi Amarante"
"Emiliano Gracia"
"Emílio García"
"Epaminondas Marcondes"
"Eva Quinterno"
"Feliciana Ventura"
"Felícia Quinzeiro"
"Fernão Ataí"
"Filena Vilhena"
"Flamínia Vega"
"Flávia Meirelles"
"Fábio Pamplona"
"Gaspar Tavera"
"Gonçalo Carvalhaes"
"Guido Morais"
"Hipólito Quadros"
"Ildefonso Castello Branco"
"Jacinto Garcez"
"Janaína Paranaguá"
"Jorgina Anlicoara"
"Julieta Villas Boas"
"Laurinda Dutra"
"Laurinda Lima"
"Liedson Domingos"
"Liliana Brites"
"Marco Mortágua"
"Marilda Toledo"
"Melissa Chousa"
"Mem Mangueira"
"Natália Reyes"
"Nazaré Arantes"
"Nicolau Travassos"
"Noémia Cavadas"
"Nádia Monforte"
"Olavo Negromonte"
"Olga Jucá"
"Ordonho Lira"
"Palmira Garcés"
"Paulino Brião"
"Pedro Valido"
"Plínio Moita"
"Potira Caminha"
"Quitério Tabajara"
"Ricardina Soares"
"Roque Alancastre"
"Rui Lucas"
"Rúben Figueroa"
"Salomé Valentín"
"Santiago Caballero"
"Sarita Taborda"
"Silvana Magallanes"
"Socorro Quadros"
"Sonás Teles"
"Sílvio Hierro"
"Tadeu Monforte"
"Teresina Varella"
"Ubaldo Thamily"
"Ubiratã Lucas"
"Ulisses Canejo"
"Valentim Themes"
"Vanda Tabajara"
"Verónica Eiró"
"Xavier Balladares"
"Xavier Vázquez"
"Zacarias Tupinambá"
"Zoraide Patrício"
"Énia Leiria "
*
-- 14) CONSULTAS COM FUNÇÕES DE AGREGAÇÃO
-- > Dica: construa a consulta sem a função de agregação e observe os dados para verificar se atendem ao enunciado.
--  em seguida aplica a função de agregação
-- (a) Mostrar a data e hora da operação mais recente do banco
SELECT MAX(datahora) FROM operacao;
-- "2016-10-06 13:59:56.776"
-- (b) Mostrar o saldo médio de todas as contas
SELECT AVG(saldo) FROM conta;
--29637336.537395348837
--mesmo que: SELECT(SELECT SUM(saldo) FROM conta)/(SELECT COUNT(*) FROM conta)
-- (c) Mostrar a média e o desvio padrão do saldo considerando todas as contas
SELECT AVG(saldo),STDDEV_SAMP(saldo) FROM conta;
--29637336.537395348837;165176963.4453
-- (d) Mostrar a quantidade de clientes do banco
SELECT COUNT(*) FROM cliente;
--193
-- (e) Mostrar a quantidade de agências do estado de 'SP'
SELECT COUNT(*) FROM agencia WHERE UPPER(estado) = 'SP';
--30
-- (f) Mostrar a quantidade de funcionários que são supervisionados por alguém
SELECT COUNT(supervisor) FROM funcionario;
--114
-- (g) Mostrar a quantidade de funcionários que são supervisores
SELECT COUNT(DISTINCT supervisor) FROM funcionario;
--49
-- (h) Mostrar a quantidade de funcionários que não são supervisores
SELECT COUNT(*) FROM (SELECT * FROM funcionario f RIGHT JOIN funcionario s ON f.supervisor = s.num_funcional WHERE f.* IS NULL) as resultado;
--102
-- (i) Mostrar os nomes e telefones do(s) funcionário(s) mais antigo
SELECT nome,telefone FROM funcionario WHERE data_admissao = (SELECT MIN(data_admissao) FROM funcionario);
--"Arthur";"069911112222"
-- (j) Mostrar os nomes e telefones do(s) funcionário(s) mais antigo que trabalha(m) no estado de 'SP'
SELECT u.nome,u.telefone FROM funcionario u INNER JOIN agencia g ON u.agencia = g.codigo WHERE data_admissao = (SELECT MIN(data_admissao) FROM funcionario f INNER JOIN agencia a ON f.agencia = a.codigo WHERE UPPER(a.estado) = 'SP') AND UPPER(g.estado) = 'SP';
/*
"Adão Casalinho";"011999999900"
"Delfina Ornelas";"011999999925"
"Jacinto Garcez";"011999999950"
"Quitério Tabajara";"011999999975"
*/
-- (k) Mostrar a quantidade total de dependentes dos funcionarios que trabalham em agências de 'SE'
SELECT COUNT(*) FROM (SELECT * FROM dependentes d INNER JOIN funcionario f ON d.funcionario = f.num_funcional INNER JOIN agencia a ON f.agencia = a.codigo WHERE UPPER(a.estado) = 'SE') AS resultado;
--0
-- (l) Mostrar a quantidade de supervisores que trabalham em agências do 'RJ'
SELECT COUNT(DISTINCT num_funcional) FROM (SELECT s.* FROM funcionario s INNER JOIN funcionario f ON s.num_funcional = f.supervisor INNER JOIN agencia a ON s.agencia = a.codigo WHERE UPPER(a.estado) = 'RJ') AS resultado;
--1
-- 15) CONSULTAS COM OUTER JOINS
-- (a) Listar o nome do funcionário juntamente com o nome de seus dependentes. Caso o funcionário tenha mais de um dependente
-- ele constará na resposta mais de uma vez (uma vez para cada dependente). Caso o funcionário não tenha dependentes, ele
-- também deve aparecer na resposta
SELECT f.nome,d.nome_dependente FROM funcionario f LEFT JOIN dependentes d ON f.num_funcional = d.funcionario;
/*
"Daniel Dias Alves";"Rodney Alves"
"Fabricio Ismael";"Mateus Felipe"
"Jose Roberto";"Carlos Eduardo"
"Thiago Moreira Borges";"Jonas Augusto"
"Johnata Ferreira";"Danilo Borges"
"﻿Brenda Melo";"﻿Diego Castro"
"Leonor Goncalves";"Laura Martins"
"Luiz Cunha";"Maria Cavalcanti"
"Carlos Sousa";"Gabrielle Barros"
"Paulo Barbosa";"Amanda Fernandes"
"Joao da Silva";"Camila Almeida"
"Jose da Costa";"Vanessa Tavares"
"Joaquim Nascimento";"Felipe Amaral"
"Francisco da Silva";"Joao do Pulo"
"Jair das Couves";"Willian Alves"
"Antonio Oliveira";"Mariana Oliveira"
"Cesar Naves";"Kauã Naves"
"Maria Aparecida";"Eliane Aparecida"
"Maria Aparecida";"Pedro Dias"
"Flavia de Almeida";"Ana Laura de Almeida"
"Lorenzo Breno Cauê Almeida";"Elisa Caroline Araújo"
"Cauê Davi Enrico da Silva";"Lara Juliana Lorena de Paula"
"Julio Igor Cauã Campos";"Nicole Brenda Barros"
"Nicolas Breno Luan Moura";"Heloisa Juliana da Silva"
"Miguel Ricardo Costa";"Julia Mirella Souza"
"Caio";"Kevin De Bruyne"
"Caio";"David Silva"
"Luiz";"Joe Hart"
"Luiz";"Vincent Kompany"
"Rafael";"Nicolas Otamendi"
"Rafael";"Bacary Sagna"
"Carlos";"Gael Clichy"
"Carlos";"Fernandinho"
"Lionel Messi";"Yaya Toure"
"Lionel Messi";"Sergio Aguero"
"Jose Roberto";"Kelechi Iheanacho"
"Jose Roberto";"Ikay Gundogan"
"Arthur";"Caio"
"Rhaniel";"Rafael"
"Jean";"Josino"
"Sandro";"Gabriel"
"Augusto";"Thiago"
"Lucas Rezende";"Roberto Alvarez"
"Cristiane Dias";"Paula Siqueira"
"Paulo Roberto";"Igor Motta"
"Ricardo Filho";"Bruno Roberto"
"Maria da Silva";"Matheus Dias"
"Adão Casalinho";"Abigail Casalinho"
"Adélia Barroqueiro";"Adelaide Barroqueiro"
"Alarico Alancastro";"Adosindo Alancastro"
"Alcides Zagalo";"Aida Zagalo"
"Aluísio Gentil";"Alcides Gentil"
"Aluísio Herrera";"Aleixo Herrera"
"Alvito Cachão";"Aniana Cachão"
"Amílcar Soeiro";"Antão Soeiro"
"Anhangüera Silva";"Aníbal Silva"
"Apoena Villar";"Apoena Villar"
"Arcidres Fonseca";"Augusta Fonseca"
"Arminda Carneiro";"Baltasar Carneiro"
"Baltasar Otero";"Bernardino Otero"
"Barnabé Cesário";"Blasco Cesário"
"Belmira Rodrigues";"Boaventura Rodrigues"
"Bernardina Pereira";"Burtira Pereira"
"Bernardo Vellozo";"Bárbara Vellozo"
"Caetano Louzada";"Capitolina Louzada"
"Camila Almeida";"Catarino Almeida"
"Caubi Villar";"Cecília Villar"
"Celso Vasconcellos";"Comecus Vasconcellos"
"Clarisse Espírito Santo";"Dinarte Espírito Santo"
"Claudemira Villela";"Dorindo Villela"
"Cosme Palha";"Dulce Palha"
"Célia Lobato";"Elba Lobato"
"Delfina Ornelas";"Eládio Ornelas"
"Denise Taperebá";"Emílio Taperebá"
"Diamantino Pozas";"Ernesto Pozas"
"Dinarte Torrado";"Eunice Torrado"
"Domingos Antas";"Evangelista Antas"
"Dorindo Portela";"Ezequiel Portela"
"Délio Grangeia";"Fabiano Grangeia"
"Eduardo Palmeira";"Feliciano Palmeira"
"Eloi Amarante";"Filipa Amarante"
"Emiliano Gracia";"Florbela Gracia"
"Emílio García";"Genoveva García"
"Epaminondas Marcondes";"Gertrudes Marcondes"
"Eva Quinterno";"Giovana Quinterno"
"Feliciana Ventura";"Honorina Ventura"
"Felícia Quinzeiro";"Horácio Quinzeiro"
"Fernão Ataí";"Ilídio Ataí"
"Filena Vilhena";"Iraci Vilhena"
"Flamínia Vega";"Jadir Vega"
"Flávia Meirelles";"Jamari Meirelles"
"Fábio Pamplona";"Juliano Pamplona"
"Gaspar Tavera";"Laura Tavera"
"Gonçalo Carvalhaes";"Laurinda Carvalhaes"
"Guido Morais";"Leopoldina Morais"
"Hipólito Quadros";"Lina Quadros"
"Ildefonso Castello Branco";"Lídia Castello Branco"
"Jacinto Garcez";"Lígia Garcez"
"Delfina Ornelas";"Efraim Ornelas"
"Denise Taperebá";"Jakquelini Taperebá"
"Diamantino Pozas";"Ricardo Pozas"
"Dinarte Torrado";"Vanderlei Torrado"
"Domingos Antas";"Ana Paula Antas"
"Dorindo Portela";"Debora Portela"
"Délio Grangeia";"Monalisa Grangeia"
"Eduardo Palmeira";"Geraldo Palmeira"
"Eloi Amarante";"Juliana Amarante"
"Emiliano Gracia";"Nayani Gracia"
"Emílio García";"Aniangeles García"
"Epaminondas Marcondes";"Leila Marcondes"
"Eva Quinterno";"José Quinterno"
"Feliciana Ventura";"Paulo Ventura"
"Felícia Quinzeiro";"Wander Quinzeiro"
"Fernão Ataí";"Mariana Ataí"
"Filena Vilhena";"Jule Vilhena"
"Flamínia Vega";"Jéssica Vega"
"Flávia Meirelles";"Jéssyca Meirelles"
"Fábio Pamplona";"Lorena Pamplona"
"Gaspar Tavera";"Fernanda Tavera"
"Gonçalo Carvalhaes";"Horácio Carvalhaes"
"Guido Morais";"Daniel Morais"
"Hipólito Quadros";"Lino Quadros"
"Ildefonso Castello Branco";"Matthew Castello Branco"
"Jacinto Garcez";"Dominic Garcez"
"Janaína Paranaguá";"Lília Paranaguá"
"Jorgina Anlicoara";"Marlene Anlicoara"
"Julieta Villas Boas";"Matias Villas Boas"
"Laurinda Dutra";"Maíra Dutra"
"Laurinda Lima";"Melissa Lima"
"Liedson Domingos";"Mem Domingos"
"Liliana Brites";"Miguelina Brites"
"Marco Mortágua";"Mileide Mortágua"
"Marilda Toledo";"Minervina Toledo"
"Melissa Chousa";"Moaci Chousa"
"Mem Mangueira";"Márcia Mangueira"
"Natália Reyes";"Máxima Reyes"
"Nazaré Arantes";"Máximo Arantes"
"Nicolau Travassos";"Neuza Travassos"
"Noémia Cavadas";"Nídia Cavadas"
"Nádia Monforte";"Oriana Monforte"
"Olavo Negromonte";"Palmira Negromonte"
"Olga Jucá";"Piedade Jucá"
"Ordonho Lira";"Piedade Lira"
"Palmira Garcés";"Piedade Garcés"
"Paulino Brião";"Plácido Brião"
"Pedro Valido";"Potira Valido"
"Plínio Moita";"Querubim Moita"
"Potira Caminha";"Raimundo Caminha"
"Janaína Paranaguá";"Anderson Paranaguá"
"Jorgina Anlicoara";"Lélio Anlicoara"
"Julieta Villas Boas";"Tainá Villas Boas"
"Laurinda Dutra";"Analinda Dutra"
"Laurinda Lima";"Cássia Lima"
"Liedson Domingos";"Christopher Domingos"
"Liliana Brites";"Dom Brites"
"Marco Mortágua";"Chris Mortágua"
"Marilda Toledo";"Matt Toledo"
"Melissa Chousa";"Hector Chousa"
"Mem Mangueira";"Fabrício Mangueira"
"Natália Reyes";"Neuler Reyes"
"Nazaré Arantes";"Neuber Arantes"
"Nicolau Travassos";"Gislaine Travassos"
"Noémia Cavadas";"Rodolfo Cavadas"
"Nádia Monforte";"Kleverson Monforte"
"Olavo Negromonte";"Paula Negromonte"
"Olga Jucá";"Jussara Jucá"
"Ordonho Lira";"Moisés Lira"
"Palmira Garcés";"Renato Garcés"
"Paulino Brião";"Fausto Brião"
"Pedro Valido";"Nikolas Valido"
"Plínio Moita";"Diogo Moita"
"Potira Caminha";"Matheus Caminha"
"Janaína Paranaguá";"Eli Paranaguá"
"Jorgina Anlicoara";"Célia Anlicoara"
"Julieta Villas Boas";"Marta Villas Boas"
"Laurinda Dutra";"Carlos Dutra"
"Laurinda Lima";"Joana Lima"
"Liedson Domingos";"Ephram Domingos"
"Liliana Brites";"Kal-El Brites"
"Marco Mortágua";"Kárita Mortágua"
"Marilda Toledo";"Harry Toledo"
"Melissa Chousa";"Pedro Chousa"
"Mem Mangueira";"Marcelo Mangueira"
"Natália Reyes";"Arthur Reyes"
"Nazaré Arantes";"Sheila Arantes"
"Nicolau Travassos";"Patrícia Travassos"
"Noémia Cavadas";"Neide Cavadas"
"Nádia Monforte";"Cleber Monforte"
"Olavo Negromonte";"Bruno Negromonte"
"Olga Jucá";"Bruno Jucá"
"Ordonho Lira";"Bruno Lira"
"Palmira Garcés";"Bruna Garcés"
"Paulino Brião";"Giselle Brião"
"Pedro Valido";"Juliette Valido"
"Plínio Moita";"Jefferson Moita"
"Potira Caminha";"Jordan Caminha"
"Ricardina Soares";""
"Ana Maria Matias";""
"Valentim Themes";""
"Salomé Valentín";""
"Gustavo Dias";""
"Eduardo Oliveira";""
"Josiane Silva";""
"Ubiratã Lucas";""
"Santiago Caballero";""
"Sebastião José";""
"Énia Leiria ";""
"Zoraide Patrício";""
"Ulisses Canejo";""
"Rui Lucas";""
"Evandro Santos";""
"Hiago Cintra";""
"Socorro Quadros";""
"Xavier Vázquez";""
"Alisson dos Reis";""
"Zacarias Tupinambá";""
"Sílvio Hierro";""
"Roque Alancastre";""
"Teresina Varella";""
"Silvana Magallanes";""
"Thiago Nunes";""
"Quitério Tabajara";""
"Rúben Figueroa";""
"Natalia Araujo";""
"Sonás Teles";""
"Vanda Tabajara";""
"Verónica Eiró";""
"Ubaldo Thamily";""
"Tadeu Monforte";""
"Sarita Taborda";""
"Bruna Castro";""
"Xavier Balladares";""
*/
-- (b) Listar todos os nomes dos clientes juntamente com as contas correntes (agência e número) -- se o cliente não possuir conta
-- ele também deve aparecer na resposta. No lugar da agência deve aparecer a mensagem ('<cliente sem conta>') -- dica: COALESCE()
SELECT c.nome,COALESCE(cc.cod_agencia,'<cliente sem conta>'),cc.numero_conta FROM cliente c LEFT JOIN clienteconta cc ON c.id = cc.id_cliente;
/*
"Arthur Cesar";"1324";993005
"José Marques";"0706";993997
"Maria Joaquina";"1323";908837
"Vitor Borges";"3928";997790
"Thais Felipe";"0743";899769
"﻿Matilde Souza";"1792";199
"Nicolas Cavalcanti";"3075";198
"Isabela Dias";"1797";197
"Cauã Pinto";"0775";196
"Daniel Almeida";"1808";195
"Joao Santana";"2918";703
"Dilma Lana";"1221";704
"Luis Inacio";"1001";701
"Aecio Neves";"1221";702
"Renan Calheiros";"5874";700
"César De Alencar Sartin";"2794";27100
"Rodrigo Francisco De Oliveira";"2794";27101
"Maria Fernanda Ferreira Da Silva";"2794";27102
"Gabriel Silva De Barros Antunes";"2794";27103
"Lorena Alves Silva Ottoni";"2794";27104
"Etiene Borges Silva";"2794";27105
"Sávio Antunes Maciel Ribeiro";"2794";27106
"Emiliano Teixeira Martins";"2794";27107
"Daniela De Oliveira Marques";"2794";27108
"Rodrigo Soares Siqueira";"2794";27109
"Isis Cristiane De Camargos Mendes";"2794";27110
"Diego Gouvêa Couto";"3536";35600
"Ruan Moraes Cardoso";"3536";35601
"Litória Maria Alves De Souza Filha";"3536";35602
"Rayane Ferreira Da Silva";"3536";35603
"Desirre Tomaz Martins Pereira";"3536";35604
"Rafael Paulino Silva Sobrinho";"3536";35605
"Cristiano Almeida Silveira";"3536";35606
"Lauriane Soares Costa";"3536";35607
"Carlos De Souza Novais";"3536";35608
"Diego Rabelo Damasceno";"3536";35609
"Victor Vinicius De Rezende";"3536";35610
"Liana Travaglia De Sousa";"3536";35611
"Tatiana Cristina Silva";"3534";35400
"Marina Barbosa De Freitas Vieira";"3534";35401
"Adriana Santos Farias";"3534";35402
"Fabricio Soares Borges";"3534";35403
"Talita Vieira Barbosa Martins";"3534";35404
"Carlos Henrique De Araujo";"3534";35405
"Angela Aparecida Silva Siqueira";"3534";35406
"Débora Cristina Alves Rita";"3534";35407
"Lorena Fonseca Martins";"3534";35408
"Letícia Maria Rosa Lima";"3534";35409
"Lais Sousa Costa";"3534";35410
"Ludmilla Vilas Boas Simoneti";"3534";35411
"Laiza Marie Roldao";"2692";26900
"Wanessa Danielly Fernandes";"2692";26901
"Sandro Mayrink Paula";"2692";26902
"Duíllio Tomaz Silva";"2692";26903
"Paulo Victor Machado Prado";"2692";26904
"Eden Vilarinho Costa Junior";"2692";26905
"Lidiane Margarida Do Carmo";"2692";26906
"Ricardo Marcelo Mota Filho";"2692";26907
"Rafael Henrique Araujo Dos Reis";"2692";26908
"Amon Ribeiro Lopes";"2692";26909
"Angelo Alves Ferreira Júnior";"2692";26910
"Francisco Assis Miguel Jardine";"2692";26911
"Gledmar Pires De Moura";"1484";14800
"Wilza Assuncao Braz";"1484";14801
"Cleo Custodio Ferreira";"1484";14802
"Isis Cristiane De Camargos Mendes";"1484";14803
"Liana Travaglia De Sousa";"1484";14804
"Ludmilla Vilas Boas Simoneti";"1484";14805
"Francisco Assis Miguel Jardine";"1484";14806
"Cleo Custodio Ferreira";"1484";14807
"Diego Rabelo Damasceno";"1484";14808
"Lorena Alves Silva Ottoni";"1484";14809
"Angela Aparecida Silva Siqueira";"1484";14810
"Victor Vinicius De Rezende";"1484";14811
"Liana Travaglia De Sousa";"1484";14812
"Laura Luna Oliveira";"0095";123
"Isabelle Pietra Pinto";"0128";456
"Tomás Miguel Rocha";"0411";789
"Heitor Cauã de Paula";"7134";321
"Luiza Flávia Rodrigues";"1232";987
"Neymar Jr";"1100";1100
"Neymar Jr";"1101";1100
"Luis Suarez";"1102";1100
"Luis Suarez";"1103";1100
"Andres Iniesta";"1104";1100
"Andres Iniesta";"1100";1101
"Ivan Rakitic";"1101";1101
"Ivan Rakitic";"1102";1101
"Jordi Alba";"1103";1101
"Jordi Alba";"1104";1101
"Marc Andre Ter Stegen";"1100";1102
"Marc Andre Ter Stegen";"1101";1102
"Daniel Alves";"1102";1102
"Daniel Alves";"1103";1102
"Rafinha";"1104";1102
"Rafinha";"1100";1103
"Arda Turan";"1101";1103
"Arda Turan";"1102";1103
"Douglas";"1103";1103
"Douglas";"1104";1103
"Marco Reus";"1100";1104
"Marco Reus";"1101";1104
"Pierre-Emerick Aubameyang";"1102";1104
"Pierre-Emerick Aubameyang";"1103";1104
"Shinji Kagawa";"1104";1104
"Luiz";"1300";1
"Marcelo";"1301";1
"Pedro";"1302";1
"Steffan";"1303";1
"Heitor";"1304";1
"Carlos Eduardo";"1701";1789
"Claudio Nascimento";"1707";1799
"Alexandre Pereira";"1710";1788
"Isabella Gontijo";"1708";1798
"Sandra Cristina";"1709";1777
"Abílio Guedes";"1600";1
"Acacio Estrella";"1601";1
"Acacio Vianna";"1602";1
"Adelino Benevides";"1603";1
"Ajuricaba Braga";"1604";1
"Alarico Vieira";"1605";1
"Aleixo Moura";"1606";1
"Almerinda Villar";"1607";1
"Aluísio Pessanha";"1608";1
"André Pais";"1609";1
"Aniano Garrau";"1610";1
"Augusta Camacho";"1611";1
"Baltasar Marino";"1612";1
"Belmiro Prado";"1613";1
"Bernardete Mourão";"1614";1
"Bernardina Duarte";"1615";1
"Blasco Antúnez";"1616";1
"Branca Diniz";"1617";1
"Bukake Jesus";"1618";1
"Carmem Campelo";"1619";1
"Casimiro Mattos";"1620";1
"Cauê Cintra";"1621";1
"Celso Alves";"1622";1
"Celso Sousa";"1623";1
"Clotilde Ríos";"1624";1
"Célia Álvarez";"1600";2
"Deise Trindade";"1601";2
"Derli Guerra";"1602";2
"Diodete Figueiredo";"1603";2
"Diodete Leça";"1604";2
"Dulce Chousa";"1605";2
"Dulce Ferreira";"1606";2
"Délio Candal";"1607";2
"Edgar Frois";"1608";2
"Emília Canejo";"1609";2
"Eva Bulhão";"1610";2
"Faustino Pedrozo";"1611";2
"Feliciano Moutinho";"1612";2
"Fernão Butantã";"1613";2
"Filena Guerra";"1614";2
"Floripes Suaçuna";"1615";2
"Flávia Pavía";"1616";2
"Frederica Cabreira";"1617";2
"Frutuoso Suaçuna";"1618";2
"Genoveva Uchoa";"1619";2
"Son Goku";"1620";2
"Graça Vale";"1621";2
"Guilherme Antunes";"1622";2
"Hugo Sosa";"1623";2
"Hélder Morais";"1624";2
"Ilídio Bernardes";"1600";3
"Irene Guerrero";"1601";3
"Isilda Prado";"1602";3
"Ivete Rosa";"1603";3
"Jordana Gaspar";"1604";3
"Jordana Oliveira";"1605";3
"Jordão Tabalipa";"1606";3
"Lineu Mansilla";"1607";3
"Lopo Vidigal";"1608";3
"Luzia Ferro";"1609";3
"Magda Fitas";"1610";3
"Mamede Saldaña";"1611";3
"Marli Tupinambá";"1612";3
"Matias Travassos";"1613";3
"Melissa Jiménez";"1614";3
"Micaela Bugallo";"1615";3
"Micaela Ferrera";"1616";3
"Milu Diegues";"1617";3
"Máxima Cotegipe";"1618";3
"Natália Viveros";"1619";3
"Nelson Martínez";"1620";3
"Nilza Freiria";"1621";3
"Nivaldo Gomes";"1622";3
"Otília Trindade";"1623";3
"Paulo Loio";"1624";3
"Peri Coito";"1600";4
"Quintiliana Vieira";"1601";4
"Quintiliano Malheiro";"1602";4
"Quintilien Chávez";"1603";4
"Raquel Madureira";"1604";4
"Raul Varejão";"1605";4
"Renato Balladares";"1606";4
"Rodrigo Sabrosa";"1607";4
"Roquita Ramírez";"1608";4
"Rui Varanda";"1609";4
"Sabrina Machado";"1610";4
"Sidônio Mascarenhas";"1611";4
"Simone Gameiro";"1612";4
"Solange Saldanha";"1613";4
"Solange Sales";"1614";4
"Teresina Oliveira";"1615";4
"Tibúrcio Cirne";"1616";4
"Tobias Belo";"1617";4
"Tânia Ignacio";"1618";4
"Valentina Correia";"1619";4
"Sebastien Lefebvre";"1620";4
"David Desrosiers";"1621";4
"Charles Andrea Comeau";"1622";4
"Jean Francois Stinco";"1623";4
"Pierre Bouvier";"1624";4
*/
-- (c) Listar o nome do funcionário juntamente com o *nome* de seu supervisor. 
-- Renomei o nome dos atributos da relação resultante para nome_funcionario e nome_supervisor, respectivamente.
-- Se um funcionário não possuir supervisor, ele deve aparecer na resposta também
SELECT f.nome AS nome_funcionario, s.nome AS nome_supervisor FROM funcionario f LEFT JOIN funcionario s ON f.supervisor = s.num_funcional;
/*
"Thiago Moreira Borges";"Johnata Ferreira"
"Fabricio Ismael";"Daniel Dias Alves"
"Daniel Dias Alves";"Fabricio Ismael"
"Johnata Ferreira";"Thiago Moreira Borges"
"Jose Roberto";"Jose Roberto"
"﻿Brenda Melo";""
"Leonor Goncalves";"﻿Brenda Melo"
"Luiz Cunha";"﻿Brenda Melo"
"Carlos Sousa";"﻿Brenda Melo"
"Paulo Barbosa";"﻿Brenda Melo"
"Joao da Silva";"Joao da Silva"
"Jose da Costa";"Jose da Costa"
"Joaquim Nascimento";"Joaquim Nascimento"
"Francisco da Silva";"Francisco da Silva"
"Jair das Couves";"Francisco da Silva"
"Antonio Oliveira";""
"Cesar Naves";""
"Maria Aparecida";""
"Evandro Santos";""
"Flavia de Almeida";""
"Gustavo Dias";"Antonio Oliveira"
"Sebastião José";"Cesar Naves"
"Ana Maria Matias";"Maria Aparecida"
"Bruna Castro";"Evandro Santos"
"Hiago Cintra";"Flavia de Almeida"
"Thiago Nunes";"Antonio Oliveira"
"Alisson dos Reis";"Cesar Naves"
"Eduardo Oliveira";"Maria Aparecida"
"Josiane Silva";"Evandro Santos"
"Natalia Araujo";"Flavia de Almeida"
"Lorenzo Breno Cauê Almeida";""
"Cauê Davi Enrico da Silva";"Lorenzo Breno Cauê Almeida"
"Julio Igor Cauã Campos";"Lorenzo Breno Cauê Almeida"
"Nicolas Breno Luan Moura";"Lorenzo Breno Cauê Almeida"
"Miguel Ricardo Costa";"Lorenzo Breno Cauê Almeida"
"Caio";""
"Luiz";""
"Carlos";""
"Jose Roberto";""
"Lionel Messi";"Caio"
"Rafael";"Luiz"
"Arthur";"Augusto"
"Rhaniel";"Augusto"
"Jean";"Augusto"
"Sandro";"Augusto"
"Augusto";""
"Lucas Rezende";"Lucas Rezende"
"Cristiane Dias";"Cristiane Dias"
"Paulo Roberto";"Paulo Roberto"
"Ricardo Filho";"Ricardo Filho"
"Maria da Silva";"Maria da Silva"
"Adão Casalinho";""
"Adélia Barroqueiro";""
"Alarico Alancastro";""
"Alcides Zagalo";""
"Aluísio Gentil";""
"Aluísio Herrera";""
"Alvito Cachão";""
"Amílcar Soeiro";""
"Anhangüera Silva";""
"Apoena Villar";""
"Arcidres Fonseca";""
"Arminda Carneiro";""
"Baltasar Otero";""
"Barnabé Cesário";""
"Belmira Rodrigues";""
"Bernardina Pereira";""
"Bernardo Vellozo";""
"Caetano Louzada";""
"Camila Almeida";""
"Caubi Villar";""
"Celso Vasconcellos";""
"Clarisse Espírito Santo";""
"Claudemira Villela";""
"Cosme Palha";""
"Célia Lobato";""
"Delfina Ornelas";"Adão Casalinho"
"Denise Taperebá";"Adélia Barroqueiro"
"Diamantino Pozas";"Alarico Alancastro"
"Dinarte Torrado";"Alcides Zagalo"
"Domingos Antas";"Aluísio Gentil"
"Dorindo Portela";"Aluísio Herrera"
"Délio Grangeia";"Alvito Cachão"
"Eduardo Palmeira";"Amílcar Soeiro"
"Eloi Amarante";"Anhangüera Silva"
"Emiliano Gracia";"Apoena Villar"
"Emílio García";"Arcidres Fonseca"
"Epaminondas Marcondes";"Arminda Carneiro"
"Eva Quinterno";"Baltasar Otero"
"Feliciana Ventura";"Barnabé Cesário"
"Felícia Quinzeiro";"Belmira Rodrigues"
"Fernão Ataí";"Bernardina Pereira"
"Filena Vilhena";"Bernardo Vellozo"
"Flamínia Vega";"Caetano Louzada"
"Flávia Meirelles";"Camila Almeida"
"Fábio Pamplona";"Caubi Villar"
"Gaspar Tavera";"Celso Vasconcellos"
"Gonçalo Carvalhaes";"Clarisse Espírito Santo"
"Guido Morais";"Claudemira Villela"
"Hipólito Quadros";"Cosme Palha"
"Ildefonso Castello Branco";"Célia Lobato"
"Jacinto Garcez";"Adão Casalinho"
"Janaína Paranaguá";"Adélia Barroqueiro"
"Jorgina Anlicoara";"Alarico Alancastro"
"Julieta Villas Boas";"Alcides Zagalo"
"Laurinda Dutra";"Aluísio Gentil"
"Laurinda Lima";"Aluísio Herrera"
"Liedson Domingos";"Alvito Cachão"
"Liliana Brites";"Amílcar Soeiro"
"Marco Mortágua";"Anhangüera Silva"
"Marilda Toledo";"Apoena Villar"
"Melissa Chousa";"Arcidres Fonseca"
"Mem Mangueira";"Arminda Carneiro"
"Natália Reyes";"Baltasar Otero"
"Nazaré Arantes";"Barnabé Cesário"
"Nicolau Travassos";"Belmira Rodrigues"
"Noémia Cavadas";"Bernardina Pereira"
"Nádia Monforte";"Bernardo Vellozo"
"Olavo Negromonte";"Caetano Louzada"
"Olga Jucá";"Camila Almeida"
"Ordonho Lira";"Caubi Villar"
"Palmira Garcés";"Celso Vasconcellos"
"Paulino Brião";"Clarisse Espírito Santo"
"Pedro Valido";"Claudemira Villela"
"Plínio Moita";"Cosme Palha"
"Potira Caminha";"Célia Lobato"
"Quitério Tabajara";"Adão Casalinho"
"Ricardina Soares";"Adélia Barroqueiro"
"Roque Alancastre";"Alarico Alancastro"
"Rui Lucas";"Alcides Zagalo"
"Rúben Figueroa";"Aluísio Gentil"
"Salomé Valentín";"Aluísio Herrera"
"Santiago Caballero";"Alvito Cachão"
"Sarita Taborda";"Amílcar Soeiro"
"Silvana Magallanes";"Anhangüera Silva"
"Socorro Quadros";"Apoena Villar"
"Sonás Teles";"Arcidres Fonseca"
"Sílvio Hierro";"Arminda Carneiro"
"Tadeu Monforte";"Baltasar Otero"
"Teresina Varella";"Barnabé Cesário"
"Ubaldo Thamily";"Belmira Rodrigues"
"Ubiratã Lucas";"Bernardina Pereira"
"Ulisses Canejo";"Bernardo Vellozo"
"Valentim Themes";"Caetano Louzada"
"Vanda Tabajara";"Camila Almeida"
"Verónica Eiró";"Caubi Villar"
"Xavier Balladares";"Celso Vasconcellos"
"Xavier Vázquez";"Clarisse Espírito Santo"
"Zacarias Tupinambá";"Claudemira Villela"
"Zoraide Patrício";"Cosme Palha"
"Énia Leiria ";"Célia Lobato"
*/
-- (d) Para todos os gerentes, mostrar o nome do funcionário, a cidade de sua agência e seus dependentes (quando houver).
SELECT g.nome,a.municipio,d.nome_dependente FROM (SELECT * FROM funcionario WHERE num_funcional IN (SELECT DISTINCT gerente FROM cliente)) as g INNER JOIN agencia a ON g.agencia = a.codigo LEFT JOIN dependentes d ON g.num_funcional = d.funcionario;
/*
"Daniel Dias Alves";"Angelica";"Rodney Alves"
"Fabricio Ismael";"Aparecida do Taboado";"Mateus Felipe"
"Jose Roberto";"Amamba";"Carlos Eduardo"
"Thiago Moreira Borges";"Aquidauana";"Jonas Augusto"
"Johnata Ferreira";"Anaurilandia";"Danilo Borges"
"Leonor Goncalves";"RIO DE JANEIRO";"Laura Martins"
"Paulo Barbosa";"RIO DE JANEIRO";"Amanda Fernandes"
"Joao da Silva";"Uberlândia";"Camila Almeida"
"Jose da Costa";"Uberlândia";"Vanessa Tavares"
"Joaquim Nascimento";"Belo Horizonte";"Felipe Amaral"
"Francisco da Silva";"Uberlândia";"Joao do Pulo"
"Antonio Oliveira";"Porto Alegre";"Mariana Oliveira"
"Cesar Naves";"Porto Alegre";"Kauã Naves"
"Maria Aparecida";"Passo Fundo";"Eliane Aparecida"
"Maria Aparecida";"Passo Fundo";"Pedro Dias"
"Flavia de Almeida";"Santa Maria";"Ana Laura de Almeida"
"Lorenzo Breno Cauê Almeida";"blumenau";"Elisa Caroline Araújo"
"Cauê Davi Enrico da Silva";"blumenau";"Lara Juliana Lorena de Paula"
"Julio Igor Cauã Campos";"blumenau";"Nicole Brenda Barros"
"Nicolas Breno Luan Moura";"blumenau";"Heloisa Juliana da Silva"
"Miguel Ricardo Costa";"blumenau";"Julia Mirella Souza"
"Caio";"Gurupi";"Kevin De Bruyne"
"Caio";"Gurupi";"David Silva"
"Luiz";"Bernardo Sayao";"Joe Hart"
"Luiz";"Bernardo Sayao";"Vincent Kompany"
"Rafael";"Bernardo Sayao";"Nicolas Otamendi"
"Rafael";"Bernardo Sayao";"Bacary Sagna"
"Carlos";"Araguaina";"Gael Clichy"
"Carlos";"Araguaina";"Fernandinho"
"Lionel Messi";"Palmas";"Yaya Toure"
"Lionel Messi";"Palmas";"Sergio Aguero"
"Jose Roberto";"Gurupi";"Kelechi Iheanacho"
"Jose Roberto";"Gurupi";"Ikay Gundogan"
"Arthur";"Porto Velho";"Caio"
"Rhaniel";"Porto Velho";"Rafael"
"Jean";"Porto Velho";"Josino"
"Sandro";"Porto Velho";"Gabriel"
"Augusto";"Porto Velho";"Thiago"
"Lucas Rezende";"Itapira";"Roberto Alvarez"
"Cristiane Dias";"Bebedouro";"Paula Siqueira"
"Paulo Roberto";"Ribeirão Bonito";"Igor Motta"
"Ricardo Filho";"Sertãozinho";"Bruno Roberto"
"Maria da Silva";"Mirandopolis";"Matheus Dias"
"Adão Casalinho";"SAO PAULO";"Abigail Casalinho"
"Adélia Barroqueiro";"SAO PAULO";"Adelaide Barroqueiro"
"Alarico Alancastro";"SAO PAULO";"Adosindo Alancastro"
"Alcides Zagalo";"SAO PAULO";"Aida Zagalo"
"Aluísio Gentil";"SAO PAULO";"Alcides Gentil"
"Aluísio Herrera";"SAO PAULO";"Aleixo Herrera"
"Alvito Cachão";"SAO PAULO";"Aniana Cachão"
"Amílcar Soeiro";"SAO PAULO";"Antão Soeiro"
"Anhangüera Silva";"SAO PAULO";"Aníbal Silva"
"Apoena Villar";"SAO PAULO";"Apoena Villar"
"Arcidres Fonseca";"SAO PAULO";"Augusta Fonseca"
"Arminda Carneiro";"SAO PAULO";"Baltasar Carneiro"
"Baltasar Otero";"SAO PAULO";"Bernardino Otero"
"Barnabé Cesário";"SAO PAULO";"Blasco Cesário"
"Belmira Rodrigues";"SAO PAULO";"Boaventura Rodrigues"
"Bernardina Pereira";"SAO PAULO";"Burtira Pereira"
"Bernardo Vellozo";"SAO PAULO";"Bárbara Vellozo"
"Caetano Louzada";"SAO PAULO";"Capitolina Louzada"
"Camila Almeida";"SAO PAULO";"Catarino Almeida"
"Caubi Villar";"SAO PAULO";"Cecília Villar"
"Celso Vasconcellos";"SAO PAULO";"Comecus Vasconcellos"
"Clarisse Espírito Santo";"SAO PAULO";"Dinarte Espírito Santo"
"Claudemira Villela";"SAO PAULO";"Dorindo Villela"
"Cosme Palha";"SAO PAULO";"Dulce Palha"
"Célia Lobato";"SAO PAULO";"Elba Lobato"
"Delfina Ornelas";"SAO PAULO";"Eládio Ornelas"
"Denise Taperebá";"SAO PAULO";"Emílio Taperebá"
"Diamantino Pozas";"SAO PAULO";"Ernesto Pozas"
"Dinarte Torrado";"SAO PAULO";"Eunice Torrado"
"Domingos Antas";"SAO PAULO";"Evangelista Antas"
"Dorindo Portela";"SAO PAULO";"Ezequiel Portela"
"Délio Grangeia";"SAO PAULO";"Fabiano Grangeia"
"Eduardo Palmeira";"SAO PAULO";"Feliciano Palmeira"
"Eloi Amarante";"SAO PAULO";"Filipa Amarante"
"Emiliano Gracia";"SAO PAULO";"Florbela Gracia"
"Emílio García";"SAO PAULO";"Genoveva García"
"Epaminondas Marcondes";"SAO PAULO";"Gertrudes Marcondes"
"Eva Quinterno";"SAO PAULO";"Giovana Quinterno"
"Feliciana Ventura";"SAO PAULO";"Honorina Ventura"
"Felícia Quinzeiro";"SAO PAULO";"Horácio Quinzeiro"
"Fernão Ataí";"SAO PAULO";"Ilídio Ataí"
"Filena Vilhena";"SAO PAULO";"Iraci Vilhena"
"Flamínia Vega";"SAO PAULO";"Jadir Vega"
"Flávia Meirelles";"SAO PAULO";"Jamari Meirelles"
"Fábio Pamplona";"SAO PAULO";"Juliano Pamplona"
"Gaspar Tavera";"SAO PAULO";"Laura Tavera"
"Gonçalo Carvalhaes";"SAO PAULO";"Laurinda Carvalhaes"
"Guido Morais";"SAO PAULO";"Leopoldina Morais"
"Hipólito Quadros";"SAO PAULO";"Lina Quadros"
"Ildefonso Castello Branco";"SAO PAULO";"Lídia Castello Branco"
"Jacinto Garcez";"SAO PAULO";"Lígia Garcez"
"Delfina Ornelas";"SAO PAULO";"Efraim Ornelas"
"Denise Taperebá";"SAO PAULO";"Jakquelini Taperebá"
"Diamantino Pozas";"SAO PAULO";"Ricardo Pozas"
"Dinarte Torrado";"SAO PAULO";"Vanderlei Torrado"
"Domingos Antas";"SAO PAULO";"Ana Paula Antas"
"Dorindo Portela";"SAO PAULO";"Debora Portela"
"Délio Grangeia";"SAO PAULO";"Monalisa Grangeia"
"Eduardo Palmeira";"SAO PAULO";"Geraldo Palmeira"
"Eloi Amarante";"SAO PAULO";"Juliana Amarante"
"Emiliano Gracia";"SAO PAULO";"Nayani Gracia"
"Emílio García";"SAO PAULO";"Aniangeles García"
"Epaminondas Marcondes";"SAO PAULO";"Leila Marcondes"
"Eva Quinterno";"SAO PAULO";"José Quinterno"
"Feliciana Ventura";"SAO PAULO";"Paulo Ventura"
"Felícia Quinzeiro";"SAO PAULO";"Wander Quinzeiro"
"Fernão Ataí";"SAO PAULO";"Mariana Ataí"
"Filena Vilhena";"SAO PAULO";"Jule Vilhena"
"Flamínia Vega";"SAO PAULO";"Jéssica Vega"
"Flávia Meirelles";"SAO PAULO";"Jéssyca Meirelles"
"Fábio Pamplona";"SAO PAULO";"Lorena Pamplona"
"Gaspar Tavera";"SAO PAULO";"Fernanda Tavera"
"Gonçalo Carvalhaes";"SAO PAULO";"Horácio Carvalhaes"
"Guido Morais";"SAO PAULO";"Daniel Morais"
"Hipólito Quadros";"SAO PAULO";"Lino Quadros"
"Ildefonso Castello Branco";"SAO PAULO";"Matthew Castello Branco"
"Jacinto Garcez";"SAO PAULO";"Dominic Garcez"
"Janaína Paranaguá";"SAO PAULO";"Lília Paranaguá"
"Jorgina Anlicoara";"SAO PAULO";"Marlene Anlicoara"
"Julieta Villas Boas";"SAO PAULO";"Matias Villas Boas"
"Laurinda Dutra";"SAO PAULO";"Maíra Dutra"
"Laurinda Lima";"SAO PAULO";"Melissa Lima"
"Liedson Domingos";"SAO PAULO";"Mem Domingos"
"Liliana Brites";"SAO PAULO";"Miguelina Brites"
"Marco Mortágua";"SAO PAULO";"Mileide Mortágua"
"Marilda Toledo";"SAO PAULO";"Minervina Toledo"
"Melissa Chousa";"SAO PAULO";"Moaci Chousa"
"Mem Mangueira";"SAO PAULO";"Márcia Mangueira"
"Natália Reyes";"SAO PAULO";"Máxima Reyes"
"Nazaré Arantes";"SAO PAULO";"Máximo Arantes"
"Nicolau Travassos";"SAO PAULO";"Neuza Travassos"
"Noémia Cavadas";"SAO PAULO";"Nídia Cavadas"
"Nádia Monforte";"SAO PAULO";"Oriana Monforte"
"Olavo Negromonte";"SAO PAULO";"Palmira Negromonte"
"Olga Jucá";"SAO PAULO";"Piedade Jucá"
"Ordonho Lira";"SAO PAULO";"Piedade Lira"
"Palmira Garcés";"SAO PAULO";"Piedade Garcés"
"Paulino Brião";"SAO PAULO";"Plácido Brião"
"Pedro Valido";"SAO PAULO";"Potira Valido"
"Plínio Moita";"SAO PAULO";"Querubim Moita"
"Potira Caminha";"SAO PAULO";"Raimundo Caminha"
"Janaína Paranaguá";"SAO PAULO";"Anderson Paranaguá"
"Jorgina Anlicoara";"SAO PAULO";"Lélio Anlicoara"
"Julieta Villas Boas";"SAO PAULO";"Tainá Villas Boas"
"Laurinda Dutra";"SAO PAULO";"Analinda Dutra"
"Laurinda Lima";"SAO PAULO";"Cássia Lima"
"Liedson Domingos";"SAO PAULO";"Christopher Domingos"
"Liliana Brites";"SAO PAULO";"Dom Brites"
"Marco Mortágua";"SAO PAULO";"Chris Mortágua"
"Marilda Toledo";"SAO PAULO";"Matt Toledo"
"Melissa Chousa";"SAO PAULO";"Hector Chousa"
"Mem Mangueira";"SAO PAULO";"Fabrício Mangueira"
"Natália Reyes";"SAO PAULO";"Neuler Reyes"
"Nazaré Arantes";"SAO PAULO";"Neuber Arantes"
"Nicolau Travassos";"SAO PAULO";"Gislaine Travassos"
"Noémia Cavadas";"SAO PAULO";"Rodolfo Cavadas"
"Nádia Monforte";"SAO PAULO";"Kleverson Monforte"
"Olavo Negromonte";"SAO PAULO";"Paula Negromonte"
"Olga Jucá";"SAO PAULO";"Jussara Jucá"
"Ordonho Lira";"SAO PAULO";"Moisés Lira"
"Palmira Garcés";"SAO PAULO";"Renato Garcés"
"Paulino Brião";"SAO PAULO";"Fausto Brião"
"Pedro Valido";"SAO PAULO";"Nikolas Valido"
"Plínio Moita";"SAO PAULO";"Diogo Moita"
"Potira Caminha";"SAO PAULO";"Matheus Caminha"
"Janaína Paranaguá";"SAO PAULO";"Eli Paranaguá"
"Jorgina Anlicoara";"SAO PAULO";"Célia Anlicoara"
"Julieta Villas Boas";"SAO PAULO";"Marta Villas Boas"
"Laurinda Dutra";"SAO PAULO";"Carlos Dutra"
"Laurinda Lima";"SAO PAULO";"Joana Lima"
"Liedson Domingos";"SAO PAULO";"Ephram Domingos"
"Liliana Brites";"SAO PAULO";"Kal-El Brites"
"Marco Mortágua";"SAO PAULO";"Kárita Mortágua"
"Marilda Toledo";"SAO PAULO";"Harry Toledo"
"Melissa Chousa";"SAO PAULO";"Pedro Chousa"
"Mem Mangueira";"SAO PAULO";"Marcelo Mangueira"
"Natália Reyes";"SAO PAULO";"Arthur Reyes"
"Nazaré Arantes";"SAO PAULO";"Sheila Arantes"
"Nicolau Travassos";"SAO PAULO";"Patrícia Travassos"
"Noémia Cavadas";"SAO PAULO";"Neide Cavadas"
"Nádia Monforte";"SAO PAULO";"Cleber Monforte"
"Olavo Negromonte";"SAO PAULO";"Bruno Negromonte"
"Olga Jucá";"SAO PAULO";"Bruno Jucá"
"Ordonho Lira";"SAO PAULO";"Bruno Lira"
"Palmira Garcés";"SAO PAULO";"Bruna Garcés"
"Paulino Brião";"SAO PAULO";"Giselle Brião"
"Pedro Valido";"SAO PAULO";"Juliette Valido"
"Plínio Moita";"SAO PAULO";"Jefferson Moita"
"Potira Caminha";"SAO PAULO";"Jordan Caminha"
"Ricardina Soares";"SAO PAULO";""
"Ana Maria Matias";"Passo Fundo";""
"Valentim Themes";"SAO PAULO";""
"Salomé Valentín";"SAO PAULO";""
"Gustavo Dias";"Porto Alegre";""
"Eduardo Oliveira";"Passo Fundo";""
"Josiane Silva";"Passo Fundo";""
"Ubiratã Lucas";"SAO PAULO";""
"Santiago Caballero";"SAO PAULO";""
"Sebastião José";"Porto Alegre";""
"Énia Leiria ";"SAO PAULO";""
"Zoraide Patrício";"SAO PAULO";""
"Ulisses Canejo";"SAO PAULO";""
"Rui Lucas";"SAO PAULO";""
"Evandro Santos";"Passo Fundo";""
"Hiago Cintra";"Santa Maria";""
"Socorro Quadros";"SAO PAULO";""
"Xavier Vázquez";"SAO PAULO";""
"Alisson dos Reis";"Porto Alegre";""
"Zacarias Tupinambá";"SAO PAULO";""
"Sílvio Hierro";"SAO PAULO";""
"Roque Alancastre";"SAO PAULO";""
"Teresina Varella";"SAO PAULO";""
"Silvana Magallanes";"SAO PAULO";""
"Thiago Nunes";"Porto Alegre";""
"Quitério Tabajara";"SAO PAULO";""
"Rúben Figueroa";"SAO PAULO";""
"Natalia Araujo";"Santa Maria";""
"Sonás Teles";"SAO PAULO";""
"Vanda Tabajara";"SAO PAULO";""
"Verónica Eiró";"SAO PAULO";""
"Ubaldo Thamily";"SAO PAULO";""
"Tadeu Monforte";"SAO PAULO";""
"Sarita Taborda";"SAO PAULO";""
"Bruna Castro";"Passo Fundo";""
"Xavier Balladares";"SAO PAULO";""
*/
-- (e) Utilizando OUTER JOIN, listar as contas bancárias sem operações bancárias. 
SELECT c.* FROM conta c LEFT JOIN operacao o ON c.cod_agencia = o.cod_agencia AND c.numero = o.numero_conta WHERE o.* IS NULL;
/*
"2794";27101;154574.12;"2016-09-27"
"2794";27102;15479.21;"2016-09-26"
"2794";27103;154547.66;"2016-09-24"
"2794";27104;1212121.45;"2016-08-10"
"2794";27105;152457.32;"2015-01-11"
"2794";27106;11546.15;"2014-07-22"
"2794";27107;321584.00;"2014-11-23"
"2794";27108;154684.32;"2014-07-22"
"2794";27109;78263.32;"2014-11-23"
"2794";27110;21256464.14;"2016-02-12"
"3536";35601;14565.32;"2016-09-24"
"3536";35602;112.23;"2016-08-10"
"3536";35603;14563.34;"2015-01-11"
"3536";35604;454.52;"2014-07-22"
"3536";35605;18466.58;"2014-11-23"
"3536";35606;2316.26;"2016-09-27"
"3536";35607;2215.52;"2016-09-27"
"3536";35608;23215936.36;"2016-02-12"
"3536";35609;123.45;"2014-07-22"
"3536";35610;154574.12;"2014-11-23"
"3536";35611;15479.20;"2016-09-27"
"3534";35401;1212121.45;"2016-08-10"
"3534";35402;152457.32;"2015-01-11"
"3534";35403;11546.15;"2014-07-22"
"3534";35404;321584.10;"2014-11-23"
"3534";35405;154684.32;"2016-09-27"
"3534";35406;78263.32;"2016-09-24"
"3534";35407;21256464.14;"2016-08-10"
"3534";35408;16148.14;"2015-01-11"
"3534";35409;14565.32;"2016-09-27"
"3534";35410;112.23;"2016-09-27"
"3534";35411;14563.34;"2014-07-22"
"2692";26900;454.52;"2014-11-23"
"2692";26902;2316.26;"2016-09-27"
"2692";26903;2215.52;"2016-09-27"
"2692";26904;23215936.36;"2014-07-22"
"2692";26905;123.45;"2014-11-23"
"2692";26906;154574.12;"2016-09-27"
"2692";26907;15479.29;"2016-09-24"
"2692";26908;154547.66;"2016-08-10"
"2692";26909;1212121.45;"2015-01-11"
"2692";26910;152457.32;"2014-07-22"
"2692";26911;11546.15;"2014-11-23"
"1484";14801;154684.32;"2014-07-22"
"1484";14802;78263.32;"2014-11-23"
"1484";14803;21256464.14;"2016-09-27"
"1484";14804;16148.14;"2016-09-27"
"1484";14805;14565.32;"2016-09-24"
"1484";14806;112.23;"2016-08-10"
"1484";14807;14563.34;"2015-01-11"
"1484";14808;454.52;"2016-09-27"
"1484";14809;18466.58;"2016-09-24"
"1484";14810;2316.26;"2016-08-10"
"1484";14811;2215.52;"2015-01-11"
"1484";14812;23215936.36;"2016-09-27"
*/
-- (f) Utilizando OUTER JOIN, verificar se existem contas bancárias sem clientes. 
SELECT * FROM conta c LEFT JOIN clienteconta cc ON c.cod_agencia = cc.cod_agencia AND c.numero = cc.numero_conta WHERE cc.* IS NULL;
--Não há contas sem clientes
-- (g) Utilizando OUTER JOIN, listar o nome dos funcionários que trabalham em agências de 'SP' e 'MS' que não são gerentes.
SELECT f.nome FROM funcionario f INNER JOIN agencia a ON f.agencia = a.codigo LEFT JOIN (SELECT DISTINCT gerente FROM cliente) AS g ON f.num_funcional = g.gerente WHERE UPPER(a.estado) IN ('SP','MS') AND g.gerente IS NULL;
--Nenhum caso