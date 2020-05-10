# S4-Project

Pour la partie login/register

create a new table in MySql DB :

CREATE TABLE User (
    ID int AUTO_INCREMENT  NOT NULL,
    NOM varchar(255),
    PRENOM varchar(255),
    EMAIL varchar(255),
    PASSWORD varchar(255), 
    PRIMARY KEY (ID)
);
