
#r01
DELETE FROM `afergk`.`coinfind` WHERE `id` BETWEEN '99990000' and '99999000';
DELETE FROM `afergk`.`issuer` WHERE `id` BETWEEN '99990000' and '99999000';
DELETE FROM `afergk`.`coinissuers` WHERE `id_coin`  BETWEEN '99990000' and '99999000';
INSERT INTO `afergk`.`coinfind` (`id`, `DateFrom`, `DateTo`) VALUES ('99990001', '10', '-10');
INSERT INTO `afergk`.`issuer` (`id`, `Name`, `Description`, `Nomisma`, `active_from`, `active_to`) VALUES ('99990001', 'Arthur Dent', 'Test', 'adent', '-5000', '1000');
INSERT INTO `afergk`.`coinissuers` (`id_coin`, `id_issuer`, `id_uncertainty`) VALUES ('99990001', '99990001', '4');
INSERT INTO `afergk`.`coinfind` (`id`, `DateFrom`, `DateTo`) VALUES ('99990002', '10', '-10');
INSERT INTO `afergk`.`issuer` (`id`, `Name`, `Description`, `Nomisma`, `active_from`, `active_to`) VALUES ('99990002', 'Ford Prefect', 'Test', 'fprefect', '1000', '-1000');
INSERT INTO `afergk`.`coinissuers` (`id_coin`, `id_issuer`, `id_uncertainty`) VALUES ('99990002', '99990002', '4');
INSERT INTO `afergk`.`coinfind` (`id`, `DateFrom`, `DateTo`) VALUES ('99990003', '-6000', '-5500');
INSERT INTO `afergk`.`coinissuers` (`id_coin`, `id_issuer`, `id_uncertainty`) VALUES ('99990003', '99990001', '4');
INSERT INTO `afergk`.`coinfind` (`id`, `DateFrom`, `DateTo`) VALUES ('99990004', '2000', '2500');
INSERT INTO `afergk`.`coinissuers` (`id_coin`, `id_issuer`, `id_uncertainty`) VALUES ('99990004', '99990001', '4');

#r02
DELETE FROM `afergk`.`coinfind` WHERE `id`  BETWEEN '99980000' and '99989000';
INSERT INTO `afergk`.`coinfind` (`id`, `DateFrom`, `DateTo`,`Period`) VALUES ('99980001', '-800', '-30',1);
INSERT INTO `afergk`.`coinfind` (`id`, `DateFrom`, `DateTo`,`Period`) VALUES ('99980002', '-300', '3',2);
INSERT INTO `afergk`.`coinfind` (`id`, `DateFrom`, `DateTo`,`Period`) VALUES ('99980003', '-799', '-900',3);
INSERT INTO `afergk`.`coinfind` (`id`, `DateFrom`, `DateTo`,`Period`) VALUES ('99980004', '-42', '200',4);
INSERT INTO `afergk`.`coinfind` (`id`, `DateFrom`, `DateTo`,`Period`) VALUES ('99980005', '700', '500',5);
INSERT INTO `afergk`.`coinfind` (`id`, `DateFrom`, `DateTo`,`Period`) VALUES ('99980006', '1500', '1501',6);
INSERT INTO `afergk`.`coinfind` (`id`, `DateFrom`, `DateTo`,`Period`) VALUES ('99980007', '300', '-301',7);
INSERT INTO `afergk`.`coinfind` (`id`, `DateFrom`, `DateTo`,`Period`) VALUES ('99980008', '375', '375',8);
INSERT INTO `afergk`.`coinfind` (`id`, `DateFrom`, `DateTo`,`Period`) VALUES ('99980009', '1921', '1921',9);

#r03
DELETE FROM `afergk`.`coinfind` WHERE `id`  BETWEEN '99970000' and '99979000';
INSERT INTO `afergk`.`coinfind` (`id`,`Material`,`Denomination`) VALUES ('99970001',4,7);
INSERT INTO `afergk`.`coinfind` (`id`,`Material`,`Denomination`,`Denomination2`) VALUES ('99970002',1,1,3);
INSERT INTO `afergk`.`coinfind` (`id`,`Material`,`Denomination`) VALUES ('99970003',2,7);
INSERT INTO `afergk`.`coinfind` (`id`,`Material`,`Denomination`,`Denomination2`) VALUES ('99970004',1,8,3);
INSERT INTO `afergk`.`coinfind` (`id`,`Material`,`Denomination`) VALUES ('99970005',1,7);
INSERT INTO `afergk`.`coinfind` (`id`,`Material`,`Denomination`,`Denomination2`) VALUES ('99970006',2,60,3);

