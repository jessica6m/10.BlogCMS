USE `CMS`;

INSERT INTO `Categories` (categoryName, categoryDescription)
Values
('Frisbee', 'Ultimate Frisbee Life');

INSERT INTO `User`(firstName, lastName, userName, userEmail, userPassword,bio, isAdministrator)
Values
('Jose', 'Sosa', 'jsosa', 'jys5219@gmail.com', 'Eulelife0320','studious individual', True);

INSERT INTO `BlogPost` (title, description, content, author, createdDate,publishDate, `expirationDate`, approved, idUser,idCategories)
VALUES 
('Day at a Cafe', 'Coding with Rich', 'blah blah blah', 'Jose and Rich', '2018-04-20 12:30:30', '2018-04-20 12:30:30', '2018-04-20 12:30:30',True,'1', '1'),
('Day at a Cafe', 'Coding with Rich', 'blah blah blah', 'Jose and Rich', '2018-04-20 12:30:30', '2018-04-20 12:30:30', '2018-04-20 12:30:30',True,'1', '1'),
('Day at a Cafe', 'Coding with Rich', 'blah blah blah', 'Jose and Rich', '2018-04-20 12:30:30', '2018-04-20 12:30:30', '2018-04-20 12:30:30',True,'1', '1'),
('Day at a Cafe', 'Coding with Rich', 'blah blah blah', 'Jose and Rich', '2018-04-20 12:30:30', '2018-04-20 12:30:30', '2018-04-20 12:30:30',True,'1', '1'),
('Day at a Cafe', 'Coding with Rich', 'blah blah blah', 'Jose and Rich', '2018-04-20 12:30:30', '2018-04-20 12:30:30', '2018-04-20 12:30:30',True,'1', '1'),
('Day at a Cafe', 'Coding with Rich', 'blah blah blah', 'Jose and Rich', '2018-04-20 12:30:30', '2018-04-20 12:30:30', '2018-04-20 12:30:30',True,'1', '1'),
('Day at a Cafe', 'Coding with Rich', 'blah blah blah', 'Jose and Rich', '2018-04-20 12:30:30', '2018-04-20 12:30:30', '2018-04-20 12:30:30',True,'1', '1'),
('Day at a Cafe', 'Coding with Rich', 'blah blah blah', 'Jose and Rich', '2018-04-20 12:30:30', '2018-04-20 12:30:30', '2018-04-20 12:30:30',True,'1', '1'),
('Day at a Cafe', 'Coding with Rich', 'blah blah blah', 'Jose and Rich', '2018-04-20 12:30:30', '2018-04-20 12:30:30', '2018-04-20 12:30:30',True,'1', '1'),
('Day at a Cafe', 'Coding with Rich', 'blah blah blah', 'Jose and Rich', '2018-04-20 12:30:30', '2018-04-20 12:30:30', '2018-04-20 12:30:30',True,'1', '1'),
('Day at a Cafe', 'Coding with Rich', 'blah blah blah', 'Jose and Rich', '2018-04-20 12:30:30', '2018-04-20 12:30:30', '2018-04-20 12:30:30',True,'1', '1'),
('Day at a Cafe', 'Coding with Rich', 'blah blah blah', 'Jose and Rich', '2018-04-20 12:30:30', '2018-04-20 12:30:30', '2018-04-20 12:30:30',True,'1', '1');