drop table Departement;
drop table Promo ;
drop table Creneaux ;
drop table Etudiant; 
drop table Prof ;
drop table admin ;
drop table matiere ;
drop table participe; 
drop table Enseigne; 
drop table Salle;






create table Departement
(  numDep		integer(3)    NOT NULL,
   NomDep		varchar(20)    not null,
  
   CONSTRAINT pkey_DEP PRIMARY KEY (numdep)
  );

create table Promo
(  numPromo		integer(3)    NOT NULL,
   numDep		integer(3)    NOT NULL,
   NomPromo		varchar(20)    not null,
  
   CONSTRAINT pkey_PRO PRIMARY KEY (numPromo, numdep)
  );




create table Etudiant
(  numetud		integer(3)       NOT NULL,
   Nom			varchar(20)     NOT NULL,
   Prenom		varchar(20)     NOT null,
   Promo		varchar(20)     NOT NULL,
   ID			varchar(20)     NOT NULL,
   MDP			varchar(20)     NOT NULL,
   CONSTRAINT pkey_ETUD PRIMARY KEY (numetud)
  );


create table Prof
(  numprof		integer(3)       NOT NULL,
   Nom			varchar(20)     NOT NULL,
   Prenom		varchar(20)     NOT null,
   ID			varchar(20)     NOT NULL,
   MDP			varchar(20)     NOT NULL,
   CONSTRAINT pkey_PROF PRIMARY KEY (numprof)
  );

 

create table admin
(  numadmi		integer(3)       NOT NULL,
   Nom			varchar(20)     NOT NULL,
   Prenom		varchar(20)     NOT null,
   ID			varchar(20)     NOT NULL,
   MDP			varchar(20)     NOT NULL,
   CONSTRAINT pkey_admi PRIMARY KEY (numadmi)
  );


create table matiere
(  numMat		integer(3)       NOT NULL,
   NomMat		varchar(20)     NOT NULL,
   Type			varchar(20)     NOT null,
   CONSTRAINT pkey_MAT PRIMARY KEY (numMat)
  );


create table participe
(  numetud		integer(3)    NOT NULL,
   numMat		integer(3)    not null,
  
   CONSTRAINT pkey_PART PRIMARY KEY (numetud,numMat)
  );


create table Enseigne
(  numprof		integer(3)    NOT NULL,
   numMat		integer(3)    not null,
  
   CONSTRAINT pkey_ENS PRIMARY KEY (numprof,numMat)
  );

create table Salle
(  numSalle		integer(3)    NOT NULL,
   nomSalle		varchar(20)    not null,
  
   CONSTRAINT pkey_SALLE PRIMARY KEY (numSalle)
  );

create table Creneaux
(  numCre		integer(3)    NOT NULL,
   numPromo		integer(3)    NOT NULL,
   numMat		integer(3)    NOT NULL,
   numsalle		integer(3)    NOT NULL,
   Hdeb			integer(3)    NOT NULL,
   Hfin			integer(3)    NOT NULL,
   dates		Date    NOT NULL,
   
   CONSTRAINT pkey_CRE PRIMARY KEY (numCre, numpromo, nummat, numsalle)
  );

insert into Etudiant values (01, 'Bonizio','Cedric','RT1','e_cbonizio','yolo');
insert into Etudiant values (02, 'Tabary','Simon','RT1','e_stabary','yolo');

insert into Prof values (101,'Garcia','José','p_jgarcia','yolo');

insert into admin values (201,'Lamer','a_Patrick','plamer','yolo');



insert into matiere values (1,'M2102','TD');
insert into matiere values (2,'M2103','TP');

insert into Departement values (200,'RT');
insert into Departement values (201,'SGM');

insert into Promo values (300,200,'RT1');
insert into Promo values (301,201,'SGM1');

insert into participe values (01, 1);
insert into participe values (02, 2);

insert into Enseigne values (101, 1);
insert into Enseigne values (101, 2);

insert into Salle values (1,'TD4');

insert into Creneaux values (400, 300, 1, 500, 10, 11, 01/03/2017);
insert into Creneaux values (401, 301, 2, 501, 10, 11, 01/04/2017);

commit;












