drop database if exists progetto;
create database progetto;
use progetto;

create table Tipologia(
    id_t integer unsigned primary key auto_increment,
    nome varchar(30) not null
)engine innodb;

create table Funzione(
    id_f integer unsigned primary key auto_increment,
    consegna varchar(255) not null,
    id_t integer unsigned not null,
    foreign key(id_t) references Tipologia(id_t)
)engine innodb;


insert into Tipologia(nome) values ("Funzioni Razionali Intere");
insert into Tipologia(nome) values ("Funzioni Razionali Fratte");
insert into Tipologia(nome) values ("Funzioni Irrazionali");
insert into Tipologia(nome) values ("Funzioni Esponenziali");
insert into Tipologia(nome) values ("Funzioni Logaritmiche");
insert into Tipologia(nome) values ("Funzioni Goniometriche");

insert into Funzione(consegna, id_t) values ("3*x^3-2*x^2", 1);
insert into Funzione(consegna, id_t) values ("4*x^3+2*x^2", 1);
insert into Funzione(consegna, id_t) values ("x^3+3*x", 1);
insert into Funzione(consegna, id_t) values ("9*x^3-4*x", 1);
insert into Funzione(consegna, id_t) values ("x*(x-1)^2", 1);
insert into Funzione(consegna, id_t) values ("4*x^3-x^2-14*x", 1);
insert into Funzione(consegna, id_t) values ("x^3-5*x^2+7*x-2", 1);
insert into Funzione(consegna, id_t) values ("(x+1)*(2*x-3)*(3-x)", 1);
insert into Funzione(consegna, id_t) values ("(x+1)*(x+2)*(x-3)", 1);
insert into Funzione(consegna, id_t) values ("x^4-2*x^2-8", 1);
insert into Funzione(consegna, id_t) values ("x^4-(5/4)*x^2+(1/4)", 1);
insert into Funzione(consegna, id_t) values ("(1/2)*x^3-x^2-2*x+4", 1);
insert into Funzione(consegna, id_t) values ("x^3+x^2-3", 1);
insert into Funzione(consegna, id_t) values ("x^3-12*x+8", 1);
insert into Funzione(consegna, id_t) values ("25*x^3*(x-1)^2", 1);
insert into Funzione(consegna, id_t) values ("-2*x^3+3*x-1", 1);
insert into Funzione(consegna, id_t) values ("x^5-x^4-x^2+x", 1);
insert into Funzione(consegna, id_t) values ("x^2-2*x-3", 1);
insert into Funzione(consegna, id_t) values ("x^2-x-4", 1);
insert into Funzione(consegna, id_t) values ("x^2+5", 1);


insert into Funzione(consegna, id_t) values ("(2*x-1)/(x-3)", 2);
insert into Funzione(consegna, id_t) values ("(1-3*x)/(x-1)", 2);
insert into Funzione(consegna, id_t) values ("(x-1)/(x^2-2*x+2)", 2);
insert into Funzione(consegna, id_t) values ("(2*x)/(x^2-1)", 2);
insert into Funzione(consegna, id_t) values ("1/(x^2-4*x+4)", 2);
insert into Funzione(consegna, id_t) values ("1/(2*x^2+3*x-5)", 2);
insert into Funzione(consegna, id_t) values ("(x^2+x+1)/(x^2+x-2)", 2);
insert into Funzione(consegna, id_t) values ("(2*x^2+4*x-11)/(x^2+2*x-8)", 2);
insert into Funzione(consegna, id_t) values ("x^2/(x-1)^2", 2);
insert into Funzione(consegna, id_t) values ("(x-1)/x^3", 2);
insert into Funzione(consegna, id_t) values ("(3-x)/(x-2)^3", 2);
insert into Funzione(consegna, id_t) values ("(2*x-1)/(2*x^3)", 2);
insert into Funzione(consegna, id_t) values ("x^2/(x+1)", 2);
insert into Funzione(consegna, id_t) values ("(x^2-4)/(x+1)", 2);
insert into Funzione(consegna, id_t) values ("(x^2+1)/(x-1)", 2);
insert into Funzione(consegna, id_t) values ("x+4/x", 2);
insert into Funzione(consegna, id_t) values ("(x^2-3*x-1)/(x^2+5)", 2);
insert into Funzione(consegna, id_t) values ("(3-x^2)/(x-2)^2", 2);
insert into Funzione(consegna, id_t) values ("(x^4-4)/x^3", 2);
insert into Funzione(consegna, id_t) values ("(1+3*x^4)/x^3", 2);