#r04
DELETE FROM `afergk`.`coinfind` WHERE `id`  BETWEEN '99960000' and '99969000';
DELETE FROM `afergk`.`coinsectreat` WHERE `id_coin`  BETWEEN '99960000' and '99969000';
INSERT INTO `afergk`.`coinfind` (`id`, `DiameterMin`, `DiameterMax`, `Corrosion_Bs`, `Corrosion_Fs`, `Wear_Bs`, `Wear_Fs` ) VALUES ('99960001', '10', '10',1,1,1,1);
INSERT INTO `afergk`.`coinsectreat` (`id_coin`,`id_st`) values ('99960001',5);

#r05
DELETE FROM `afergk`.`coinfind` WHERE `id`  BETWEEN '99950000' and '99959000';
DELETE FROM `afergk`.`coinsectreat` WHERE `id_coin`  BETWEEN '99950000' and '99959000';
DELETE FROM `afergk`.`coinreferences` WHERE `id_coin`  BETWEEN '99950000' and '99959000';

#weight direct
INSERT INTO `afergk`.`coinfind` (`id`, `Weight`, `Material`,`DiameterMin`, `DiameterMax`, `Corrosion_Bs`, `Corrosion_Fs`, `Wear_Bs`, `Wear_Fs` ) VALUES ('99950001', 100, 4, '10', '9',1,1,1,1);
INSERT INTO `afergk`.`coinsectreat` (`id_coin`,`id_st`) values ('99950001',5);
INSERT INTO `afergk`.`coinfind` (`id`, `Weight`, `Material`,`DiameterMin`, `DiameterMax`, `Corrosion_Bs`, `Corrosion_Fs`, `Wear_Bs`, `Wear_Fs` ) VALUES ('99950002', 50, 4, '10', '9',1,1,1,1);
INSERT INTO `afergk`.`coinsectreat` (`id_coin`,`id_st`) values ('99950002',5);
INSERT INTO `afergk`.`coinfind` (`id`, `Weight`,`Corrosion_Bs`, `Corrosion_Fs`, `Wear_Bs`, `Wear_Fs`) VALUES ('99950003', 100,0,0,0,0);
INSERT INTO `afergk`.`coinreferences` (`id_coin`,`ReferenceName`,`ReferenceWork`) values ('99950003','9995',14);
INSERT INTO `afergk`.`coinfind` (`id`, `Weight`,`Corrosion_Bs`, `Corrosion_Fs`, `Wear_Bs`, `Wear_Fs`) VALUES ('99950004', 50,0,0,0,0);
INSERT INTO `afergk`.`coinreferences` (`id_coin`,`ReferenceName`,`ReferenceWork`) values ('99950004','9995',14);

#r06
DELETE FROM `afergk`.`coinfind` WHERE `id`  BETWEEN '99940000' and '99949000';
INSERT INTO `afergk`.`coinfind` (`id`, `Corrosion_Bs`, `Corrosion_Fs`, `Wear_Bs`, `Wear_Fs`,`OriginalSeen`,`Material`,`Material_Uncertainty`) VALUES ('99940001',0,0,0,0,1,3,1);

#r07_1
DELETE FROM `afergk`.`coinfind` WHERE `id`  BETWEEN '999301000' and '999301900';
DELETE FROM `afergk`.`coinreferences` WHERE `id_coin`  BETWEEN '999301000' and '999301900';
INSERT INTO `afergk`.`coinfind` (`id`, `Material`,`Status`) VALUES ('999301001', 3,21);
INSERT INTO `afergk`.`coinreferences` (`id_coin`,`ReferenceName`,`ReferenceWork`) values ('999301001','999301',14);
INSERT INTO `afergk`.`coinfind` (`id`, `Material`,`Status`) VALUES ('999301002', 3,21);
INSERT INTO `afergk`.`coinreferences` (`id_coin`,`ReferenceName`,`ReferenceWork`) values ('999301002','999301',14);
INSERT INTO `afergk`.`coinfind` (`id`, `Material`,`Status`) VALUES ('999301003', 4,21);
INSERT INTO `afergk`.`coinreferences` (`id_coin`,`ReferenceName`,`ReferenceWork`) values ('999301003','999301',14);

