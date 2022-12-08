-- Grupo PK
-- Prática 5, ex. do 1 ao 9
SET SEARCH_PATH TO banco;
--1) Consultas simples usando SELECT 
SELECT 2+2
--4
SELECT 'A'
--"A"
SELECT 50 > 3
--t
SELECT '11/10/2020'
--"11/10/2020"
SELECT '11/10/2020' - '11/10/2030' -- é possível esse comando?
--Este comando não é possível porque o operador não pode ser aplicado a strings, funcionaria se fosse SELECT date '11/10/2020' - date '11/10/2030', pois assim especificamos o tipo de dado que aceita este operador.
	
--2) Consultas simples usando SELECT e renomeando colunas
SELECT 2+2 AS soma
--4
SELECT 'A' as letra
--"A"
SELECT 50 > 3 as resultado
--t
SELECT '11/10/2020' as dia -- qual o tipo retornado?
--"11/10/2020"
--O tipo retornado é desconhecido (unknown)

--3) Consultas usando SELECT * FROM usando uma tabela do banco
-- (a) Listar todos os clientes do banco
SELECT * FROM cliente;
/*
1;"Arthur Cesar";"32112354397";"1995-02-20";"Rua Beija Flor N 341";"Uberlandia";"MG";5
2;"José Marques";"10399599157";"1990-01-10";"Rua Dolores Duran N 275";"São Paulo";"SP";4
3;"Maria Joaquina";"44599512397";"2002-02-03";"Avenida Marcos de Freitas N 112";"Araguari";"MG";3
4;"Vitor Borges";"23939997833";"2000-01-01";"Alameda Mario Cardoso N 174";"Rio de Janeiro";"RG";2
5;"Thais Felipe";"99897738735";"1991-02-07";"Rua da Maçã N 185";"Uberlandia";"MG";1
100;"﻿Matilde Souza";"98151129450";"1930-11-21";"Rua Ferdinando Mollon 493";"Santa Bárbara D Oeste";"SP";104
101;"Nicolas Cavalcanti";"57069343710";"1983-09-18";"Rua Rosângela Cunha Redondo 1689";"Londrina";"PR";104
102;"Isabela Dias";"29087694920";"1974-05-08";"Rua Vereador Ozias Santana 961";"Guarapari";"ES";104
103;"Cauã Pinto";"87329143421";"1998-09-18";"Travessa Cerqueira Torres 353";"Salvador";"BA";104
104;"Daniel Almeida";"69387268683";"1982-11-12";"Avenida José Cutrale Junior 521";"Bebedouro";"SP";101
701;"Joao Santana";"86053589047";"1940-10-12";"Rua dos Bandidos, 89";"Uberlândia";"MG";703
702;"Dilma Lana";"80183783042";"1958-10-02";"Rua dos Presidiarios, 90";"Belo Horizonte";"MG";702
703;"Luis Inacio";"68055758000";"1956-03-18";"Rua dos Condenados, 91";"Uberlândia";"MG";700
704;"Aecio Neves";"41626708037";"1969-05-09";"Rua dos Presos, 92";"Belo Horizonte";"MG";702
705;"Renan Calheiros";"93090394006";"1948-08-02";"Rua dos Corruptos, 93";"Uberlandia";"MG";701
815;"César De Alencar Sartin";"12345678911";"1966-06-04";"Rua Castro Alves N 10";"Porto Alegre";"Rs";800
816;"Rodrigo Francisco De Oliveira";"12345678912";"1975-06-07";"Rua Castro Alves N 20";"Porto Alegre";"Rs";800
817;"Maria Fernanda Ferreira Da Silva";"12345678913";"1990-05-03";"Rua Castro Alves N 30";"Porto Alegre";"Rs";800
818;"Gabriel Silva De Barros Antunes";"12345678914";"1980-01-11";"Rua Castro Alves N 40";"Porto Alegre";"Rs";810
819;"Lorena Alves Silva Ottoni";"12345678915";"1987-07-17";"Rua Castro Alves N 50";"Porto Alegre";"Rs";810
820;"Etiene Borges Silva";"12345678916";"1983-12-30";"Rua Castro Alves N 60";"Porto Alegre";"Rs";810
821;"Sávio Antunes Maciel Ribeiro";"12345678917";"1984-10-31";"Rua Castro Alves N 70";"Porto Alegre";"Rs";805
822;"Emiliano Teixeira Martins";"12345678918";"1981-08-01";"Rua Castro Alves N 80";"Porto Alegre";"Rs";805
823;"Daniela De Oliveira Marques";"12345678919";"1983-03-06";"Rua Castro Alves N 90";"Porto Alegre";"Rs";805
824;"Rodrigo Soares Siqueira";"12345678920";"1990-03-03";"Rua Castro Alves N 100";"Porto Alegre";"Rs";805
825;"Isis Cristiane De Camargos Mendes";"12345678921";"1990-04-27";"Rua Castro Alves N 110";"Porto Alegre";"Rs";801
826;"Diego Gouvêa Couto";"12345678922";"1983-02-13";"Rua Castro Alves N 120";"Porto Alegre";"Rs";801
827;"Ruan Moraes Cardoso";"12345678923";"1993-09-10";"Rua Castro Alves N 130";"Porto Alegre";"Rs";801
828;"Litória Maria Alves De Souza Filha";"12345678924";"1997-12-16";"Rua Castro Alves N 140";"Porto Alegre";"Rs";801
829;"Rayane Ferreira Da Silva";"12345678925";"1991-07-07";"Rua Castro Alves N 150";"Porto Alegre";"Rs";806
830;"Desirre Tomaz Martins Pereira";"12345678926";"1993-08-27";"Rua Castro Alves N 160";"Porto Alegre";"Rs";806
831;"Rafael Paulino Silva Sobrinho";"12345678927";"1987-08-19";"Rua Castro Alves N 170";"Porto Alegre";"Rs";806
832;"Cristiano Almeida Silveira";"12345678928";"1993-01-04";"Rua Castro Alves N 180";"Porto Alegre";"Rs";806
833;"Lauriane Soares Costa";"12345678929";"1986-06-23";"Rua Castro Alves N 190";"Porto Alegre";"Rs";811
834;"Carlos De Souza Novais";"12345678930";"1988-11-04";"Rua Castro Alves N 200";"Porto Alegre";"Rs";811
835;"Diego Rabelo Damasceno";"12345678931";"1988-10-07";"Avenida Brasil Leste N 1210 ";"Passo Fundo";"Rs";802
836;"Victor Vinicius De Rezende";"12345678932";"1989-07-18";"Avenida Brasil Leste N 1220 ";"Passo Fundo";"Rs";802
837;"Liana Travaglia De Sousa";"12345678933";"1981-05-04";"Avenida Brasil Leste N 1230 ";"Passo Fundo";"Rs";802
838;"Tatiana Cristina Silva";"12345678934";"1978-09-29";"Avenida Brasil Leste N 1240 ";"Passo Fundo";"Rs";802
839;"Marina Barbosa De Freitas Vieira";"12345678935";"1988-03-18";"Avenida Brasil Leste N 1250 ";"Passo Fundo";"Rs";807
840;"Adriana Santos Farias";"12345678936";"1980-09-18";"Avenida Brasil Leste N 1260 ";"Passo Fundo";"Rs";807
841;"Fabricio Soares Borges";"12345678937";"1982-06-18";"Avenida Brasil Leste N 1270 ";"Passo Fundo";"Rs";807
842;"Talita Vieira Barbosa Martins";"12345678938";"1992-08-01";"Avenida Brasil Leste N 1280 ";"Passo Fundo";"Rs";812
843;"Carlos Henrique De Araujo";"12345678939";"1965-09-25";"Avenida Brasil Leste N 1290 ";"Passo Fundo";"Rs";812
844;"Angela Aparecida Silva Siqueira";"12345678940";"1980-04-27";"Avenida Brasil Leste N 1300 ";"Passo Fundo";"Rs";812
845;"Débora Cristina Alves Rita";"12345678941";"1983-11-09";"Avenida Brasil Leste N 1310 ";"Passo Fundo";"Rs";803
846;"Lorena Fonseca Martins";"12345678942";"1986-04-16";"Avenida Brasil Leste N 1320 ";"Passo Fundo";"Rs";803
847;"Letícia Maria Rosa Lima";"12345678943";"1989-12-06";"Avenida Brasil Leste N 1330 ";"Passo Fundo";"Rs";803
848;"Lais Sousa Costa";"12345678944";"1991-03-27";"Avenida Brasil Leste N 1340 ";"Passo Fundo";"Rs";808
849;"Ludmilla Vilas Boas Simoneti";"12345678945";"1981-05-23";"Avenida Brasil Leste N 1350 ";"Passo Fundo";"Rs";808
850;"Laiza Marie Roldao";"12345678946";"1983-05-11";"Avenida Borges de Medeiros N 115";"Santa Maria";"Rs";808
851;"Wanessa Danielly Fernandes";"12345678947";"1983-12-11";"Avenida Borges de Medeiros N 125";"Santa Maria";"Rs";808
852;"Sandro Mayrink Paula";"12345678948";"1987-05-14";"Avenida Borges de Medeiros N 135";"Santa Maria";"Rs";813
853;"Duíllio Tomaz Silva";"12345678949";"1987-07-28";"Avenida Borges de Medeiros N 145";"Santa Maria";"Rs";813
854;"Paulo Victor Machado Prado";"12345678950";"1989-12-16";"Avenida Borges de Medeiros N 155";"Santa Maria";"Rs";813
855;"Eden Vilarinho Costa Junior";"12345678951";"1993-10-08";"Avenida Borges de Medeiros N 165";"Santa Maria";"Rs";804
856;"Lidiane Margarida Do Carmo";"12345678952";"1982-05-16";"Avenida Borges de Medeiros N 175";"Santa Maria";"Rs";804
857;"Ricardo Marcelo Mota Filho";"12345678953";"1990-03-18";"Avenida Borges de Medeiros N 185";"Santa Maria";"Rs";804
858;"Rafael Henrique Araujo Dos Reis";"12345678954";"1985-02-07";"Avenida Borges de Medeiros N 195";"Santa Maria";"Rs";809
859;"Amon Ribeiro Lopes";"12345678955";"1990-04-25";"Avenida Borges de Medeiros N 205";"Santa Maria";"Rs";809
860;"Angelo Alves Ferreira Júnior";"12345678956";"1991-09-04";"Avenida Borges de Medeiros N 215";"Santa Maria";"Rs";809
861;"Francisco Assis Miguel Jardine";"12345678957";"1994-01-10";"Avenida Borges de Medeiros N 225";"Santa Maria";"Rs";814
862;"Gledmar Pires De Moura";"12345678958";"1994-05-14";"Avenida Borges de Medeiros N 235";"Santa Maria";"Rs";814
863;"Wilza Assuncao Braz";"12345678959";"1971-11-15";"Avenida Borges de Medeiros N 245";"Santa Maria";"Rs";814
864;"Cleo Custodio Ferreira";"12345678960";"1982-08-16";"Avenida Borges de Medeiros N 255";"Santa Maria";"Rs";814
905;"Laura Luna Oliveira";"22386426920";"1994-07-23";"Rua Izidoro Cunha";"Blumenau";"SC";900
906;"Isabelle Pietra Pinto";"70573760900";"1989-03-23";"Rua José Deeke";"Blumenau";"SC";901
907;"Tomás Miguel Rocha";"80078358906";"1964-01-12";"Rua Benigno Joaquim dos Santos";"Blumenau";"SC";902
908;"Heitor Cauã de Paula";"33739746904";"1991-03-03";"Rua Nordeste";"Blumenau";"SC";903
909;"Luiza Flávia Rodrigues";"68898220995";"1978-08-16";"Rua Antônio Pedro Alves";"Blumenau";"SC";904
1100;"Neymar Jr";"73405243041";"1986-12-17";"Rua Santa Catarina";"Porto Nacional";"TO";1100
1101;"Luis Suarez";"53467736068";"1988-05-25";"Rua do Carteiro";"Palmas";"TO";1100
1102;"Andres Iniesta";"29984302016";"1987-04-12";"Rua da Cozinheira";"Araguaina";"TO";1101
1103;"Ivan Rakitic";"28839881964";"1990-06-29";"Rua do Mecanico";"Gurupi";"TO";1101
1104;"Jordi Alba";"22267918412";"1980-10-29";"Rua do Funcionario";"Colinas do Tocantins";"TO";1102
1105;"Marc Andre Ter Stegen";"43390845810";"1990-12-01";"Rua do Cobrador";"Augustinopolis";"TO";1102
1106;"Daniel Alves";"38104193970";"1979-01-31";"Rua do Motorista";"Axixa do Tocantins";"TO";1103
1107;"Rafinha";"89917571035";"1989-02-28";"Rua da Manicure";"Mateiros";"TO";1103
1108;"Arda Turan";"01541771990";"1991-03-09";"Rua do Psicologo";"Abreulandia";"TO";1104
1109;"Douglas";"89180090460";"1992-06-26";"Rua do Psiquiatra";"Campos Lindos";"TO";1104
1110;"Marco Reus";"02725651999";"1990-09-26";"Rua da Faxineira";"Conceicao do Tocantins";"TO";1105
1111;"Pierre-Emerick Aubameyang";"08991927777";"1990-06-03";"Rua do Garcom";"Cristalandia";"TO";1105
1112;"Shinji Kagawa";"69780496114";"1987-12-28";"Rua do Cliente";"Cariri do Tocantins";"TO";1100
1300;"Luiz";"07069859406";"1991-01-01";"Rua";"Porto Velho";"RO";1300
1301;"Marcelo";"85117398408";"1992-02-02";"Rua Dom";"Porto Velho";"RO";1301
1302;"Pedro";"52516341610";"1993-03-03";"Rua Dom Pedro";"Porto Velho";"RO";1302
1303;"Steffan";"56641324427";"1994-04-04";"Rua Dom Pedro I";"Porto Velho";"RO";1303
1304;"Heitor";"16581815730";"1995-05-05";"Rua Dom Pedro II";"Porto Velho";"RO";1304
1750;"Carlos Eduardo";"25612054235";"1990-06-21";"Rua Rezende";"Sao Paulo";"SP";1720
1751;"Claudio Nascimento";"20358425120";"1988-04-15";"Rua do Barreiro";"Sertaozinho";"SP";1721
1752;"Alexandre Pereira";"20579635842";"1991-02-03";"Rua Martinesia";"Sao Paulo";"SP";1722
1758;"Isabella Gontijo";"03585695235";"1989-08-06";"Rua das Palmas";"Belo Horizonte";"MG";1728
1759;"Sandra Cristina";"21896358420";"1992-11-25";"Avenida Joao Naves de Avila";"Uberlandia";"MG";1729
1600;"Abílio Guedes";"06041324922";"1981-06-03";"Rua 1";"SAO PAULO";"SP";1600
1601;"Acacio Estrella";"05951323916";"1981-06-27";"Rua 2";"SAO PAULO";"SP";1601
1602;"Acacio Vianna";"00667008098";"1981-07-21";"Rua 3";"SAO PAULO";"SP";1602
1603;"Adelino Benevides";"03846532940";"1982-04-27";"Rua 4";"SAO PAULO";"SP";1603
1604;"Ajuricaba Braga";"05584583944";"1982-10-31";"Rua 5";"SAO PAULO";"SP";1604
1605;"Alarico Vieira";"02256619931";"1982-12-28";"Rua 6";"SAO PAULO";"SP";1605
1606;"Aleixo Moura";"14176777915";"1983-02-07";"Rua 7";"SAO PAULO";"SP";1606
1607;"Almerinda Villar";"39311481068";"1983-05-03";"Rua 8";"SAO PAULO";"SP";1607
1608;"Aluísio Pessanha";"01953352952";"1983-07-09";"Rua 9";"SAO PAULO";"SP";1608
1609;"André Pais";"04788758946";"1983-07-17";"Rua 10";"SAO PAULO";"SP";1609
1610;"Aniano Garrau";"00755634950";"1983-07-29";"Rua 11";"SAO PAULO";"SP";1610
1611;"Augusta Camacho";"00935847928";"1983-09-24";"Rua 12";"SAO PAULO";"SP";1611
1612;"Baltasar Marino";"06126726979";"1983-11-11";"Rua 13";"SAO PAULO";"SP";1612
1613;"Belmiro Prado";"05227932905";"1984-01-13";"Rua 14";"SAO PAULO";"SP";1613
1614;"Bernardete Mourão";"81309368520";"1984-04-18";"Rua 15";"SAO PAULO";"SP";1614
1615;"Bernardina Duarte";"03503396942";"1985-02-25";"Rua 16";"SAO PAULO";"SP";1615
1616;"Blasco Antúnez";"04706362970";"1985-04-22";"Rua 17";"SAO PAULO";"SP";1616
1617;"Branca Diniz";"04821578956";"1985-06-03";"Rua 18";"SAO PAULO";"SP";1617
1618;"Bukake Jesus";"00782528066";"1985-12-04";"Rua 19";"SAO PAULO";"SP";1618
1619;"Carmem Campelo";"04811057945";"1986-01-08";"Rua 20";"SAO PAULO";"SP";1619
1620;"Casimiro Mattos";"05879924920";"1986-01-11";"Rua 21";"SAO PAULO";"SP";1620
1621;"Cauê Cintra";"00483754978";"1986-03-15";"Rua 22";"SAO PAULO";"SP";1621
1622;"Celso Alves";"05469950980";"1986-05-24";"Rua 23";"SAO PAULO";"SP";1622
1623;"Celso Sousa";"48752703053";"1986-07-21";"Rua 24";"SAO PAULO";"SP";1623
1624;"Clotilde Ríos";"06068223990";"1986-08-05";"Rua 25";"SAO PAULO";"SP";1624
1625;"Célia Álvarez";"35305410959";"1981-06-03";"Rua 26";"SAO PAULO";"SP";1625
1626;"Deise Trindade";"00045847916";"1981-06-27";"Rua 27";"SAO PAULO";"SP";1626
1627;"Derli Guerra";"83885099004";"1981-07-21";"Rua 28";"SAO PAULO";"SP";1627
1628;"Diodete Figueiredo";"04910596984";"1982-04-27";"Rua 29";"SAO PAULO";"SP";1628
1629;"Diodete Leça";"06635721932";"1982-10-31";"Rua 30";"SAO PAULO";"SP";1629
1630;"Dulce Chousa";"07084631933";"1982-12-28";"Rua 31";"SAO PAULO";"SP";1630
1631;"Dulce Ferreira";"04669206958";"1983-02-07";"Rua 32";"SAO PAULO";"SP";1631
1632;"Délio Candal";"00646419960";"1983-05-03";"Rua 33";"SAO PAULO";"SP";1632
1633;"Edgar Frois";"04061328956";"1983-07-09";"Rua 34";"SAO PAULO";"SP";1633
1634;"Emília Canejo";"03235925970";"1983-07-17";"Rua 35";"SAO PAULO";"SP";1634
1635;"Eva Bulhão";"04448066959";"1983-07-29";"Rua 36";"SAO PAULO";"SP";1635
1636;"Faustino Pedrozo";"04136509952";"1983-09-24";"Rua 37";"SAO PAULO";"SP";1636
1637;"Feliciano Moutinho";"04764612941";"1983-11-11";"Rua 38";"SAO PAULO";"SP";1637
1638;"Fernão Butantã";"94832480600";"1984-01-13";"Rua 39";"SAO PAULO";"SP";1638
1639;"Filena Guerra";"98109758053";"1984-04-18";"Rua 40";"SAO PAULO";"SP";1639
1640;"Floripes Suaçuna";"53042891968";"1985-02-25";"Rua 41";"SAO PAULO";"SP";1640
1641;"Flávia Pavía";"06318824995";"1985-04-22";"Rua 42";"SAO PAULO";"SP";1641
1642;"Frederica Cabreira";"82840059053";"1985-06-03";"Rua 43";"SAO PAULO";"SP";1642
1643;"Frutuoso Suaçuna";"06439009931";"1985-12-04";"Rua 44";"SAO PAULO";"SP";1643
1644;"Genoveva Uchoa";"04239344905";"1986-01-08";"Rua 45";"SAO PAULO";"SP";1644
1645;"Son Goku";"06616573966";"1986-01-11";"Rua 46";"SAO PAULO";"SP";1645
1646;"Graça Vale";"05850348930";"1986-03-15";"Rua 47";"SAO PAULO";"SP";1646
1647;"Guilherme Antunes";"05441620994";"1986-05-24";"Rua 48";"SAO PAULO";"SP";1647
1648;"Hugo Sosa";"05367539971";"1986-07-21";"Rua 49";"SAO PAULO";"SP";1648
1649;"Hélder Morais";"05099207995";"1986-08-05";"Rua 50";"SAO PAULO";"SP";1649
1650;"Ilídio Bernardes";"00792737938";"1981-06-03";"Rua 51";"SAO PAULO";"SP";1650
1651;"Irene Guerrero";"04791470940";"1981-06-27";"Rua 52";"SAO PAULO";"SP";1651
1652;"Isilda Prado";"92366236972";"1981-07-21";"Rua 53";"SAO PAULO";"SP";1652
1653;"Ivete Rosa";"05362772902";"1982-04-27";"Rua 54";"SAO PAULO";"SP";1653
1654;"Jordana Gaspar";"04325317937";"1982-10-31";"Rua 55";"SAO PAULO";"SP";1654
1655;"Jordana Oliveira";"04588506919";"1982-12-28";"Rua 56";"SAO PAULO";"SP";1655
1656;"Jordão Tabalipa";"04908484945";"1983-02-07";"Rua 57";"SAO PAULO";"SP";1656
1657;"Lineu Mansilla";"30860954072";"1983-05-03";"Rua 58";"SAO PAULO";"SP";1657
1658;"Lopo Vidigal";"05545845909";"1983-07-09";"Rua 59";"SAO PAULO";"SP";1658
1659;"Luzia Ferro";"05250008950";"1983-07-17";"Rua 60";"SAO PAULO";"SP";1659
1660;"Magda Fitas";"02684397961";"1983-07-29";"Rua 61";"SAO PAULO";"SP";1660
1661;"Mamede Saldaña";"04778738985";"1983-09-24";"Rua 62";"SAO PAULO";"SP";1661
1662;"Marli Tupinambá";"95026959920";"1983-11-11";"Rua 63";"SAO PAULO";"SP";1662
1663;"Matias Travassos";"00486693937";"1984-01-13";"Rua 64";"SAO PAULO";"SP";1663
1664;"Melissa Jiménez";"06335200988";"1984-04-18";"Rua 65";"SAO PAULO";"SP";1664
1665;"Micaela Bugallo";"04557798993";"1985-02-25";"Rua 66";"SAO PAULO";"SP";1665
1666;"Micaela Ferrera";"05159721932";"1985-04-22";"Rua 67";"SAO PAULO";"SP";1666
1667;"Milu Diegues";"03276618958";"1985-06-03";"Rua 68";"SAO PAULO";"SP";1667
1668;"Máxima Cotegipe";"05700395924";"1985-12-04";"Rua 69";"SAO PAULO";"SP";1668
1669;"Natália Viveros";"77768035968";"1986-01-08";"Rua 70";"SAO PAULO";"SP";1669
1670;"Nelson Martínez";"29577233953";"1986-01-11";"Rua 71";"SAO PAULO";"SP";1670
1671;"Nilza Freiria";"06462560924";"1986-03-15";"Rua 72";"SAO PAULO";"SP";1671
1672;"Nivaldo Gomes";"04832707922";"1986-05-24";"Rua 73";"SAO PAULO";"SP";1672
1673;"Otília Trindade";"05647675905";"1986-07-21";"Rua 74";"SAO PAULO";"SP";1673
1674;"Paulo Loio";"00991591984";"1986-08-05";"Rua 75";"SAO PAULO";"SP";1674
1675;"Peri Coito";"03132341916";"1981-06-03";"Rua 76";"SAO PAULO";"SP";1675
1676;"Quintiliana Vieira";"05572563994";"1981-06-27";"Rua 77";"SAO PAULO";"SP";1676
1677;"Quintiliano Malheiro";"03655964935";"1981-07-21";"Rua 78";"SAO PAULO";"SP";1677
1678;"Quintilien Chávez";"01226243002";"1982-04-27";"Rua 79";"SAO PAULO";"SP";1678
1679;"Raquel Madureira";"03978509997";"1982-10-31";"Rua 80";"SAO PAULO";"SP";1679
1680;"Raul Varejão";"07274654900";"1982-12-28";"Rua 81";"SAO PAULO";"SP";1680
1681;"Renato Balladares";"85396036915";"1983-02-07";"Rua 82";"SAO PAULO";"SP";1681
1682;"Rodrigo Sabrosa";"07303071903";"1983-05-03";"Rua 83";"SAO PAULO";"SP";1682
1683;"Roquita Ramírez";"67982921949";"1983-07-09";"Rua 84";"SAO PAULO";"SP";1683
1684;"Rui Varanda";"06954374962";"1983-07-17";"Rua 85";"SAO PAULO";"SP";1684
1685;"Sabrina Machado";"54816360930";"1983-07-29";"Rua 86";"SAO PAULO";"SP";1685
1686;"Sidônio Mascarenhas";"03424042960";"1983-09-24";"Rua 87";"SAO PAULO";"SP";1686
1687;"Simone Gameiro";"01854777980";"1983-11-11";"Rua 88";"SAO PAULO";"SP";1687
1688;"Solange Saldanha";"01983609919";"1984-01-13";"Rua 89";"SAO PAULO";"SP";1688
1689;"Solange Sales";"01985066947";"1984-04-18";"Rua 90";"SAO PAULO";"SP";1689
1690;"Teresina Oliveira";"09299878960";"1985-02-25";"Rua 91";"SAO PAULO";"SP";1690
1691;"Tibúrcio Cirne";"03199033970";"1985-04-22";"Rua 92";"SAO PAULO";"SP";1691
1692;"Tobias Belo";"07765605909";"1985-06-03";"Rua 93";"SAO PAULO";"SP";1692
1693;"Tânia Ignacio";"06650278939";"1985-12-04";"Rua 94";"SAO PAULO";"SP";1693
1694;"Valentina Correia";"03088055933";"1986-01-08";"Rua 95";"SAO PAULO";"SP";1694
1695;"Sebastien Lefebvre";"04369835917";"1986-01-11";"Rua 96";"SAO PAULO";"SP";1695
1696;"David Desrosiers";"46852670600";"1986-03-15";"Rua 97";"SAO PAULO";"SP";1696
1697;"Charles Andrea Comeau";"27800866610";"1986-05-24";"Rua 98";"SAO PAULO";"SP";1697
1698;"Jean Francois Stinco";"55734755842";"1986-07-21";"Rua 99";"SAO PAULO";"SP";1698
1699;"Pierre Bouvier";"23283531692";"1986-08-05";"Rua 100";"SAO PAULO";"SP";1699
*/
-- (b) Listar todos os funcionários
SELECT * FROM funcionario;
/*
1;"Thiago Moreira Borges";"3499696-5715";"1992-10-02";"1324";4
2;"Fabricio Ismael";"343213-3654";"2002-03-08";"0706";3
3;"Daniel Dias Alves";"3499191-5559";"2012-04-05";"1323";2
4;"Johnata Ferreira";"1699199-9965";"2016-03-12";"3928";1
5;"Jose Roberto";"1998884-1122";"2015-02-12";"0743";5
100;"﻿Brenda Melo";"(81)47106478";"2003-05-14";"1792";
101;"Leonor Goncalves";"(11)38462353";"2009-06-14";"3075";100
102;"Luiz Cunha";"(16)42467196";"1996-05-04";"1797";100
103;"Carlos Sousa";"(11)68784656";"2008-02-15";"0775";100
104;"Paulo Barbosa";"(61)36375500";"2009-11-11";"1808";100
700;"Joao da Silva";"3236-6666";"2008-04-05";"1001";700
701;"Jose da Costa";"3236-6661";"2008-04-06";"5874";701
702;"Joaquim Nascimento";"3236-6662";"2009-03-12";"1221";702
703;"Francisco da Silva";"3236-6663";"2011-09-01";"2918";703
704;"Jair das Couves";"3236-6664";"1998-10-01";"2918";703
800;"Antonio Oliveira";"5133731888";"2004-05-01";"2794";
801;"Cesar Naves";"5133733488";"2004-05-01";"3536";
802;"Maria Aparecida";"5133731824";"2004-05-01";"3534";
803;"Evandro Santos";"5136731964";"2004-05-01";"2692";
804;"Flavia de Almeida";"51337457269";"2004-05-01";"1484";
805;"Gustavo Dias";"5133331211";"2004-05-01";"2794";800
806;"Sebastião José";"5138731954";"2004-05-01";"3536";801
807;"Ana Maria Matias";"5133761788";"2004-05-01";"3534";802
808;"Bruna Castro";"5133741898";"2004-05-01";"2692";803
809;"Hiago Cintra";"5133731883";"2004-05-01";"1484";804
810;"Thiago Nunes";"5133771866";"2004-05-01";"2794";800
811;"Alisson dos Reis";"5133741928";"2004-05-01";"3536";801
812;"Eduardo Oliveira";"5131733808";"2004-05-01";"3534";802
813;"Josiane Silva";"5133761180";"2004-05-01";"2692";803
814;"Natalia Araujo";"5133734981";"2004-05-01";"1484";804
900;"Lorenzo Breno Cauê Almeida";"2879-4480";"2010-07-23";"0095";
901;"Cauê Davi Enrico da Silva";"2920-3197";"2008-09-12";"0128";900
902;"Julio Igor Cauã Campos";"2815-0172";"2007-04-12";"0411";900
903;"Nicolas Breno Luan Moura";"2677-9919";"2006-06-12";"7134";900
904;"Miguel Ricardo Costa";"2867-3831";"2005-02-12";"1232";900
1100;"Caio";"034984054487";"2016-10-06";"1100";
1101;"Luiz";"034998765432";"2016-10-06";"1104";
1103;"Carlos";"011965460653";"2016-10-06";"1103";
1105;"Jose Roberto";"034991345263";"2016-10-06";"1101";
1104;"Lionel Messi";"033984273847";"2016-10-06";"1102";1100
1102;"Rafael";"064996782648";"2016-10-06";"1104";1101
1300;"Arthur";"069911112222";"1991-01-01";"1300";1304
1301;"Rhaniel";"069922223333";"1992-02-02";"1301";1304
1302;"Jean";"069933334444";"1993-03-03";"1302";1304
1303;"Sandro";"069944445555";"1994-04-04";"1303";1304
1304;"Augusto";"069955556666";"1995-05-05";"1304";
1720;"Lucas Rezende";"(34)32173342";"2016-01-08";"1701";1720
1721;"Cristiane Dias";"(34)32509110";"2016-08-09";"1707";1721
1722;"Paulo Roberto";"(34)99918275";"2015-01-12";"1710";1722
1728;"Ricardo Filho";"(34)98562084";"2015-03-01";"1708";1728
1729;"Maria da Silva";"(34)88452620";"2014-02-02";"1709";1729
1600;"Adão Casalinho";"011999999900";"2011-06-03";"1600";
1601;"Adélia Barroqueiro";"011999999901";"2011-06-27";"1601";
1602;"Alarico Alancastro";"011999999902";"2011-07-21";"1602";
1603;"Alcides Zagalo";"011999999903";"2012-04-27";"1603";
1604;"Aluísio Gentil";"011999999904";"2012-10-31";"1604";
1605;"Aluísio Herrera";"011999999905";"2012-12-28";"1605";
1606;"Alvito Cachão";"011999999906";"2013-02-07";"1606";
1607;"Amílcar Soeiro";"011999999907";"2013-05-03";"1607";
1608;"Anhangüera Silva";"011999999908";"2013-07-09";"1608";
1609;"Apoena Villar";"011999999909";"2013-07-17";"1609";
1610;"Arcidres Fonseca";"011999999910";"2013-07-29";"1610";
1611;"Arminda Carneiro";"011999999911";"2013-09-24";"1611";
1612;"Baltasar Otero";"011999999912";"2013-11-11";"1612";
1613;"Barnabé Cesário";"011999999913";"2014-01-13";"1613";
1614;"Belmira Rodrigues";"011999999914";"2014-04-18";"1614";
1615;"Bernardina Pereira";"011999999915";"2015-02-25";"1615";
1616;"Bernardo Vellozo";"011999999916";"2015-04-22";"1616";
1617;"Caetano Louzada";"011999999917";"2015-06-03";"1617";
1618;"Camila Almeida";"011999999918";"2015-12-04";"1618";
1619;"Caubi Villar";"011999999919";"2016-01-08";"1619";
1620;"Celso Vasconcellos";"011999999920";"2016-01-11";"1620";
1621;"Clarisse Espírito Santo";"011999999921";"2016-03-15";"1621";
1622;"Claudemira Villela";"011999999922";"2016-05-24";"1622";
1623;"Cosme Palha";"011999999923";"2016-07-21";"1623";
1624;"Célia Lobato";"011999999924";"2016-08-05";"1624";
1625;"Delfina Ornelas";"011999999925";"2011-06-03";"1600";1600
1626;"Denise Taperebá";"011999999926";"2011-06-27";"1601";1601
1627;"Diamantino Pozas";"011999999927";"2011-07-21";"1602";1602
1628;"Dinarte Torrado";"011999999928";"2012-04-27";"1603";1603
1629;"Domingos Antas";"011999999929";"2012-10-31";"1604";1604
1630;"Dorindo Portela";"011999999930";"2012-12-28";"1605";1605
1631;"Délio Grangeia";"011999999931";"2013-02-07";"1606";1606
1632;"Eduardo Palmeira";"011999999932";"2013-05-03";"1607";1607
1633;"Eloi Amarante";"011999999933";"2013-07-09";"1608";1608
1634;"Emiliano Gracia";"011999999934";"2013-07-17";"1609";1609
1635;"Emílio García";"011999999935";"2013-07-29";"1610";1610
1636;"Epaminondas Marcondes";"011999999936";"2013-09-24";"1611";1611
1637;"Eva Quinterno";"011999999937";"2013-11-11";"1612";1612
1638;"Feliciana Ventura";"011999999938";"2014-01-13";"1613";1613
1639;"Felícia Quinzeiro";"011999999939";"2014-04-18";"1614";1614
1640;"Fernão Ataí";"011999999940";"2015-02-25";"1615";1615
1641;"Filena Vilhena";"011999999941";"2015-04-22";"1616";1616
1642;"Flamínia Vega";"011999999942";"2015-06-03";"1617";1617
1643;"Flávia Meirelles";"011999999943";"2015-12-04";"1618";1618
1644;"Fábio Pamplona";"011999999944";"2016-01-08";"1619";1619
1645;"Gaspar Tavera";"011999999945";"2016-01-11";"1620";1620
1646;"Gonçalo Carvalhaes";"011999999946";"2016-03-15";"1621";1621
1647;"Guido Morais";"011999999947";"2016-05-24";"1622";1622
1648;"Hipólito Quadros";"011999999948";"2016-07-21";"1623";1623
1649;"Ildefonso Castello Branco";"011999999949";"2016-08-05";"1624";1624
1650;"Jacinto Garcez";"011999999950";"2011-06-03";"1600";1600
1651;"Janaína Paranaguá";"011999999951";"2011-06-27";"1601";1601
1652;"Jorgina Anlicoara";"011999999952";"2011-07-21";"1602";1602
1653;"Julieta Villas Boas";"011999999953";"2012-04-27";"1603";1603
1654;"Laurinda Dutra";"011999999954";"2012-10-31";"1604";1604
1655;"Laurinda Lima";"011999999955";"2012-12-28";"1605";1605
1656;"Liedson Domingos";"011999999956";"2013-02-07";"1606";1606
1657;"Liliana Brites";"011999999957";"2013-05-03";"1607";1607
1658;"Marco Mortágua";"011999999958";"2013-07-09";"1608";1608
1659;"Marilda Toledo";"011999999959";"2013-07-17";"1609";1609
1660;"Melissa Chousa";"011999999960";"2013-07-29";"1610";1610
1661;"Mem Mangueira";"011999999961";"2013-09-24";"1611";1611
1662;"Natália Reyes";"011999999962";"2013-11-11";"1612";1612
1663;"Nazaré Arantes";"011999999963";"2014-01-13";"1613";1613
1664;"Nicolau Travassos";"011999999964";"2014-04-18";"1614";1614
1665;"Noémia Cavadas";"011999999965";"2015-02-25";"1615";1615
1666;"Nádia Monforte";"011999999966";"2015-04-22";"1616";1616
1667;"Olavo Negromonte";"011999999967";"2015-06-03";"1617";1617
1668;"Olga Jucá";"011999999968";"2015-12-04";"1618";1618
1669;"Ordonho Lira";"011999999969";"2016-01-08";"1619";1619
1670;"Palmira Garcés";"011999999970";"2016-01-11";"1620";1620
1671;"Paulino Brião";"011999999971";"2016-03-15";"1621";1621
1672;"Pedro Valido";"011999999972";"2016-05-24";"1622";1622
1673;"Plínio Moita";"011999999973";"2016-07-21";"1623";1623
1674;"Potira Caminha";"011999999974";"2016-08-05";"1624";1624
1675;"Quitério Tabajara";"011999999975";"2011-06-03";"1600";1600
1676;"Ricardina Soares";"011999999976";"2011-06-27";"1601";1601
1677;"Roque Alancastre";"011999999977";"2011-07-21";"1602";1602
1678;"Rui Lucas";"011999999978";"2012-04-27";"1603";1603
1679;"Rúben Figueroa";"011999999979";"2012-10-31";"1604";1604
1680;"Salomé Valentín";"011999999980";"2012-12-28";"1605";1605
1681;"Santiago Caballero";"011999999981";"2013-02-07";"1606";1606
1682;"Sarita Taborda";"011999999982";"2013-05-03";"1607";1607
1683;"Silvana Magallanes";"011999999983";"2013-07-09";"1608";1608
1684;"Socorro Quadros";"011999999984";"2013-07-17";"1609";1609
1685;"Sonás Teles";"011999999985";"2013-07-29";"1610";1610
1686;"Sílvio Hierro";"011999999986";"2013-09-24";"1611";1611
1687;"Tadeu Monforte";"011999999987";"2013-11-11";"1612";1612
1688;"Teresina Varella";"011999999988";"2014-01-13";"1613";1613
1689;"Ubaldo Thamily";"011999999989";"2014-04-18";"1614";1614
1690;"Ubiratã Lucas";"011999999990";"2015-02-25";"1615";1615
1691;"Ulisses Canejo";"011999999991";"2015-04-22";"1616";1616
1692;"Valentim Themes";"011999999992";"2015-06-03";"1617";1617
1693;"Vanda Tabajara";"011999999993";"2015-12-04";"1618";1618
1694;"Verónica Eiró";"011999999994";"2016-01-08";"1619";1619
1695;"Xavier Balladares";"011999999995";"2016-01-11";"1620";1620
1696;"Xavier Vázquez";"011999999996";"2016-03-15";"1621";1621
1697;"Zacarias Tupinambá";"011999999997";"2016-05-24";"1622";1622
1698;"Zoraide Patrício";"011999999998";"2016-07-21";"1623";1623
1699;"Énia Leiria ";"011999999999";"2016-08-05";"1624";1624
*/
-- (c) Listar todas as agências
SELECT * FROM agencia;
/*
"0743";"Agência Amambai";"Amamba";"MS"
"3928";"Agência Anaurilandia";"Anaurilandia";"MS"
"1323";"Agência Angelica";"Angelica";"MS"
"0706";"Agência Aparecida Do Taboado";"Aparecida do Taboado";"MS"
"1324";"Agência Aquidauana";"Aquidauana";"MS"
"1792";"001-1792 SHOP METROPOLITANO-RIO-RJ";"RIO DE JANEIRO";"RJ"
"3075";"001-3075 PLAT.CORPORATE M/N AV.RIO BRANCO";"RIO DE JANEIRO";"RJ"
"1797";"001-1797 SELECT BOTAFOGO-RJ";"RIO DE JANEIRO";"RJ"
"0775";"001-0775 R D.CAXIAS-TERESOPOLIS-RJ";"TERESOPOLIS";"RJ"
"1808";"001-1808 SELECT CONDE DE BONFIM-RJ";"RIO DE JANEIRO";"RJ"
"5874";"Avenida João Naves";"Uberlândia";"MG"
"1001";"Bairro Martins";"Uberlândia";"MG"
"1221";"Carijos";"Belo Horizonte";"MG"
"2918";"Avenida Floriano Peixoto";"Uberlândia";"MG"
"3139";"Halfeld";"Juiz de Fora";"MG"
"2794";"Bairro Anchieta";"Porto Alegre";"RS"
"3536";"Carlos Gomes";"Porto Alegre";"RS"
"3534";"Bairro Boqueirao";"Passo Fundo";"RS"
"2692";"Bento Brasil";"Passo Fundo";"RS"
"1484";"Dr.Mariano Da Rocha";"Santa Maria";"RS"
"0095";"banco do brasil";"blumenau";"SC"
"0128";"HSBC";"blumenau";"SC"
"0411";"Caixa Econômica";"blumenau";"SC"
"7134";"Itaú";"blumenau";"SC"
"1232";"Santader";"blumenau";"SC"
"1100";"Gurupi 1";"Gurupi";"TO"
"1101";"Gurupi 2";"Gurupi";"TO"
"1102";"Palmas 1";"Palmas";"TO"
"1103";"Araguaina 1";"Araguaina";"TO"
"1104";"Bernardo Sayao 1";"Bernardo Sayao";"TO"
"1300";"Banco do Brasil S.A. - Avenida Amazonas";"Porto Velho";"RO"
"1301";"Banco do Brasil S.A. - Porto Velho";"Porto Velho";"RO"
"1302";"Banco do Brasil S.A. - Jatuarana";"Porto Velho";"RO"
"1303";"Banco do Brasil S.A. - Nacoes Unidas";"Porto Velho";"RO"
"1304";"Banco do Brasil S.A. - Nova Porto Velho";"Porto Velho";"RO"
"1701";"Agência 0171";"Itapira";"SP"
"1707";"Agência 0054";"Bebedouro";"SP"
"1710";"Agência 0154";"Ribeirão Bonito";"SP"
"1708";"Agência 0987";"Sertãozinho";"SP"
"1709";"Agência 0300";"Mirandopolis";"SP"
"1600";"BANCO DO BRASIL S.A.-SAO PAULO";"SAO PAULO";"SP"
"1601";"BANCO DO BRASIL S.A.-BARAO DE DUPRAT";"SAO PAULO";"SP"
"1602";"BANCO DO BRASIL S.A.-SETE DE ABRIL";"SAO PAULO";"SP"
"1603";"BANCO DO BRASIL S.A.-GOVERNO SAO PAULO";"SAO PAULO";"SP"
"1604";"BANCO DO BRASIL S.A.-MINISTERIO FAZENDA";"SAO PAULO";"SP"
"1605";"BANCO DO BRASIL S.A.-PREVIDENCIA";"SAO PAULO";"SP"
"1606";"BANCO DO BRASIL S.A.-PCA.DOM JOSE GASPAR";"SAO PAULO";"SP"
"1607";"BANCO DO BRASIL S.A.-GECEX SAO PAULO II";"SAO PAULO";"SP"
"1608";"BANCO DO BRASIL S.A.-24 DE MAIO";"SAO PAULO";"SP"
"1609";"BANCO DO BRASIL S.A.-BOULEVARD SAO JOAO";"SAO PAULO";"SP"
"1610";"BANCO DO BRASIL S.A.-EMPR.CENTRO S.PAULO";"SAO PAULO";"SP"
"1611";"BANCO DO BRASIL S.A.-PODER JUDICIARIO";"SAO PAULO";"SP"
"1612";"BANCO DO BRASIL S.A.-XAVIER DE TOLEDO";"SAO PAULO";"SP"
"1613";"BANCO DO BRASIL S.A.-ESTILO SAO PAULO";"SAO PAULO";"SP"
"1614";"BANCO DO BRASIL S.A.-CATEDRAL DA SE";"SAO PAULO";"SP"
"1615";"BANCO DO BRASIL S.A.-GALERIA OLIDO";"SAO PAULO";"SP"
"1616";"BANCO DO BRASIL S.A.-EDIFICIO ITALIA";"SAO PAULO";"SP"
"1617";"BANCO DO BRASIL S.A.-PRACA DO PATRIARCA";"SAO PAULO";"SP"
"1618";"BANCO DO BRASIL S.A.-ESTILO SAO JOAO";"SAO PAULO";"SP"
"1619";"BANCO DO BRASIL S.A.-PALACIO DA JUSTICA";"SAO PAULO";"SP"
"1620";"BANCO DO BRASIL S.A.-PALACIO MAUA";"SAO PAULO";"SP"
"1621";"BANCO DO BRASIL S.A.-R.BOA VISTA-S.PAULO";"SAO PAULO";"SP"
"1622";"BANCO DO BRASIL S.A.-R.DA QUITANDA-S.PAULO";"SAO PAULO";"SP"
"1623";"BANCO DO BRASIL S.A.-ANHANGABAU-SAO PAULO";"SAO PAULO";"SP"
"1624";"BANCO DO BRASIL S.A.-ESTILO JOAO MENDES";"SAO PAULO";"SP"
*/
--4) Consultas usando SELECT <coluna> FROM
-- (a) Listar o código e o nome de todas as agências
SELECT codigo,nome FROM agencia;
/*
"0743";"Agência Amambai"
"3928";"Agência Anaurilandia"
"1323";"Agência Angelica"
"0706";"Agência Aparecida Do Taboado"
"1324";"Agência Aquidauana"
"1792";"001-1792 SHOP METROPOLITANO-RIO-RJ"
"3075";"001-3075 PLAT.CORPORATE M/N AV.RIO BRANCO"
"1797";"001-1797 SELECT BOTAFOGO-RJ"
"0775";"001-0775 R D.CAXIAS-TERESOPOLIS-RJ"
"1808";"001-1808 SELECT CONDE DE BONFIM-RJ"
"5874";"Avenida João Naves"
"1001";"Bairro Martins"
"1221";"Carijos"
"2918";"Avenida Floriano Peixoto"
"3139";"Halfeld"
"2794";"Bairro Anchieta"
"3536";"Carlos Gomes"
"3534";"Bairro Boqueirao"
"2692";"Bento Brasil"
"1484";"Dr.Mariano Da Rocha"
"0095";"banco do brasil"
"0128";"HSBC"
"0411";"Caixa Econômica"
"7134";"Itaú"
"1232";"Santader"
"1100";"Gurupi 1"
"1101";"Gurupi 2"
"1102";"Palmas 1"
"1103";"Araguaina 1"
"1104";"Bernardo Sayao 1"
"1300";"Banco do Brasil S.A. - Avenida Amazonas"
"1301";"Banco do Brasil S.A. - Porto Velho"
"1302";"Banco do Brasil S.A. - Jatuarana"
"1303";"Banco do Brasil S.A. - Nacoes Unidas"
"1304";"Banco do Brasil S.A. - Nova Porto Velho"
"1701";"Agência 0171"
"1707";"Agência 0054"
"1710";"Agência 0154"
"1708";"Agência 0987"
"1709";"Agência 0300"
"1600";"BANCO DO BRASIL S.A.-SAO PAULO"
"1601";"BANCO DO BRASIL S.A.-BARAO DE DUPRAT"
"1602";"BANCO DO BRASIL S.A.-SETE DE ABRIL"
"1603";"BANCO DO BRASIL S.A.-GOVERNO SAO PAULO"
"1604";"BANCO DO BRASIL S.A.-MINISTERIO FAZENDA"
"1605";"BANCO DO BRASIL S.A.-PREVIDENCIA"
"1606";"BANCO DO BRASIL S.A.-PCA.DOM JOSE GASPAR"
"1607";"BANCO DO BRASIL S.A.-GECEX SAO PAULO II"
"1608";"BANCO DO BRASIL S.A.-24 DE MAIO"
"1609";"BANCO DO BRASIL S.A.-BOULEVARD SAO JOAO"
"1610";"BANCO DO BRASIL S.A.-EMPR.CENTRO S.PAULO"
"1611";"BANCO DO BRASIL S.A.-PODER JUDICIARIO"
"1612";"BANCO DO BRASIL S.A.-XAVIER DE TOLEDO"
"1613";"BANCO DO BRASIL S.A.-ESTILO SAO PAULO"
"1614";"BANCO DO BRASIL S.A.-CATEDRAL DA SE"
"1615";"BANCO DO BRASIL S.A.-GALERIA OLIDO"
"1616";"BANCO DO BRASIL S.A.-EDIFICIO ITALIA"
"1617";"BANCO DO BRASIL S.A.-PRACA DO PATRIARCA"
"1618";"BANCO DO BRASIL S.A.-ESTILO SAO JOAO"
"1619";"BANCO DO BRASIL S.A.-PALACIO DA JUSTICA"
"1620";"BANCO DO BRASIL S.A.-PALACIO MAUA"
"1621";"BANCO DO BRASIL S.A.-R.BOA VISTA-S.PAULO"
"1622";"BANCO DO BRASIL S.A.-R.DA QUITANDA-S.PAULO"
"1623";"BANCO DO BRASIL S.A.-ANHANGABAU-SAO PAULO"
"1624";"BANCO DO BRASIL S.A.-ESTILO JOAO MENDES"
*/
-- (b) Listar todos os estados em que existem agências. Verificar se há repetições e, se houver, explicar o porquê.
SELECT estado FROM agencia;
--Existem repetições porque o comando SELECT por padrão traz todas as tuplas da relação, e como o estado não é chave primária, há repetição.
/*
"MS"
"MS"
"MS"
"MS"
"MS"
"RJ"
"RJ"
"RJ"
"RJ"
"RJ"
"MG"
"MG"
"MG"
"MG"
"MG"
"RS"
"RS"
"RS"
"RS"
"RS"
"SC"
"SC"
"SC"
"SC"
"SC"
"TO"
"TO"
"TO"
"TO"
"TO"
"RO"
"RO"
"RO"
"RO"
"RO"
"SP"
"SP"
"SP"
"SP"
"SP"
"SP"
"SP"
"SP"
"SP"
"SP"
"SP"
"SP"
"SP"
"SP"
"SP"
"SP"
"SP"
"SP"
"SP"
"SP"
"SP"
"SP"
"SP"
"SP"
"SP"
"SP"
"SP"
"SP"
"SP"
"SP"
*/
-- (c) Listar todos os estados em que existem agências. Na resposta não deve haver repetição
SELECT DISTINCT estado FROM agencia;
/*
"RS"
"RO"
"RJ"
"TO"
"SP"
"MG"
"MS"
"SC"
*/
--5) Consultas com SELECT <coluna> AS <novo_nome> FROM
-- (a) Listar todos os estados, trocando, no resultado, o nome do atributo para "UF" (Unidade da Federação)
SELECT DISTINCT estado AS "UF" FROM agencia;
/*
"RS"
"RO"
"RJ"
"TO"
"SP"
"MG"
"MS"
"SC"
*/
-- (b) Listar todas as agências, renomeando as colunas de saída como agencia(cod,nome,cidade,uf)
SELECT * FROM agencia AS agencia(cod,nome,cidade,uf);
/*
"0743";"Agência Amambai";"Amamba";"MS"
"3928";"Agência Anaurilandia";"Anaurilandia";"MS"
"1323";"Agência Angelica";"Angelica";"MS"
"0706";"Agência Aparecida Do Taboado";"Aparecida do Taboado";"MS"
"1324";"Agência Aquidauana";"Aquidauana";"MS"
"1792";"001-1792 SHOP METROPOLITANO-RIO-RJ";"RIO DE JANEIRO";"RJ"
"3075";"001-3075 PLAT.CORPORATE M/N AV.RIO BRANCO";"RIO DE JANEIRO";"RJ"
"1797";"001-1797 SELECT BOTAFOGO-RJ";"RIO DE JANEIRO";"RJ"
"0775";"001-0775 R D.CAXIAS-TERESOPOLIS-RJ";"TERESOPOLIS";"RJ"
"1808";"001-1808 SELECT CONDE DE BONFIM-RJ";"RIO DE JANEIRO";"RJ"
"5874";"Avenida João Naves";"Uberlândia";"MG"
"1001";"Bairro Martins";"Uberlândia";"MG"
"1221";"Carijos";"Belo Horizonte";"MG"
"2918";"Avenida Floriano Peixoto";"Uberlândia";"MG"
"3139";"Halfeld";"Juiz de Fora";"MG"
"2794";"Bairro Anchieta";"Porto Alegre";"RS"
"3536";"Carlos Gomes";"Porto Alegre";"RS"
"3534";"Bairro Boqueirao";"Passo Fundo";"RS"
"2692";"Bento Brasil";"Passo Fundo";"RS"
"1484";"Dr.Mariano Da Rocha";"Santa Maria";"RS"
"0095";"banco do brasil";"blumenau";"SC"
"0128";"HSBC";"blumenau";"SC"
"0411";"Caixa Econômica";"blumenau";"SC"
"7134";"Itaú";"blumenau";"SC"
"1232";"Santader";"blumenau";"SC"
"1100";"Gurupi 1";"Gurupi";"TO"
"1101";"Gurupi 2";"Gurupi";"TO"
"1102";"Palmas 1";"Palmas";"TO"
"1103";"Araguaina 1";"Araguaina";"TO"
"1104";"Bernardo Sayao 1";"Bernardo Sayao";"TO"
"1300";"Banco do Brasil S.A. - Avenida Amazonas";"Porto Velho";"RO"
"1301";"Banco do Brasil S.A. - Porto Velho";"Porto Velho";"RO"
"1302";"Banco do Brasil S.A. - Jatuarana";"Porto Velho";"RO"
"1303";"Banco do Brasil S.A. - Nacoes Unidas";"Porto Velho";"RO"
"1304";"Banco do Brasil S.A. - Nova Porto Velho";"Porto Velho";"RO"
"1701";"Agência 0171";"Itapira";"SP"
"1707";"Agência 0054";"Bebedouro";"SP"
"1710";"Agência 0154";"Ribeirão Bonito";"SP"
"1708";"Agência 0987";"Sertãozinho";"SP"
"1709";"Agência 0300";"Mirandopolis";"SP"
"1600";"BANCO DO BRASIL S.A.-SAO PAULO";"SAO PAULO";"SP"
"1601";"BANCO DO BRASIL S.A.-BARAO DE DUPRAT";"SAO PAULO";"SP"
"1602";"BANCO DO BRASIL S.A.-SETE DE ABRIL";"SAO PAULO";"SP"
"1603";"BANCO DO BRASIL S.A.-GOVERNO SAO PAULO";"SAO PAULO";"SP"
"1604";"BANCO DO BRASIL S.A.-MINISTERIO FAZENDA";"SAO PAULO";"SP"
"1605";"BANCO DO BRASIL S.A.-PREVIDENCIA";"SAO PAULO";"SP"
"1606";"BANCO DO BRASIL S.A.-PCA.DOM JOSE GASPAR";"SAO PAULO";"SP"
"1607";"BANCO DO BRASIL S.A.-GECEX SAO PAULO II";"SAO PAULO";"SP"
"1608";"BANCO DO BRASIL S.A.-24 DE MAIO";"SAO PAULO";"SP"
"1609";"BANCO DO BRASIL S.A.-BOULEVARD SAO JOAO";"SAO PAULO";"SP"
"1610";"BANCO DO BRASIL S.A.-EMPR.CENTRO S.PAULO";"SAO PAULO";"SP"
"1611";"BANCO DO BRASIL S.A.-PODER JUDICIARIO";"SAO PAULO";"SP"
"1612";"BANCO DO BRASIL S.A.-XAVIER DE TOLEDO";"SAO PAULO";"SP"
"1613";"BANCO DO BRASIL S.A.-ESTILO SAO PAULO";"SAO PAULO";"SP"
"1614";"BANCO DO BRASIL S.A.-CATEDRAL DA SE";"SAO PAULO";"SP"
"1615";"BANCO DO BRASIL S.A.-GALERIA OLIDO";"SAO PAULO";"SP"
"1616";"BANCO DO BRASIL S.A.-EDIFICIO ITALIA";"SAO PAULO";"SP"
"1617";"BANCO DO BRASIL S.A.-PRACA DO PATRIARCA";"SAO PAULO";"SP"
"1618";"BANCO DO BRASIL S.A.-ESTILO SAO JOAO";"SAO PAULO";"SP"
"1619";"BANCO DO BRASIL S.A.-PALACIO DA JUSTICA";"SAO PAULO";"SP"
"1620";"BANCO DO BRASIL S.A.-PALACIO MAUA";"SAO PAULO";"SP"
"1621";"BANCO DO BRASIL S.A.-R.BOA VISTA-S.PAULO";"SAO PAULO";"SP"
"1622";"BANCO DO BRASIL S.A.-R.DA QUITANDA-S.PAULO";"SAO PAULO";"SP"
"1623";"BANCO DO BRASIL S.A.-ANHANGABAU-SAO PAULO";"SAO PAULO";"SP"
"1624";"BANCO DO BRASIL S.A.-ESTILO JOAO MENDES";"SAO PAULO";"SP"
*/
--6) Consultas com SELECT FROM WHERE - com uma condição de seleção
-- (a) Listar todos os clientes de 'Uberlândia'
SELECT * FROM cliente WHERE cidade = 'Uberlândia';
/*
701;"Joao Santana";"86053589047";"1940-10-12";"Rua dos Bandidos, 89";"Uberlândia";"MG";703
703;"Luis Inacio";"68055758000";"1956-03-18";"Rua dos Condenados, 91";"Uberlândia";"MG";700
*/
-- (b) Listar todas as operações bancárias com valores superiores à R$5000,00 
SELECT * FROM operacao WHERE valor > 5000;
/*
"1001";701;6;"c";"salário";"2016-10-01 07:02:29";10212.00
"3536";35600;2;"2";"deposito";"2016-10-06 13:59:56.776";7430.00
"1300";1;1;"D";"Pagamento";"1991-01-01 01:01:01";1000000000.00
"1301";1;1;"D";"Saque";"1992-02-02 02:02:02";1000000000.00
"1302";1;1;"C";"Deposito";"1993-03-03 03:03:03";1000000000.00
"1303";1;1;"C";"Transferencia";"1994-04-04 04:04:04";1000000000.00
"1304";1;1;"D";"Transferencia";"1995-05-05 05:05:05";1000000000.00
"1600";3;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:00:51";5100.00
"1601";3;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:00:52";5200.00
"1602";3;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:00:53";5300.00
"1603";3;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:00:54";5400.00
"1604";3;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:00:55";5500.00
"1605";3;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:00:56";5600.00
"1606";3;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:00:57";5700.00
"1607";3;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:00:58";5800.00
"1608";3;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:00:59";5900.00
"1609";3;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:00";6000.00
"1610";3;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:01";6100.00
"1611";3;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:02";6200.00
"1612";3;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:03";6300.00
"1613";3;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:04";6400.00
"1614";3;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:05";6500.00
"1615";3;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:06";6600.00
"1616";3;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:07";6700.00
"1617";3;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:08";6800.00
"1618";3;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:09";6900.00
"1619";3;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:10";7000.00
"1620";3;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:11";7100.00
"1621";3;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:12";7200.00
"1622";3;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:13";7300.00
"1623";3;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:14";7400.00
"1624";3;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:15";7500.00
"1600";4;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:16";7600.00
"1601";4;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:17";7700.00
"1602";4;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:18";7800.00
"1603";4;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:19";7900.00
"1604";4;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:20";8000.00
"1605";4;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:21";8100.00
"1606";4;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:22";8200.00
"1607";4;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:23";8300.00
"1608";4;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:24";8400.00
"1609";4;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:25";8500.00
"1610";4;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:26";8600.00
"1611";4;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:27";8700.00
"1612";4;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:28";8800.00
"1613";4;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:29";8900.00
"1614";4;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:30";9000.00
"1615";4;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:31";9100.00
"1616";4;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:32";9200.00
"1617";4;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:33";9300.00
"1618";4;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:34";9400.00
"1619";4;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:35";9500.00
"1620";4;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:36";9600.00
"1621";4;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:37";9700.00
"1622";4;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:38";9800.00
"1623";4;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:39";9900.00
"1624";4;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:40";10000.00
*/
-- (c) Listar todas as contas que não são acessadas há mais de um ano   
SELECT * FROM conta WHERE ultimo_acesso < (CURRENT_DATE - INTERVAL '1 year');
/*
"1323";908837;5239.00;"2015-02-10"
"2794";27105;152457.32;"2015-01-11"
"2794";27106;11546.15;"2014-07-22"
"2794";27107;321584.00;"2014-11-23"
"2794";27108;154684.32;"2014-07-22"
"2794";27109;78263.32;"2014-11-23"
"3536";35603;14563.34;"2015-01-11"
"3536";35604;454.52;"2014-07-22"
"3536";35605;18466.58;"2014-11-23"
"3536";35609;123.45;"2014-07-22"
"3536";35610;154574.12;"2014-11-23"
"3534";35402;152457.32;"2015-01-11"
"3534";35403;11546.15;"2014-07-22"
"3534";35404;321584.10;"2014-11-23"
"3534";35408;16148.14;"2015-01-11"
"3534";35411;14563.34;"2014-07-22"
"2692";26900;454.52;"2014-11-23"
"2692";26904;23215936.36;"2014-07-22"
"2692";26905;123.45;"2014-11-23"
"2692";26909;1212121.45;"2015-01-11"
"2692";26910;152457.32;"2014-07-22"
"2692";26911;11546.15;"2014-11-23"
"1484";14801;154684.32;"2014-07-22"
"1484";14802;78263.32;"2014-11-23"
"1484";14807;14563.34;"2015-01-11"
"1484";14811;2215.52;"2015-01-11"
"1300";1;1000000000.00;"1991-01-01"
"1301";1;1000000000.00;"1992-02-02"
"1302";1;1000000000.00;"1993-03-03"
"1303";1;1000000000.00;"1994-04-04"
"1304";1;1000000000.00;"1995-05-05"
*/
-- (d) Mostre as datas (somente o dia e o mês) das operações bancárias que ocorreram neste ano 
SELECT EXTRACT(DAY FROM datahora), EXTRACT(MONTH FROM datahora) FROM operacao WHERE EXTRACT(YEAR FROM datahora) = EXTRACT(YEAR FROM CURRENT_DATE);
/*
2;7
3;10
28;3
18;9
12;7
8;1
1;2
20;3
10;4
14;2
1;10
1;10
1;10
3;10
2;10
6;10
6;10
6;10
6;10
6;10
6;10
6;10
6;10
6;10
6;10
6;10
6;10
28;9
29;9
27;9
28;9
29;9
1;9
2;9
2;9
2;9
3;9
4;9
4;9
5;9
7;9
5;9
6;9
6;9
10;9
5;9
7;9
27;9
8;9
27;9
9;9
27;9
10;9
27;9
11;9
27;9
12;9
12;2
28;4
5;5
25;8
12;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
29;9
*/
-- (e) Listar todas as operações bancárias que ocorreram hoje (a consulta deve ser genérica - ver current_date)
SELECT * FROM operacao WHERE datahora = CURRENT_DATE;
--Não retornou nenhum resultado
-- (f) Listas os funcionários que foram contratados nos últimos 3 anos 
--    (essa consulta deve ser genérica – você não deve explicitar nenhuma data)
SELECT * FROM funcionario WHERE data_admissao >= (CURRENT_DATE - INTERVAL '3 years');
/*
4;"Johnata Ferreira";"1699199-9965";"2016-03-12";"3928";1
5;"Jose Roberto";"1998884-1122";"2015-02-12";"0743";5
1100;"Caio";"034984054487";"2016-10-06";"1100";
1101;"Luiz";"034998765432";"2016-10-06";"1104";
1103;"Carlos";"011965460653";"2016-10-06";"1103";
1105;"Jose Roberto";"034991345263";"2016-10-06";"1101";
1104;"Lionel Messi";"033984273847";"2016-10-06";"1102";1100
1102;"Rafael";"064996782648";"2016-10-06";"1104";1101
1720;"Lucas Rezende";"(34)32173342";"2016-01-08";"1701";1720
1721;"Cristiane Dias";"(34)32509110";"2016-08-09";"1707";1721
1722;"Paulo Roberto";"(34)99918275";"2015-01-12";"1710";1722
1728;"Ricardo Filho";"(34)98562084";"2015-03-01";"1708";1728
1729;"Maria da Silva";"(34)88452620";"2014-02-02";"1709";1729
1612;"Baltasar Otero";"011999999912";"2013-11-11";"1612";
1613;"Barnabé Cesário";"011999999913";"2014-01-13";"1613";
1614;"Belmira Rodrigues";"011999999914";"2014-04-18";"1614";
1615;"Bernardina Pereira";"011999999915";"2015-02-25";"1615";
1616;"Bernardo Vellozo";"011999999916";"2015-04-22";"1616";
1617;"Caetano Louzada";"011999999917";"2015-06-03";"1617";
1618;"Camila Almeida";"011999999918";"2015-12-04";"1618";
1619;"Caubi Villar";"011999999919";"2016-01-08";"1619";
1620;"Celso Vasconcellos";"011999999920";"2016-01-11";"1620";
1621;"Clarisse Espírito Santo";"011999999921";"2016-03-15";"1621";
1622;"Claudemira Villela";"011999999922";"2016-05-24";"1622";
1623;"Cosme Palha";"011999999923";"2016-07-21";"1623";
1624;"Célia Lobato";"011999999924";"2016-08-05";"1624";
1637;"Eva Quinterno";"011999999937";"2013-11-11";"1612";1612
1638;"Feliciana Ventura";"011999999938";"2014-01-13";"1613";1613
1639;"Felícia Quinzeiro";"011999999939";"2014-04-18";"1614";1614
1640;"Fernão Ataí";"011999999940";"2015-02-25";"1615";1615
1641;"Filena Vilhena";"011999999941";"2015-04-22";"1616";1616
1642;"Flamínia Vega";"011999999942";"2015-06-03";"1617";1617
1643;"Flávia Meirelles";"011999999943";"2015-12-04";"1618";1618
1644;"Fábio Pamplona";"011999999944";"2016-01-08";"1619";1619
1645;"Gaspar Tavera";"011999999945";"2016-01-11";"1620";1620
1646;"Gonçalo Carvalhaes";"011999999946";"2016-03-15";"1621";1621
1647;"Guido Morais";"011999999947";"2016-05-24";"1622";1622
1648;"Hipólito Quadros";"011999999948";"2016-07-21";"1623";1623
1649;"Ildefonso Castello Branco";"011999999949";"2016-08-05";"1624";1624
1662;"Natália Reyes";"011999999962";"2013-11-11";"1612";1612
1663;"Nazaré Arantes";"011999999963";"2014-01-13";"1613";1613
1664;"Nicolau Travassos";"011999999964";"2014-04-18";"1614";1614
1665;"Noémia Cavadas";"011999999965";"2015-02-25";"1615";1615
1666;"Nádia Monforte";"011999999966";"2015-04-22";"1616";1616
1667;"Olavo Negromonte";"011999999967";"2015-06-03";"1617";1617
1668;"Olga Jucá";"011999999968";"2015-12-04";"1618";1618
1669;"Ordonho Lira";"011999999969";"2016-01-08";"1619";1619
1670;"Palmira Garcés";"011999999970";"2016-01-11";"1620";1620
1671;"Paulino Brião";"011999999971";"2016-03-15";"1621";1621
1672;"Pedro Valido";"011999999972";"2016-05-24";"1622";1622
1673;"Plínio Moita";"011999999973";"2016-07-21";"1623";1623
1674;"Potira Caminha";"011999999974";"2016-08-05";"1624";1624
1687;"Tadeu Monforte";"011999999987";"2013-11-11";"1612";1612
1688;"Teresina Varella";"011999999988";"2014-01-13";"1613";1613
1689;"Ubaldo Thamily";"011999999989";"2014-04-18";"1614";1614
1690;"Ubiratã Lucas";"011999999990";"2015-02-25";"1615";1615
1691;"Ulisses Canejo";"011999999991";"2015-04-22";"1616";1616
1692;"Valentim Themes";"011999999992";"2015-06-03";"1617";1617
1693;"Vanda Tabajara";"011999999993";"2015-12-04";"1618";1618
1694;"Verónica Eiró";"011999999994";"2016-01-08";"1619";1619
1695;"Xavier Balladares";"011999999995";"2016-01-11";"1620";1620
1696;"Xavier Vázquez";"011999999996";"2016-03-15";"1621";1621
1697;"Zacarias Tupinambá";"011999999997";"2016-05-24";"1622";1622
1698;"Zoraide Patrício";"011999999998";"2016-07-21";"1623";1623
1699;"Énia Leiria ";"011999999999";"2016-08-05";"1624";1624
*/
-- (g) Listar todos os funcionários que não possuem supervisores
SELECT * FROM funcionario WHERE supervisor IS NULL;
/*
100;"﻿Brenda Melo";"(81)47106478";"2003-05-14";"1792";
800;"Antonio Oliveira";"5133731888";"2004-05-01";"2794";
801;"Cesar Naves";"5133733488";"2004-05-01";"3536";
802;"Maria Aparecida";"5133731824";"2004-05-01";"3534";
803;"Evandro Santos";"5136731964";"2004-05-01";"2692";
804;"Flavia de Almeida";"51337457269";"2004-05-01";"1484";
900;"Lorenzo Breno Cauê Almeida";"2879-4480";"2010-07-23";"0095";
1100;"Caio";"034984054487";"2016-10-06";"1100";
1101;"Luiz";"034998765432";"2016-10-06";"1104";
1103;"Carlos";"011965460653";"2016-10-06";"1103";
1105;"Jose Roberto";"034991345263";"2016-10-06";"1101";
1304;"Augusto";"069955556666";"1995-05-05";"1304";
1600;"Adão Casalinho";"011999999900";"2011-06-03";"1600";
1601;"Adélia Barroqueiro";"011999999901";"2011-06-27";"1601";
1602;"Alarico Alancastro";"011999999902";"2011-07-21";"1602";
1603;"Alcides Zagalo";"011999999903";"2012-04-27";"1603";
1604;"Aluísio Gentil";"011999999904";"2012-10-31";"1604";
1605;"Aluísio Herrera";"011999999905";"2012-12-28";"1605";
1606;"Alvito Cachão";"011999999906";"2013-02-07";"1606";
1607;"Amílcar Soeiro";"011999999907";"2013-05-03";"1607";
1608;"Anhangüera Silva";"011999999908";"2013-07-09";"1608";
1609;"Apoena Villar";"011999999909";"2013-07-17";"1609";
1610;"Arcidres Fonseca";"011999999910";"2013-07-29";"1610";
1611;"Arminda Carneiro";"011999999911";"2013-09-24";"1611";
1612;"Baltasar Otero";"011999999912";"2013-11-11";"1612";
1613;"Barnabé Cesário";"011999999913";"2014-01-13";"1613";
1614;"Belmira Rodrigues";"011999999914";"2014-04-18";"1614";
1615;"Bernardina Pereira";"011999999915";"2015-02-25";"1615";
1616;"Bernardo Vellozo";"011999999916";"2015-04-22";"1616";
1617;"Caetano Louzada";"011999999917";"2015-06-03";"1617";
1618;"Camila Almeida";"011999999918";"2015-12-04";"1618";
1619;"Caubi Villar";"011999999919";"2016-01-08";"1619";
1620;"Celso Vasconcellos";"011999999920";"2016-01-11";"1620";
1621;"Clarisse Espírito Santo";"011999999921";"2016-03-15";"1621";
1622;"Claudemira Villela";"011999999922";"2016-05-24";"1622";
1623;"Cosme Palha";"011999999923";"2016-07-21";"1623";
1624;"Célia Lobato";"011999999924";"2016-08-05";"1624";
*/
-- (h) Listar todos os funcionários que possuem supervisores
SELECT * FROM funcionario WHERE supervisor IS NOT NULL;
/*
1;"Thiago Moreira Borges";"3499696-5715";"1992-10-02";"1324";4
2;"Fabricio Ismael";"343213-3654";"2002-03-08";"0706";3
3;"Daniel Dias Alves";"3499191-5559";"2012-04-05";"1323";2
4;"Johnata Ferreira";"1699199-9965";"2016-03-12";"3928";1
5;"Jose Roberto";"1998884-1122";"2015-02-12";"0743";5
101;"Leonor Goncalves";"(11)38462353";"2009-06-14";"3075";100
102;"Luiz Cunha";"(16)42467196";"1996-05-04";"1797";100
103;"Carlos Sousa";"(11)68784656";"2008-02-15";"0775";100
104;"Paulo Barbosa";"(61)36375500";"2009-11-11";"1808";100
700;"Joao da Silva";"3236-6666";"2008-04-05";"1001";700
701;"Jose da Costa";"3236-6661";"2008-04-06";"5874";701
702;"Joaquim Nascimento";"3236-6662";"2009-03-12";"1221";702
703;"Francisco da Silva";"3236-6663";"2011-09-01";"2918";703
704;"Jair das Couves";"3236-6664";"1998-10-01";"2918";703
805;"Gustavo Dias";"5133331211";"2004-05-01";"2794";800
806;"Sebastião José";"5138731954";"2004-05-01";"3536";801
807;"Ana Maria Matias";"5133761788";"2004-05-01";"3534";802
808;"Bruna Castro";"5133741898";"2004-05-01";"2692";803
809;"Hiago Cintra";"5133731883";"2004-05-01";"1484";804
810;"Thiago Nunes";"5133771866";"2004-05-01";"2794";800
811;"Alisson dos Reis";"5133741928";"2004-05-01";"3536";801
812;"Eduardo Oliveira";"5131733808";"2004-05-01";"3534";802
813;"Josiane Silva";"5133761180";"2004-05-01";"2692";803
814;"Natalia Araujo";"5133734981";"2004-05-01";"1484";804
901;"Cauê Davi Enrico da Silva";"2920-3197";"2008-09-12";"0128";900
902;"Julio Igor Cauã Campos";"2815-0172";"2007-04-12";"0411";900
903;"Nicolas Breno Luan Moura";"2677-9919";"2006-06-12";"7134";900
904;"Miguel Ricardo Costa";"2867-3831";"2005-02-12";"1232";900
1104;"Lionel Messi";"033984273847";"2016-10-06";"1102";1100
1102;"Rafael";"064996782648";"2016-10-06";"1104";1101
1300;"Arthur";"069911112222";"1991-01-01";"1300";1304
1301;"Rhaniel";"069922223333";"1992-02-02";"1301";1304
1302;"Jean";"069933334444";"1993-03-03";"1302";1304
1303;"Sandro";"069944445555";"1994-04-04";"1303";1304
1720;"Lucas Rezende";"(34)32173342";"2016-01-08";"1701";1720
1721;"Cristiane Dias";"(34)32509110";"2016-08-09";"1707";1721
1722;"Paulo Roberto";"(34)99918275";"2015-01-12";"1710";1722
1728;"Ricardo Filho";"(34)98562084";"2015-03-01";"1708";1728
1729;"Maria da Silva";"(34)88452620";"2014-02-02";"1709";1729
1625;"Delfina Ornelas";"011999999925";"2011-06-03";"1600";1600
1626;"Denise Taperebá";"011999999926";"2011-06-27";"1601";1601
1627;"Diamantino Pozas";"011999999927";"2011-07-21";"1602";1602
1628;"Dinarte Torrado";"011999999928";"2012-04-27";"1603";1603
1629;"Domingos Antas";"011999999929";"2012-10-31";"1604";1604
1630;"Dorindo Portela";"011999999930";"2012-12-28";"1605";1605
1631;"Délio Grangeia";"011999999931";"2013-02-07";"1606";1606
1632;"Eduardo Palmeira";"011999999932";"2013-05-03";"1607";1607
1633;"Eloi Amarante";"011999999933";"2013-07-09";"1608";1608
1634;"Emiliano Gracia";"011999999934";"2013-07-17";"1609";1609
1635;"Emílio García";"011999999935";"2013-07-29";"1610";1610
1636;"Epaminondas Marcondes";"011999999936";"2013-09-24";"1611";1611
1637;"Eva Quinterno";"011999999937";"2013-11-11";"1612";1612
1638;"Feliciana Ventura";"011999999938";"2014-01-13";"1613";1613
1639;"Felícia Quinzeiro";"011999999939";"2014-04-18";"1614";1614
1640;"Fernão Ataí";"011999999940";"2015-02-25";"1615";1615
1641;"Filena Vilhena";"011999999941";"2015-04-22";"1616";1616
1642;"Flamínia Vega";"011999999942";"2015-06-03";"1617";1617
1643;"Flávia Meirelles";"011999999943";"2015-12-04";"1618";1618
1644;"Fábio Pamplona";"011999999944";"2016-01-08";"1619";1619
1645;"Gaspar Tavera";"011999999945";"2016-01-11";"1620";1620
1646;"Gonçalo Carvalhaes";"011999999946";"2016-03-15";"1621";1621
1647;"Guido Morais";"011999999947";"2016-05-24";"1622";1622
1648;"Hipólito Quadros";"011999999948";"2016-07-21";"1623";1623
1649;"Ildefonso Castello Branco";"011999999949";"2016-08-05";"1624";1624
1650;"Jacinto Garcez";"011999999950";"2011-06-03";"1600";1600
1651;"Janaína Paranaguá";"011999999951";"2011-06-27";"1601";1601
1652;"Jorgina Anlicoara";"011999999952";"2011-07-21";"1602";1602
1653;"Julieta Villas Boas";"011999999953";"2012-04-27";"1603";1603
1654;"Laurinda Dutra";"011999999954";"2012-10-31";"1604";1604
1655;"Laurinda Lima";"011999999955";"2012-12-28";"1605";1605
1656;"Liedson Domingos";"011999999956";"2013-02-07";"1606";1606
1657;"Liliana Brites";"011999999957";"2013-05-03";"1607";1607
1658;"Marco Mortágua";"011999999958";"2013-07-09";"1608";1608
1659;"Marilda Toledo";"011999999959";"2013-07-17";"1609";1609
1660;"Melissa Chousa";"011999999960";"2013-07-29";"1610";1610
1661;"Mem Mangueira";"011999999961";"2013-09-24";"1611";1611
1662;"Natália Reyes";"011999999962";"2013-11-11";"1612";1612
1663;"Nazaré Arantes";"011999999963";"2014-01-13";"1613";1613
1664;"Nicolau Travassos";"011999999964";"2014-04-18";"1614";1614
1665;"Noémia Cavadas";"011999999965";"2015-02-25";"1615";1615
1666;"Nádia Monforte";"011999999966";"2015-04-22";"1616";1616
1667;"Olavo Negromonte";"011999999967";"2015-06-03";"1617";1617
1668;"Olga Jucá";"011999999968";"2015-12-04";"1618";1618
1669;"Ordonho Lira";"011999999969";"2016-01-08";"1619";1619
1670;"Palmira Garcés";"011999999970";"2016-01-11";"1620";1620
1671;"Paulino Brião";"011999999971";"2016-03-15";"1621";1621
1672;"Pedro Valido";"011999999972";"2016-05-24";"1622";1622
1673;"Plínio Moita";"011999999973";"2016-07-21";"1623";1623
1674;"Potira Caminha";"011999999974";"2016-08-05";"1624";1624
1675;"Quitério Tabajara";"011999999975";"2011-06-03";"1600";1600
1676;"Ricardina Soares";"011999999976";"2011-06-27";"1601";1601
1677;"Roque Alancastre";"011999999977";"2011-07-21";"1602";1602
1678;"Rui Lucas";"011999999978";"2012-04-27";"1603";1603
1679;"Rúben Figueroa";"011999999979";"2012-10-31";"1604";1604
1680;"Salomé Valentín";"011999999980";"2012-12-28";"1605";1605
1681;"Santiago Caballero";"011999999981";"2013-02-07";"1606";1606
1682;"Sarita Taborda";"011999999982";"2013-05-03";"1607";1607
1683;"Silvana Magallanes";"011999999983";"2013-07-09";"1608";1608
1684;"Socorro Quadros";"011999999984";"2013-07-17";"1609";1609
1685;"Sonás Teles";"011999999985";"2013-07-29";"1610";1610
1686;"Sílvio Hierro";"011999999986";"2013-09-24";"1611";1611
1687;"Tadeu Monforte";"011999999987";"2013-11-11";"1612";1612
1688;"Teresina Varella";"011999999988";"2014-01-13";"1613";1613
1689;"Ubaldo Thamily";"011999999989";"2014-04-18";"1614";1614
1690;"Ubiratã Lucas";"011999999990";"2015-02-25";"1615";1615
1691;"Ulisses Canejo";"011999999991";"2015-04-22";"1616";1616
1692;"Valentim Themes";"011999999992";"2015-06-03";"1617";1617
1693;"Vanda Tabajara";"011999999993";"2015-12-04";"1618";1618
1694;"Verónica Eiró";"011999999994";"2016-01-08";"1619";1619
1695;"Xavier Balladares";"011999999995";"2016-01-11";"1620";1620
1696;"Xavier Vázquez";"011999999996";"2016-03-15";"1621";1621
1697;"Zacarias Tupinambá";"011999999997";"2016-05-24";"1622";1622
1698;"Zoraide Patrício";"011999999998";"2016-07-21";"1623";1623
1699;"Énia Leiria ";"011999999999";"2016-08-05";"1624";1624
*/
--7) Consultas com SELECT FROM WHERE - com duas ou mais condições de junção e com condição de seleção
-- (a) Listar todos os clientes de 'Uberlândia' e cujo nome inicia com a letra 'B'
SELECT * FROM cliente WHERE cidade = 'Uberlândia' AND UPPER(nome) BETWEEN 'B' AND 'C';
--Nenhum resultado retornado, não há clientes em Uberlândia com nome começando com B
-- (b) Listar todas as operações bancárias com valores superiores à R$5000,00 do tipo crédito
SELECT * FROM operacao WHERE valor > 5000 AND UPPER(tipo) = 'C';
/*
"1001";701;6;"c";"salário";"2016-10-01 07:02:29";10212.00
"1302";1;1;"C";"Deposito";"1993-03-03 03:03:03";1000000000.00
"1303";1;1;"C";"Transferencia";"1994-04-04 04:04:04";1000000000.00
"1600";3;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:00:51";5100.00
"1601";3;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:00:52";5200.00
"1602";3;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:00:53";5300.00
"1603";3;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:00:54";5400.00
"1604";3;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:00:55";5500.00
"1605";3;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:00:56";5600.00
"1606";3;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:00:57";5700.00
"1607";3;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:00:58";5800.00
"1608";3;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:00:59";5900.00
"1609";3;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:00";6000.00
"1610";3;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:01";6100.00
"1611";3;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:02";6200.00
"1612";3;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:03";6300.00
"1613";3;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:04";6400.00
"1614";3;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:05";6500.00
"1615";3;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:06";6600.00
"1616";3;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:07";6700.00
"1617";3;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:08";6800.00
"1618";3;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:09";6900.00
"1619";3;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:10";7000.00
"1620";3;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:11";7100.00
"1621";3;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:12";7200.00
"1622";3;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:13";7300.00
"1623";3;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:14";7400.00
"1624";3;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:15";7500.00
"1600";4;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:16";7600.00
"1601";4;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:17";7700.00
"1602";4;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:18";7800.00
"1603";4;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:19";7900.00
"1604";4;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:20";8000.00
"1605";4;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:21";8100.00
"1606";4;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:22";8200.00
"1607";4;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:23";8300.00
"1608";4;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:24";8400.00
"1609";4;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:25";8500.00
"1610";4;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:26";8600.00
"1611";4;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:27";8700.00
"1612";4;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:28";8800.00
"1613";4;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:29";8900.00
"1614";4;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:30";9000.00
"1615";4;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:31";9100.00
"1616";4;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:32";9200.00
"1617";4;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:33";9300.00
"1618";4;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:34";9400.00
"1619";4;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:35";9500.00
"1620";4;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:36";9600.00
"1621";4;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:37";9700.00
"1622";4;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:38";9800.00
"1623";4;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:39";9900.00
"1624";4;1;"C";"Dep. Abertura de Conta";"2016-09-29 12:01:40";10000.00
*/
-- (c) Listar todas as contas com saldo menor que 300 e que não são acessadas há mais de um ano   
SELECT * FROM conta WHERE ultimo_acesso < (CURRENT_DATE - INTERVAL '1 year') AND saldo < 300;
/*
"3536";35609;123.45;"2014-07-22"
"2692";26905;123.45;"2014-11-23"
*/
-- (e) Listar todas as operações bancárias que ocorreram hoje (a consulta deve ser genérica - ver current_date)
SELECT * FROM operacao WHERE datahora = CURRENT_DATE;
--Não retornou nenhum resultado, data da consulta: 16/10/2016;
-- (f) Listas os funcionários que foram contratados nos últimos 3 anos 
--    (essa consulta deve ser genérica – você não deve explicitar nenhuma data)
SELECT * FROM funcionario WHERE data_admissao >= (CURRENT_DATE - INTERVAL '3 years');
/*
4;"Johnata Ferreira";"1699199-9965";"2016-03-12";"3928";1
5;"Jose Roberto";"1998884-1122";"2015-02-12";"0743";5
1100;"Caio";"034984054487";"2016-10-06";"1100";
1101;"Luiz";"034998765432";"2016-10-06";"1104";
1103;"Carlos";"011965460653";"2016-10-06";"1103";
1105;"Jose Roberto";"034991345263";"2016-10-06";"1101";
1104;"Lionel Messi";"033984273847";"2016-10-06";"1102";1100
1102;"Rafael";"064996782648";"2016-10-06";"1104";1101
1720;"Lucas Rezende";"(34)32173342";"2016-01-08";"1701";1720
1721;"Cristiane Dias";"(34)32509110";"2016-08-09";"1707";1721
1722;"Paulo Roberto";"(34)99918275";"2015-01-12";"1710";1722
1728;"Ricardo Filho";"(34)98562084";"2015-03-01";"1708";1728
1729;"Maria da Silva";"(34)88452620";"2014-02-02";"1709";1729
1612;"Baltasar Otero";"011999999912";"2013-11-11";"1612";
1613;"Barnabé Cesário";"011999999913";"2014-01-13";"1613";
1614;"Belmira Rodrigues";"011999999914";"2014-04-18";"1614";
1615;"Bernardina Pereira";"011999999915";"2015-02-25";"1615";
1616;"Bernardo Vellozo";"011999999916";"2015-04-22";"1616";
1617;"Caetano Louzada";"011999999917";"2015-06-03";"1617";
1618;"Camila Almeida";"011999999918";"2015-12-04";"1618";
1619;"Caubi Villar";"011999999919";"2016-01-08";"1619";
1620;"Celso Vasconcellos";"011999999920";"2016-01-11";"1620";
1621;"Clarisse Espírito Santo";"011999999921";"2016-03-15";"1621";
1622;"Claudemira Villela";"011999999922";"2016-05-24";"1622";
1623;"Cosme Palha";"011999999923";"2016-07-21";"1623";
1624;"Célia Lobato";"011999999924";"2016-08-05";"1624";
1637;"Eva Quinterno";"011999999937";"2013-11-11";"1612";1612
1638;"Feliciana Ventura";"011999999938";"2014-01-13";"1613";1613
1639;"Felícia Quinzeiro";"011999999939";"2014-04-18";"1614";1614
1640;"Fernão Ataí";"011999999940";"2015-02-25";"1615";1615
1641;"Filena Vilhena";"011999999941";"2015-04-22";"1616";1616
1642;"Flamínia Vega";"011999999942";"2015-06-03";"1617";1617
1643;"Flávia Meirelles";"011999999943";"2015-12-04";"1618";1618
1644;"Fábio Pamplona";"011999999944";"2016-01-08";"1619";1619
1645;"Gaspar Tavera";"011999999945";"2016-01-11";"1620";1620
1646;"Gonçalo Carvalhaes";"011999999946";"2016-03-15";"1621";1621
1647;"Guido Morais";"011999999947";"2016-05-24";"1622";1622
1648;"Hipólito Quadros";"011999999948";"2016-07-21";"1623";1623
1649;"Ildefonso Castello Branco";"011999999949";"2016-08-05";"1624";1624
1662;"Natália Reyes";"011999999962";"2013-11-11";"1612";1612
1663;"Nazaré Arantes";"011999999963";"2014-01-13";"1613";1613
1664;"Nicolau Travassos";"011999999964";"2014-04-18";"1614";1614
1665;"Noémia Cavadas";"011999999965";"2015-02-25";"1615";1615
1666;"Nádia Monforte";"011999999966";"2015-04-22";"1616";1616
1667;"Olavo Negromonte";"011999999967";"2015-06-03";"1617";1617
1668;"Olga Jucá";"011999999968";"2015-12-04";"1618";1618
1669;"Ordonho Lira";"011999999969";"2016-01-08";"1619";1619
1670;"Palmira Garcés";"011999999970";"2016-01-11";"1620";1620
1671;"Paulino Brião";"011999999971";"2016-03-15";"1621";1621
1672;"Pedro Valido";"011999999972";"2016-05-24";"1622";1622
1673;"Plínio Moita";"011999999973";"2016-07-21";"1623";1623
1674;"Potira Caminha";"011999999974";"2016-08-05";"1624";1624
1687;"Tadeu Monforte";"011999999987";"2013-11-11";"1612";1612
1688;"Teresina Varella";"011999999988";"2014-01-13";"1613";1613
1689;"Ubaldo Thamily";"011999999989";"2014-04-18";"1614";1614
1690;"Ubiratã Lucas";"011999999990";"2015-02-25";"1615";1615
1691;"Ulisses Canejo";"011999999991";"2015-04-22";"1616";1616
1692;"Valentim Themes";"011999999992";"2015-06-03";"1617";1617
1693;"Vanda Tabajara";"011999999993";"2015-12-04";"1618";1618
1694;"Verónica Eiró";"011999999994";"2016-01-08";"1619";1619
1695;"Xavier Balladares";"011999999995";"2016-01-11";"1620";1620
1696;"Xavier Vázquez";"011999999996";"2016-03-15";"1621";1621
1697;"Zacarias Tupinambá";"011999999997";"2016-05-24";"1622";1622
1698;"Zoraide Patrício";"011999999998";"2016-07-21";"1623";1623
1699;"Énia Leiria ";"011999999999";"2016-08-05";"1624";1624
*/
-- 8) CONSULTAS COM JUNÇÕES ENVOLVENDO DUAS TABELAS 
-- >> Atenção: Colocar a condição de junção no WHERE
-- (a) Listar o número funcional e o nome de todos os funcionarios juntamente com todos os seus dependentes
SELECT num_funcional,nome,nome_dependente FROM funcionario,dependentes WHERE num_funcional = funcionario;
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
SELECT f.nome,municipio FROM funcionario f,agencia WHERE agencia = codigo;
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
SELECT nome,cod_agencia,numero_conta FROM cliente,clienteconta WHERE id = id_cliente;
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
-- 9) CONSULTAS COM JUNÇÕES ENVOLVENDO DUAS OU MAIS TABELAS 
-- >> Atenção: Colocar a condição de junção no WHERE
-- (a) Liste o nome do cliente e o saldo em sua conta corrente
SELECT cli.nome,con.saldo FROM cliente cli,conta con,clienteconta clicon WHERE cli.id = clicon.id_cliente AND (clicon.cod_agencia = con.cod_agencia AND clicon.numero_conta = con.numero);
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
-- (b) Liste o nome do cliente juntamente com o nome do seu gerente e o nome da agência que o supervisor trabalha
SELECT c.nome,g.nome,a.nome FROM cliente c,funcionario g,agencia a WHERE c.gerente = g.num_funcional AND g.agencia = a.codigo;
/*
"Arthur Cesar";"Jose Roberto";"Agência Amambai"
"José Marques";"Johnata Ferreira";"Agência Anaurilandia"
"Maria Joaquina";"Daniel Dias Alves";"Agência Angelica"
"Vitor Borges";"Fabricio Ismael";"Agência Aparecida Do Taboado"
"Thais Felipe";"Thiago Moreira Borges";"Agência Aquidauana"
"﻿Matilde Souza";"Paulo Barbosa";"001-1808 SELECT CONDE DE BONFIM-RJ"
"Nicolas Cavalcanti";"Paulo Barbosa";"001-1808 SELECT CONDE DE BONFIM-RJ"
"Isabela Dias";"Paulo Barbosa";"001-1808 SELECT CONDE DE BONFIM-RJ"
"Cauã Pinto";"Paulo Barbosa";"001-1808 SELECT CONDE DE BONFIM-RJ"
"Daniel Almeida";"Leonor Goncalves";"001-3075 PLAT.CORPORATE M/N AV.RIO BRANCO"
"Joao Santana";"Francisco da Silva";"Avenida Floriano Peixoto"
"Dilma Lana";"Joaquim Nascimento";"Carijos"
"Luis Inacio";"Joao da Silva";"Bairro Martins"
"Aecio Neves";"Joaquim Nascimento";"Carijos"
"Renan Calheiros";"Jose da Costa";"Avenida João Naves"
"César De Alencar Sartin";"Antonio Oliveira";"Bairro Anchieta"
"Rodrigo Francisco De Oliveira";"Antonio Oliveira";"Bairro Anchieta"
"Maria Fernanda Ferreira Da Silva";"Antonio Oliveira";"Bairro Anchieta"
"Gabriel Silva De Barros Antunes";"Thiago Nunes";"Bairro Anchieta"
"Lorena Alves Silva Ottoni";"Thiago Nunes";"Bairro Anchieta"
"Etiene Borges Silva";"Thiago Nunes";"Bairro Anchieta"
"Sávio Antunes Maciel Ribeiro";"Gustavo Dias";"Bairro Anchieta"
"Emiliano Teixeira Martins";"Gustavo Dias";"Bairro Anchieta"
"Daniela De Oliveira Marques";"Gustavo Dias";"Bairro Anchieta"
"Rodrigo Soares Siqueira";"Gustavo Dias";"Bairro Anchieta"
"Isis Cristiane De Camargos Mendes";"Cesar Naves";"Carlos Gomes"
"Diego Gouvêa Couto";"Cesar Naves";"Carlos Gomes"
"Ruan Moraes Cardoso";"Cesar Naves";"Carlos Gomes"
"Litória Maria Alves De Souza Filha";"Cesar Naves";"Carlos Gomes"
"Rayane Ferreira Da Silva";"Sebastião José";"Carlos Gomes"
"Desirre Tomaz Martins Pereira";"Sebastião José";"Carlos Gomes"
"Rafael Paulino Silva Sobrinho";"Sebastião José";"Carlos Gomes"
"Cristiano Almeida Silveira";"Sebastião José";"Carlos Gomes"
"Lauriane Soares Costa";"Alisson dos Reis";"Carlos Gomes"
"Carlos De Souza Novais";"Alisson dos Reis";"Carlos Gomes"
"Diego Rabelo Damasceno";"Maria Aparecida";"Bairro Boqueirao"
"Victor Vinicius De Rezende";"Maria Aparecida";"Bairro Boqueirao"
"Liana Travaglia De Sousa";"Maria Aparecida";"Bairro Boqueirao"
"Tatiana Cristina Silva";"Maria Aparecida";"Bairro Boqueirao"
"Marina Barbosa De Freitas Vieira";"Ana Maria Matias";"Bairro Boqueirao"
"Adriana Santos Farias";"Ana Maria Matias";"Bairro Boqueirao"
"Fabricio Soares Borges";"Ana Maria Matias";"Bairro Boqueirao"
"Talita Vieira Barbosa Martins";"Eduardo Oliveira";"Bairro Boqueirao"
"Carlos Henrique De Araujo";"Eduardo Oliveira";"Bairro Boqueirao"
"Angela Aparecida Silva Siqueira";"Eduardo Oliveira";"Bairro Boqueirao"
"Débora Cristina Alves Rita";"Evandro Santos";"Bento Brasil"
"Lorena Fonseca Martins";"Evandro Santos";"Bento Brasil"
"Letícia Maria Rosa Lima";"Evandro Santos";"Bento Brasil"
"Lais Sousa Costa";"Bruna Castro";"Bento Brasil"
"Ludmilla Vilas Boas Simoneti";"Bruna Castro";"Bento Brasil"
"Laiza Marie Roldao";"Bruna Castro";"Bento Brasil"
"Wanessa Danielly Fernandes";"Bruna Castro";"Bento Brasil"
"Sandro Mayrink Paula";"Josiane Silva";"Bento Brasil"
"Duíllio Tomaz Silva";"Josiane Silva";"Bento Brasil"
"Paulo Victor Machado Prado";"Josiane Silva";"Bento Brasil"
"Eden Vilarinho Costa Junior";"Flavia de Almeida";"Dr.Mariano Da Rocha"
"Lidiane Margarida Do Carmo";"Flavia de Almeida";"Dr.Mariano Da Rocha"
"Ricardo Marcelo Mota Filho";"Flavia de Almeida";"Dr.Mariano Da Rocha"
"Rafael Henrique Araujo Dos Reis";"Hiago Cintra";"Dr.Mariano Da Rocha"
"Amon Ribeiro Lopes";"Hiago Cintra";"Dr.Mariano Da Rocha"
"Angelo Alves Ferreira Júnior";"Hiago Cintra";"Dr.Mariano Da Rocha"
"Francisco Assis Miguel Jardine";"Natalia Araujo";"Dr.Mariano Da Rocha"
"Gledmar Pires De Moura";"Natalia Araujo";"Dr.Mariano Da Rocha"
"Wilza Assuncao Braz";"Natalia Araujo";"Dr.Mariano Da Rocha"
"Cleo Custodio Ferreira";"Natalia Araujo";"Dr.Mariano Da Rocha"
"Laura Luna Oliveira";"Lorenzo Breno Cauê Almeida";"banco do brasil"
"Isabelle Pietra Pinto";"Cauê Davi Enrico da Silva";"HSBC"
"Tomás Miguel Rocha";"Julio Igor Cauã Campos";"Caixa Econômica"
"Heitor Cauã de Paula";"Nicolas Breno Luan Moura";"Itaú"
"Luiza Flávia Rodrigues";"Miguel Ricardo Costa";"Santader"
"Neymar Jr";"Caio";"Gurupi 1"
"Luis Suarez";"Caio";"Gurupi 1"
"Andres Iniesta";"Luiz";"Bernardo Sayao 1"
"Ivan Rakitic";"Luiz";"Bernardo Sayao 1"
"Jordi Alba";"Rafael";"Bernardo Sayao 1"
"Marc Andre Ter Stegen";"Rafael";"Bernardo Sayao 1"
"Daniel Alves";"Carlos";"Araguaina 1"
"Rafinha";"Carlos";"Araguaina 1"
"Arda Turan";"Lionel Messi";"Palmas 1"
"Douglas";"Lionel Messi";"Palmas 1"
"Marco Reus";"Jose Roberto";"Gurupi 2"
"Pierre-Emerick Aubameyang";"Jose Roberto";"Gurupi 2"
"Shinji Kagawa";"Caio";"Gurupi 1"
"Luiz";"Arthur";"Banco do Brasil S.A. - Avenida Amazonas"
"Marcelo";"Rhaniel";"Banco do Brasil S.A. - Porto Velho"
"Pedro";"Jean";"Banco do Brasil S.A. - Jatuarana"
"Steffan";"Sandro";"Banco do Brasil S.A. - Nacoes Unidas"
"Heitor";"Augusto";"Banco do Brasil S.A. - Nova Porto Velho"
"Carlos Eduardo";"Lucas Rezende";"Agência 0171"
"Claudio Nascimento";"Cristiane Dias";"Agência 0054"
"Alexandre Pereira";"Paulo Roberto";"Agência 0154"
"Isabella Gontijo";"Ricardo Filho";"Agência 0987"
"Sandra Cristina";"Maria da Silva";"Agência 0300"
"Abílio Guedes";"Adão Casalinho";"BANCO DO BRASIL S.A.-SAO PAULO"
"Acacio Estrella";"Adélia Barroqueiro";"BANCO DO BRASIL S.A.-BARAO DE DUPRAT"
"Acacio Vianna";"Alarico Alancastro";"BANCO DO BRASIL S.A.-SETE DE ABRIL"
"Adelino Benevides";"Alcides Zagalo";"BANCO DO BRASIL S.A.-GOVERNO SAO PAULO"
"Ajuricaba Braga";"Aluísio Gentil";"BANCO DO BRASIL S.A.-MINISTERIO FAZENDA"
"Alarico Vieira";"Aluísio Herrera";"BANCO DO BRASIL S.A.-PREVIDENCIA"
"Aleixo Moura";"Alvito Cachão";"BANCO DO BRASIL S.A.-PCA.DOM JOSE GASPAR"
"Almerinda Villar";"Amílcar Soeiro";"BANCO DO BRASIL S.A.-GECEX SAO PAULO II"
"Aluísio Pessanha";"Anhangüera Silva";"BANCO DO BRASIL S.A.-24 DE MAIO"
"André Pais";"Apoena Villar";"BANCO DO BRASIL S.A.-BOULEVARD SAO JOAO"
"Aniano Garrau";"Arcidres Fonseca";"BANCO DO BRASIL S.A.-EMPR.CENTRO S.PAULO"
"Augusta Camacho";"Arminda Carneiro";"BANCO DO BRASIL S.A.-PODER JUDICIARIO"
"Baltasar Marino";"Baltasar Otero";"BANCO DO BRASIL S.A.-XAVIER DE TOLEDO"
"Belmiro Prado";"Barnabé Cesário";"BANCO DO BRASIL S.A.-ESTILO SAO PAULO"
"Bernardete Mourão";"Belmira Rodrigues";"BANCO DO BRASIL S.A.-CATEDRAL DA SE"
"Bernardina Duarte";"Bernardina Pereira";"BANCO DO BRASIL S.A.-GALERIA OLIDO"
"Blasco Antúnez";"Bernardo Vellozo";"BANCO DO BRASIL S.A.-EDIFICIO ITALIA"
"Branca Diniz";"Caetano Louzada";"BANCO DO BRASIL S.A.-PRACA DO PATRIARCA"
"Bukake Jesus";"Camila Almeida";"BANCO DO BRASIL S.A.-ESTILO SAO JOAO"
"Carmem Campelo";"Caubi Villar";"BANCO DO BRASIL S.A.-PALACIO DA JUSTICA"
"Casimiro Mattos";"Celso Vasconcellos";"BANCO DO BRASIL S.A.-PALACIO MAUA"
"Cauê Cintra";"Clarisse Espírito Santo";"BANCO DO BRASIL S.A.-R.BOA VISTA-S.PAULO"
"Celso Alves";"Claudemira Villela";"BANCO DO BRASIL S.A.-R.DA QUITANDA-S.PAULO"
"Celso Sousa";"Cosme Palha";"BANCO DO BRASIL S.A.-ANHANGABAU-SAO PAULO"
"Clotilde Ríos";"Célia Lobato";"BANCO DO BRASIL S.A.-ESTILO JOAO MENDES"
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
SELECT nome FROM cliente,clienteconta c,operacao o WHERE id = id_cliente AND c.cod_agencia = o.cod_agencia AND c.numero_conta = o.numero_conta AND o.valor > 20000
/*
"Luiz"
"Marcelo"
"Pedro"
"Steffan"
"Heitor"
*/