insert into Funzione(consegna, id_t) values ("x/sqrt(x-2)", 3);
insert into Funzione(consegna, id_t) values ("sqrt(x^2-9)", 3);
insert into Funzione(consegna, id_t) values ("1/sqrt(4-x^2)", 3);
insert into Funzione(consegna, id_t) values ("sqrt((x-1)/(x+1))", 3);
insert into Funzione(consegna, id_t) values ("sqrt((1-x)/(1+x))", 3);
insert into Funzione(consegna, id_t) values ("1/sqrt(1-x)-1/sqrt(1+x)", 3);
insert into Funzione(consegna, id_t) values ("2*sqrt(x)-x", 3);
insert into Funzione(consegna, id_t) values ("sqrt(8-x^3)", 3);
insert into Funzione(consegna, id_t) values ("sqrt(x-1)", 3);
insert into Funzione(consegna, id_t) values ("(x-1)/sqrt(x^2+1)", 3);
insert into Funzione(consegna, id_t) values ("x/(sqrt(x)-1)", 3);
insert into Funzione(consegna, id_t) values ("(x^2-6*x-18)/sqrt(2*x-3)", 3);
insert into Funzione(consegna, id_t) values ("(x+2)/sqrt(x^2-x)", 3);
insert into Funzione(consegna, id_t) values ("sqrt(x-2)", 3);
insert into Funzione(consegna, id_t) values ("sqrt(x)+2", 3);
insert into Funzione(consegna, id_t) values ("sqrt(x^2-x)/x", 3);
insert into Funzione(consegna, id_t) values ("sqrt(x^2)/x", 3);
insert into Funzione(consegna, id_t) values ("sqrt(x^2+5*x+6)", 3);
insert into Funzione(consegna, id_t) values ("sqrt(x^2+1)", 3);
insert into Funzione(consegna, id_t) values ("sqrt((x-2)/(x+5))", 3);


insert into Funzione(consegna, id_t) values ("4^(-x)", 4);
insert into Funzione(consegna, id_t) values ("3^(x-1)", 4);
insert into Funzione(consegna, id_t) values ("(1/4)^x", 4);
insert into Funzione(consegna, id_t) values ("1/(2*3^x)+4^(1/x)", 4);
insert into Funzione(consegna, id_t) values ("4/(3^x)", 4);
insert into Funzione(consegna, id_t) values ("sqrt(4^x)", 4);
insert into Funzione(consegna, id_t) values ("sqrt(-3^x-x)", 4);
insert into Funzione(consegna, id_t) values ("sqrt(2^x)-sqrt(x+2)", 4);
insert into Funzione(consegna, id_t) values ("x/(3^x-3)", 4);
insert into Funzione(consegna, id_t) values ("(x-1)/(4^x-2^x)", 4);
insert into Funzione(consegna, id_t) values ("sqrt(4^x+2^x-6)", 4);
insert into Funzione(consegna, id_t) values ("sqrt(36-6^(3*x+1))", 4);
insert into Funzione(consegna, id_t) values ("(4-3^x)/(9^x-3)", 4);
insert into Funzione(consegna, id_t) values ("2^(x+1)-3", 4);
insert into Funzione(consegna, id_t) values ("(-3)^-x+2", 4);
insert into Funzione(consegna, id_t) values ("sqrt(2^(x+5))", 4);
insert into Funzione(consegna, id_t) values ("sqrt(x^2-4*x)+sqrt(2^x-4)", 4);
insert into Funzione(consegna, id_t) values ("(1+x)/(16-8^x)", 4);
insert into Funzione(consegna, id_t) values ("5/(6^x+5)", 4);
insert into Funzione(consegna, id_t) values ("sqrt(9^x-3)", 4);