#r07_2
DELETE FROM `afergk`.`coinfind` WHERE `id`  BETWEEN '999302000' and '999302900';
DELETE FROM `afergk`.`coinreferences` WHERE `id_coin`  BETWEEN '999302000' and '999302900';
INSERT INTO `afergk`.`coinfind` (`id`, `Period`) VALUES ('999302001', 7);
INSERT INTO `afergk`.`coinreferences` (`id_coin`,`ReferenceName`,`ReferenceWork`) values ('999302001','999302',14);
INSERT INTO `afergk`.`coinfind` (`id`, `Period`) VALUES ('999302002', 7);
INSERT INTO `afergk`.`coinreferences` (`id_coin`,`ReferenceName`,`ReferenceWork`) values ('999302002','999302',14);
INSERT INTO `afergk`.`coinfind` (`id`, `Period`) VALUES ('999302003', 4);
INSERT INTO `afergk`.`coinreferences` (`id_coin`,`ReferenceName`,`ReferenceWork`) values ('999302003','999302',14);

#r07_3
DELETE FROM `afergk`.`coinfind` WHERE `id`  BETWEEN '999303000' and '999303900';
DELETE FROM `afergk`.`coinreferences` WHERE `id_coin`  BETWEEN '999303000' and '999303900';
INSERT INTO `afergk`.`coinfind` (`id`, `Mint`) VALUES ('999303001', 7);
INSERT INTO `afergk`.`coinreferences` (`id_coin`,`ReferenceName`,`ReferenceWork`) values ('999303001','999303',14);
INSERT INTO `afergk`.`coinfind` (`id`, `Mint`) VALUES ('999303002', 7);
INSERT INTO `afergk`.`coinreferences` (`id_coin`,`ReferenceName`,`ReferenceWork`) values ('999303002','999303',14);
INSERT INTO `afergk`.`coinfind` (`id`, `Mint`) VALUES ('999303003', 4);
INSERT INTO `afergk`.`coinreferences` (`id_coin`,`ReferenceName`,`ReferenceWork`) values ('999303003','999303',14);

#r07_4
DELETE FROM `afergk`.`coinfind` WHERE `id`  BETWEEN '999304000' and '999304900';
DELETE FROM `afergk`.`coinreferences` WHERE `id_coin`  BETWEEN '999304000' and '999304900';
INSERT INTO `afergk`.`coinfind` (`id`, `Denomination`) VALUES ('999304001', 7);
INSERT INTO `afergk`.`coinreferences` (`id_coin`,`ReferenceName`,`ReferenceWork`) values ('999304001','999304',14);
INSERT INTO `afergk`.`coinfind` (`id`, `Denomination`) VALUES ('999304002', 7);
INSERT INTO `afergk`.`coinreferences` (`id_coin`,`ReferenceName`,`ReferenceWork`) values ('999304002','999304',14);
INSERT INTO `afergk`.`coinfind` (`id`, `Denomination`) VALUES ('999304003', 4);
INSERT INTO `afergk`.`coinreferences` (`id_coin`,`ReferenceName`,`ReferenceWork`) values ('999304003','999304',14);

#r07_5
DELETE FROM `afergk`.`coinfind` WHERE `id`  BETWEEN '999305000' and '999305900';
DELETE FROM `afergk`.`coinreferences` WHERE `id_coin`  BETWEEN '999305000' and '999305900';
INSERT INTO `afergk`.`coinfind` (`id`, `CoinImage`) VALUES ('999305001', 7);
INSERT INTO `afergk`.`coinreferences` (`id_coin`,`ReferenceName`,`ReferenceWork`) values ('999305001','999305',14);
INSERT INTO `afergk`.`coinfind` (`id`, `CoinImage`) VALUES ('999305002', 7);
INSERT INTO `afergk`.`coinreferences` (`id_coin`,`ReferenceName`,`ReferenceWork`) values ('999305002','999305',14);
INSERT INTO `afergk`.`coinfind` (`id`, `CoinImage`) VALUES ('999305003', 4);
INSERT INTO `afergk`.`coinreferences` (`id_coin`,`ReferenceName`,`ReferenceWork`) values ('999305003','999305',14);

