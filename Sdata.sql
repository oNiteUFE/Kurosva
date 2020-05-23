//створюємо базу данних
CREATE DATABASE system_for_studio;
// обираємо базу данних, щоб працювати з нею
USE system_for_studio; 

//створюємо таблицю студії

CREATE TABLE Studio (              
    id_Studio INT AUTO_INCREMENT PRIMARY KEY,  //авто-ідентифікатор, первинний ключ
      name VARCHAR(100),
     adress VARCHAR(30)
     website VARCHAR(30));    //тип для задавання тексту
 

//заповнюємо таблицю

INSERT INTO studio VALUES(NULL, 'Desing Studio', 'www.desing studio.com', 'Lviv,Shevshenka 88');   

//створюємо таблицю Services

CREATE TABLE Services (
id_Services INT AUTO_INCREMENT PRIMARY KEY,
cost INT,     //задаємо ціні тип INT, щоб можна було записувати числові дані
type VARCHAR(30),
id_Studios INT,
FOREIGN KEY ( id_Studios ) REFERENCES Studio ( id_Studios ));     //зовнішній ключ, необхідний для того, щоб зв'язати дві таблиці 

//заповнюємо таблицю

INSERT INTO Services VALUES(NULL, 3000, 'design', 1);
INSERT INTO Services VALUES(NULL, 11000, 'technical drawings', 1);
INSERT INTO Services VALUES(NULL, 5000, 'complete set', 1);
INSERT INTO Services VALUES(NULL, 10000, 'author supervision', 1);
INSERT INTO Services VALUES(NULL, 40000, 'construction management', 1);

//створюємо таблицю Workers

CREATE TABLE Workers (
 id_Workers INT AUTO_INCREMENT PRIMARY KEY,
 position VARCHAR(30),
 work experience VARCHAR(60),
 id_Services INT,
FOREIGN KEY ( id_Services ) REFERENCES Services ( id_Services ));

//заповнюємо таблицю

INSERT INTO Workers VALUES(NULL, 'designer', 'years', 1);
INSERT INTO Workers VALUES(NULL, 'architect', 'two years', 2);
INSERT INTO Workers VALUES(NULL, 'architect', 'three years', 3);
INSERT INTO Workers VALUES(NULL, 'designer', 'six years', 4);
INSERT INTO Workers VALUES(NULL, 'architect', 'years', 5);

//створюємо таблицю Contacts

CREATE TABLE Contacts (
id_Contacts INT AUTO_INCREMENT PRIMARY KEY,
phone_number INT,
email VARCHAR(30),
id_Studios INT,
FOREIGN KEY ( id_Studios ) REFERENCES Studio ( id_Studios ));

//заповнюємо таблицю

INSERT INTO Contacts VALUES(NULL, 0997658120, 'desing_studio@gmail.com', 1);









