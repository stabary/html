drop table Departement;


create table Departement
(  numDep		integer(3)    NOT NULL,
   NomDep		varchar(20)    not null,
  
   CONSTRAINT pkey_DEP PRIMARY KEY (numdep)
  );


insert into Departement values (200,'RT');
insert into Departement values (201,'SGM');

commit;
