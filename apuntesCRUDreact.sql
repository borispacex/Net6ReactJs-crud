CREATE DATABASE DBPRUEBAS;
USE DBPRUEBAS;

CREATE TABLE Contacto(
	idContacto int primary key identity(1,1),
	nombre varchar(50),
	correo varchar(50),
	telefono varchar(50)
);

-- Migramos el contexto y el modelo
Scaffold-DbContext "Server=DESKTOP-V3E5ICQ\MSSQLSERVERDEV; DataBase=DBPRUEBAS;Integrated Security=true" Microsoft.EntityFrameworkCore.SqlServer -OutPutDir Data\Models -ContextDir Data

-- Actualizamos nuestra version de REACTJS
npm install react@latest react-dom@latest
npm install bootstrap@5.1.3 reactstrap@9.1.1

INSERT INTO Contacto(nombre, correo, telefono)
VALUES ('codigo', 'codigo@test.com', '123123');