#r07_6
DELETE FROM `afergk`.`coinfind` WHERE `id`  BETWEEN '999306000' and '999306900';
DELETE FROM `afergk`.`coinreferences` WHERE `id_coin`  BETWEEN '999306000' and '999306900';
INSERT INTO `afergk`.`coinfind` (`id`, `DateFrom`,`DateTo`) VALUES ('999306001', 10,20);
INSERT INTO `afergk`.`coinreferences` (`id_coin`,`ReferenceName`,`ReferenceWork`) values ('999306001','999306',14);
INSERT INTO `afergk`.`coinfind` (`id`, `DateFrom`,`DateTo`) VALUES ('999306002', 10,20);
INSERT INTO `afergk`.`coinreferences` (`id_coin`,`ReferenceName`,`ReferenceWork`) values ('999306002','999306',14);
INSERT INTO `afergk`.`coinfind` (`id`, `DateFrom`,`DateTo`) VALUES ('999306003', 20,30);
INSERT INTO `afergk`.`coinreferences` (`id_coin`,`ReferenceName`,`ReferenceWork`) values ('999306003','999306',14);

#r07_7
DELETE FROM `afergk`.`coinfind` WHERE `id`  BETWEEN '999307000' and '999307900';
DELETE FROM `afergk`.`coinreferences` WHERE `id_coin`  BETWEEN '999307000' and '999307900';
DELETE FROM `afergk`.`culture` WHERE `id`  BETWEEN '999307000' and '999307900';
INSERT INTO `afergk`.`culture` (`id`,`Name`) values ('999307001','TESTDATA');
INSERT INTO `afergk`.`coinfind` (`id`, `Culture`) VALUES ('999307001', 999307001);
INSERT INTO `afergk`.`coinreferences` (`id_coin`,`ReferenceName`,`ReferenceWork`) values ('999307001','999307',14);
INSERT INTO `afergk`.`coinfind` (`id`, `Culture`) VALUES ('999307002', 999307001);
INSERT INTO `afergk`.`coinreferences` (`id_coin`,`ReferenceName`,`ReferenceWork`) values ('999307002','999307',14);
INSERT INTO `afergk`.`culture` (`id`,`Name`) values ('999307002','TESTDATA');
INSERT INTO `afergk`.`coinfind` (`id`, `Culture`) VALUES ('999307003', 999307002);
INSERT INTO `afergk`.`coinreferences` (`id_coin`,`ReferenceName`,`ReferenceWork`) values ('999307003','999307',14);

#r07_8
DELETE FROM `afergk`.`coinfind` WHERE `id`  BETWEEN '999308000' and '999308900';
DELETE FROM `afergk`.`coinreferences` WHERE `id_coin`  BETWEEN '999308000' and '999308900';
DELETE FROM `afergk`.`cointype` WHERE `id`  BETWEEN '999308000' and '999308900';
INSERT INTO `afergk`.`cointype` (`id`,`Name`) values ('999308001','TESTDATA');
INSERT INTO `afergk`.`coinfind` (`id`, `CoinType`) VALUES ('999308001', 999308001);
INSERT INTO `afergk`.`coinreferences` (`id_coin`,`ReferenceName`,`ReferenceWork`) values ('999308001','999308',14);
INSERT INTO `afergk`.`coinfind` (`id`, `CoinType`) VALUES ('999308002', 999308001);
INSERT INTO `afergk`.`coinreferences` (`id_coin`,`ReferenceName`,`ReferenceWork`) values ('999308002','999308',14);
INSERT INTO `afergk`.`cointype` (`id`,`Name`) values ('999308002','TESTDATA');
INSERT INTO `afergk`.`coinfind` (`id`, `CoinType`) VALUES ('999308003', 999308002);
INSERT INTO `afergk`.`coinreferences` (`id_coin`,`ReferenceName`,`ReferenceWork`) values ('999308003','999308',14);

#r07_9
DELETE FROM `afergk`.`coinfind` WHERE `id`  BETWEEN '999309000' and '999309900';
DELETE FROM `afergk`.`coinreferences` WHERE `id_coin`  BETWEEN '999309000' and '999309900';
DELETE FROM `afergk`.`functions` WHERE `id`  BETWEEN '999309000' and '999309900';
INSERT INTO `afergk`.`functions` (`id`,`Name`) values ('999309001','TESTDATA');
INSERT INTO `afgergk`.`coinfind` (`id`, `Function`) VALUES ('999309001', 999309001);
INSERT INTO `afergk`.`coinreferences` (`id_coin`,`ReferenceName`,`ReferenceWork`) values ('999309001','999309',14);
INSERT INTO `afergk`.`coinfind` (`id`, `Function`) VALUES ('999309002', 999309001);
INSERT INTO `afergk`.`coinreferences` (`id_coin`,`ReferenceName`,`ReferenceWork`) values ('999309002','999309',14);
INSERT INTO `afergk`.`functions` (`id`,`Name`) values ('999309002','TESTDATA');
INSERT INTO `afergk`.`coinfind` (`id`, `Function`) VALUES ('999309003', 999309002);
INSERT INTO `afergk`.`coinreferences` (`id_coin`,`ReferenceName`,`ReferenceWork`) values ('999309003','999309',14);

