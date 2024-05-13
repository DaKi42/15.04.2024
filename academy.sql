USE Academy

INSERT INTO Departments(Financing, Name)
VALUES (10500,'Programming'),(0,'Design'),(10,'Admin')

INSERT INTO Faculties(Name, Dean) VALUES
('Engineering', 'Illia Bondar'),
('Computer Science', 'Alina Ivanova'),
('History', 'Michael Jackson')

INSERT INTO Groups(Name, Rating, Year) VALUES
('CompSci101', 3.5, 1),
('Engin204', 4.1, 2),
('Hist301', 2.0, 3),
('CompSci405', 4.0, 5)

INSERT INTO Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) VALUES
('1999-12-31', 0, 1, 'John', 'Professor', 300, 1200, 'Smith'),
('2001-05-16', 1, 0, 'Sarah', 'Assistant', 150, 700, 'Brown'),
('1998-07-20', 1, 0, 'James', 'Assistant', 200, 500, 'Davis'),
('2000-11-11', 0, 0, 'Olivia', 'Lecturer', 100, 950, 'Johnson'),
('1997-03-15', 0, 1, 'Emma', 'Professor', 400, 1300, 'Williams'),
('2002-08-23', 1, 0, 'Michael', 'Assistant', 250, 550, 'Miller'),
('1995-06-10', 0, 1, 'Daniel', 'Senior Lecturer', 350, 1100, 'Wilson'),
('2003-09-12', 0, 0, 'Sophia', 'Researcher', 180, 800, 'Martinez'),
('1994-12-01', 0, 1, 'Lucas', 'Professor', 500, 1500, 'Garcia'),
('1996-07-19', 1, 0, 'Charlotte', 'Assistant', 220, 620, 'Lee')

-- �������

-- ������� ������� ������, �� ����������� �� ���� � �������� �������.
SELECT * FROM Departments ORDER BY Name DESC 

-- ������� �������� ����� � �� ��������, ��������� � �������� �������� ��������� ����� 
-- �Group Name� � �Group Rating� ��������������.
SELECT Name AS 'Group Name', Rating AS 'Group Rating' FROM Groups

-- ������� ��� �������������� �� �������, ������� ������ �� ��������� � �������� � ������� ������ �� ���������
-- � �������� (����� ������ � ��������)
SELECT Surname as '�������',
       (Salary / Premium) * 100 AS '������� ������ �� ��������� � ��������',
       (Salary / (Salary + Premium)) * 100 AS '������� ������ �� ��������� � ��������'
FROM Teachers

-- ������� ������� ����������� � ���� ������ ���� � ��������� �������: �The dean of faculty [faculty] is [dean].�.
SELECT 'The dean of faculty ' + Name + ' is ' + Dean AS '������� �����������' FROM Faculties

-- ������� ������� ��������������, ������� �������� ������������ � ������ ������� ��������� 1050.
SELECT Surname FROM Teachers WHERE IsProfessor = 1 AND Salary > 1050

-- ������� �������� ������, ���� �������������� ������� ������ 11000 ��� ������ 25000.
SELECT Name FROM Departments WHERE Financing < 11000 OR Financing > 25000

-- ������� �������� ����������� ����� ���������� �Computer Science�
SELECT Name FROM Faculties WHERE Name != 'Computer Science'

-- ������� ������� � ��������� ��������������, ������� �� �������� ������������
SELECT Surname, Position FROM Teachers WHERE IsProfessor = 0

-- ������� �������, ���������, ������ � �������� �����������, � ������� �������� � ��������� �� 160 �� 550
SELECT Surname, Position, Salary, Premium FROM Teachers WHERE IsAssistant = 1 AND Premium BETWEEN 160 AND 550

-- ������� ������� � ������ �����������
SELECT Surname, Salary FROM Teachers WHERE IsAssistant = 1

-- ������� ������� � ��������� ��������������, ������� ���� ������� �� ������ �� 01.01.2000
SELECT Surname, Position FROM Teachers WHERE EmploymentDate < '01.01.2000'

-- ������� �������� ������, ������� � ���������� ������� ������������� �� ������� �Software Development�. 
-- ��������� ���� ������ ����� �������� �Name of Department�.
SELECT Name AS 'Name of Department' FROM Departments WHERE Name < 'Software Development' ORDER BY Name

-- ������� ������� �����������, ������� �������� (����� ������ � ��������) �� ����� 1200
SELECT Surname FROM Teachers WHERE IsAssistant = 1 AND Salary + Premium <= 1200

-- ������� �������� ����� 5-�� �����, ������� ������� � ��������� �� 2 �� 4.
SELECT Name FROM Groups WHERE Year = 5 AND Rating BETWEEN 2 AND 4

-- ������� ������� ����������� �� ������� ������ 550 ��� ��������� ������ 200.
SELECT Surname FROM Teachers WHERE IsAssistant = 1 AND (Salary < 550 OR Premium < 200)





