CREATE TABLE Cliente (
    id_Cliente INT PRIMARY KEY,
    Nombre VARCHAR(30) not null,
    Telefono VARCHAR(30),
    Direccion VARCHAR(30)
);

CREATE TABLE Pelicula (
    id_Pelicula INT PRIMARY KEY,
    Titulo VARCHAR(30) not null,
    Genero VARCHAR(30) not null,
    Director VARCHAR(30) not null
);
CREATE TABLE Version (
    Id_Pelicula INT,
    Id_Version INT,
    Formato VARCHAR(30) not null ,
    Precio INT not null
);
ALTER TABLE Version add(
CONSTRAINT pk_version1 PRIMARY KEY (Id_Pelicula, Id_Version),
CONSTRAINT fk_pelicula1 FOREIGN KEY (Id_Pelicula) REFERENCES Pelicula(Id_Pelicula)
);
CREATE TABLE Alquiler (
    Id_Alquiler INT,
    Id_Cliente INT,
    Id_Pelicula INT,
    Id_Versión INT,
    Fecha DATE
);
ALTER TABLE Alquiler add(
CONSTRAINT pk_alquiler1 PRIMARY KEY (Id_Alquiler, Id_Cliente, Id_Pelicula, Id_Versión),
CONSTRAINT fk_cliente1 FOREIGN KEY (Id_Cliente) REFERENCES Cliente(Id_Cliente),
CONSTRAINT fk_version2 FOREIGN KEY (Id_Pelicula, Id_Version) REFERENCES Versión(Id_Pelicula, Id_Version)
);
