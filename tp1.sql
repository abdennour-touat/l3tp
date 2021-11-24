create user1 identified by user1;
create user2 identified by user2;


grant all privileges to user1

create table Employe (NumE int, nomE Char(20), fonction char(60), codeS char(3) )
create table Service (CodeS char(3) , nomS char(20), chef_S int);
create table Operation( codeOP char(5) , duree number(2), chef int, DateDeb Date, budget number(8,2), codeS char(3) );

insert into Employe values(1,"Touati", "Architecte","S02");
insert into Employe values(2, "Ouali", " technicien", "S02" );
insert into Employe values(3, "Abloul", "ingenieur d'etat en informatique", "S01");
insert into Employe values(4, "Horra", "Chef comptable", "S04");
insert into Employe values(5, "Mesbah", "Agent administratif", "S03");
insert into Employe values(6, "Aouiz", "ingenieur d'application en informatique", "S01");
insert into Employe values(7, "Laaouar", "comptable", "S04");
insert into Employe values(8 , "Fenniche", "technicien", "S06");
insert into Employe values(9, "Merabat", "ingenieur P.C.", "S06");
insert into Employe values(10, "Harkat", "Master en statistique","S05");
insert into Employe values(11,"Sayem" "ingenieur d'etat en informatique", "S01");
insert into Employe values(12, "Fekar", "administrateur principale", "S03");
insert into Employe values(13, "Abad", "ingenieur G.C.", "S06");
insert into Employe values(14, "Chaker", "comptable", "S05");


insert into Service values("S01", "informatique", 11);
insert into Service values("S03", "planification",12);
insert into Service values("S04", "comptabilite" 4 );
insert into Service values("S02", "construction", 1);
insert into Service values("S06", "technique", 13);
insert into Service values("S05", "statistique" 10);


insert into Operation values("OP001", 30, 13, "01/03/2018", 100000.00, "S06");
insert into Operation values("OP002", 30, 11, "10/09/2017", 270000.00, "S01");
insert into Operation values("OP003", 48, 1, "10/09/2016", 100000.00, "S02");
insert into Operation values("OP004", 48, 11, "01/10/2018", 1800000.00, "S01");
insert into Operation values("OP005", 30, 11, "10/09/2020", 200000.00, "S03");
insert into Operation values("OP006", 30, 11, "10/09/2020", 150000.00, "S01");
insert into Operation values("OP007", 36, 11, "10/09/2019", 300000.00, "S02");
insert into Operation values("OP008", 36, 11, "10/05/2018", 20000.00, "S01");
insert into Operation values("OP009", 36, 13, "10/01/2020",100000.00, "S06");


insert into Employe values (15, "Mohamedi", "agent administratif", "S06");

update Employe set fonction="comptable" where (Select NumE from Employe where NumE = "S06");

delete Employe where (Select * from Employe where nomE = "Mohamedi");





alter table Employe add nbo INTEGER;

alter table Employe drop nbo;


select * from Service ;