#r07_10
DELETE FROM `afergk`.`coinfind` WHERE `id`  BETWEEN '999310000' and '999310900';
DELETE FROM `afergk`.`coinreferences` WHERE `id_coin`  BETWEEN '999310000' and '999310900';
DELETE FROM `afergk`.`coinissuers` WHERE `id_coin`  BETWEEN '999310000' and '999310900';
DELETE FROM `afergk`.`issuer` WHERE `id`  BETWEEN '999310000' and '999310900';
INSERT INTO `afergk`.`issuer` (`id`,`Name`) values ('999310001','TESTDATA');
INSERT INTO `afergk`.`coinfind` (`id`,`Material`) VALUES ('999310001',7);
INSERT INTO `afergk`.`coinissuers` (`id_coin`,`id_issuer`,`id_uncertainty`) VALUES ('999310001','999310001',1);
INSERT INTO `afergk`.`coinreferences` (`id_coin`,`ReferenceName`,`ReferenceWork`) values ('999310001','999310',14);
INSERT INTO `afergk`.`coinfind` (`id`,`Material`) VALUES ('999310002',7);
INSERT INTO `afergk`.`coinissuers` (`id_coin`,`id_issuer`,`id_uncertainty`) VALUES ('999310002','999310001',1);
INSERT INTO `afergk`.`coinreferences` (`id_coin`,`ReferenceName`,`ReferenceWork`) values ('999310002','999310',14);
INSERT INTO `afergk`.`issuer` (`id`,`Name`) values ('999310002','TESTDATA');
INSERT INTO `afergk`.`coinfind` (`id`,`Material`) VALUES ('999310003',7);
INSERT INTO `afergk`.`coinissuers` (`id_coin`,`id_issuer`,`id_uncertainty`) VALUES ('999310003','999310002',1);
INSERT INTO `afergk`.`coinreferences` (`id_coin`,`ReferenceName`,`ReferenceWork`) values ('999310003','999310',14);

#r08
DELETE FROM `afergk`.`coinfind` WHERE `id`  BETWEEN '99920000' and '99929000';
DELETE FROM `afergk`.`coinreferences` WHERE `id_coin`  BETWEEN '99920000' and '99929000';
INSERT INTO `afergk`.`coinfind` (`id`,`DateWritten`,`Countermark`,`YearFound`) VALUES ('99920001','?',1,1);
INSERT INTO `afergk`.`coinreferences` (`id_coin`,`ReferenceName`,`ReferenceWork`) values ('99920001','9992',14);

#r09
DELETE FROM `afergk`.`findspot` WHERE `id`  BETWEEN '99910000' and '99919000';
DELETE FROM `afergk`.`place` WHERE `id`  BETWEEN '99910000' and '99919000';
INSERT INTO `afergk`.`place` (`id`, `Latitude`,`Longitude`,`AdminDivision`) values ('99910001',100,100,'TESTDATA');
INSERT INTO `afergk`.`findspot` (`id`,`Latitude`,`Longitude`,`place`,`AdminDivision`) values ('99910002',100,100,99910001,'TESTING THE DATA');

#r10
DELETE FROM `afergk`.`findspot` WHERE `id`  BETWEEN '99919001' and '99919100';
DELETE FROM `afergk`.`place` WHERE `id`  BETWEEN '99919001' and '99919100';
INSERT INTO `afergk`.`place` (`id`, `Latitude`,`Longitude`,`AdminDivision`) values ('99919001',300,500,'TESTDATA');
INSERT INTO `afergk`.`place` (`id`, `Latitude`,`Longitude`,`AdminDivision`) values ('99919003',200,100,'TESTDATA');
INSERT INTO `afergk`.`findspot` (`id`,`Latitude`,`Longitude`,`place`,`AdminDivision`) values ('99919002',100,100,99919001,'TESTING THE DATA');