insert into Funzione(consegna, id_t) values ("log(x-1)", 5);
insert into Funzione(consegna, id_t) values ("log(x-2)-3", 5);
insert into Funzione(consegna, id_t) values ("log(-x)", 5);
insert into Funzione(consegna, id_t) values ("2+log(x)", 5);
insert into Funzione(consegna, id_t) values ("log((x^2-1)/(x^2+4))", 5);
insert into Funzione(consegna, id_t) values ("log(x-8) + log(2*x+7)", 5);
insert into Funzione(consegna, id_t) values ("log((x-3)/(x+2))", 5);
insert into Funzione(consegna, id_t) values ("log(x+1)", 5);
insert into Funzione(consegna, id_t) values ("log(x^2-1)", 5);
insert into Funzione(consegna, id_t) values ("log(x^2-4*x)+4", 5);
insert into Funzione(consegna, id_t) values ("log(4^x-2)+log(2^x-1)", 5);
insert into Funzione(consegna, id_t) values ("log((x-3)/(1-x^2))", 5);
insert into Funzione(consegna, id_t) values ("log(3*x^2+2*x-1)", 5);
insert into Funzione(consegna, id_t) values ("log(x/(sqrt(x^2)))", 5);
insert into Funzione(consegna, id_t) values ("log((2*x^2+3*x-2)/(x^2-2*x+3))", 5);
insert into Funzione(consegna, id_t) values ("log((x^2-4*x)/(1-x))", 5);
insert into Funzione(consegna, id_t) values ("log(x)+log(4-x^2)", 5);
insert into Funzione(consegna, id_t) values ("(log(x^3+3*x^2))/(x+1)", 5);
insert into Funzione(consegna, id_t) values ("log(x/(x+5))+log(x^2-9)", 5);
insert into Funzione(consegna, id_t) values ("log(x+5)+log(6-x)+2", 5);


insert into Funzione(consegna, id_t) values ("1/(sin(4*x))", 6);
insert into Funzione(consegna, id_t) values ("(4*cos(x))/sin(2*x)-3", 6);
insert into Funzione(consegna, id_t) values ("sin(x+1)", 6);
insert into Funzione(consegna, id_t) values ("sin(x)+1", 6);
insert into Funzione(consegna, id_t) values ("2*sin(x)+sqrt(3)", 6);
insert into Funzione(consegna, id_t) values ("sin(x/2)-sqrt(2)", 6);
insert into Funzione(consegna, id_t) values ("cos(2*x+3)", 6);
insert into Funzione(consegna, id_t) values ("cos(x^2+3)", 6);
insert into Funzione(consegna, id_t) values ("cos(x^3+5*x-6)", 6);
insert into Funzione(consegna, id_t) values ("cos(x^2+9+4*x)", 6);
insert into Funzione(consegna, id_t) values ("tan(2*x-3)", 6);
insert into Funzione(consegna, id_t) values ("tan(2*x^2+5*x-6)", 6);
insert into Funzione(consegna, id_t) values ("tan(3*x^2+2*x)+sqrt(3*x)", 6);
insert into Funzione(consegna, id_t) values ("cot(x^2-3*x+12)", 6);
insert into Funzione(consegna, id_t) values ("cot(x-3)", 6);
insert into Funzione(consegna, id_t) values ("cot(9*x^3+5*x^2+3)", 6);
insert into Funzione(consegna, id_t) values ("sin((x^2+2)/(x-3))", 6);
insert into Funzione(consegna, id_t) values ("sin(5*x^2-3*x+6)", 6);
insert into Funzione(consegna, id_t) values ("cos(6*x^3+2*x-1)", 6);
insert into Funzione(consegna, id_t) values ("tan(x+3+6*x+x^2)", 6);










