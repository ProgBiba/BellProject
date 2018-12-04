INSERT INTO Citizenship
    (id, code, name)
VALUES
    (1,7,'RUS');

INSERT INTO Citizenship
    (id, code, name)
VALUES
    (2,666,'Hell');

INSERT INTO Citizenship
    (id, code, name)
VALUES
    (3,777,'Heaven');

INSERT INTO Document
    (id, code, name)
VALUES
    (1,21,'Паспорт гражданина');

INSERT INTO Document
    (id, code, name)
VALUES
    (2,66,'Удостоверение демонюки');
INSERT INTO Document
    (id, code, name)
VALUES
    (3,77,'Удостоверение ангела');

INSERT INTO Organization
    (id, name, full_name,
    inn, kpp, address,
    phone, is_active)
VALUES
    (1, 'ООО Капуста', 'Открыток Общество Обозревателей капусты',
    '123456789','21436587','Moscow Kremlin',
    9992223311,1);

INSERT INTO Organization
    (id, name, full_name,
    inn, kpp, address,
    phone, is_active)
VALUES
    (2, 'Ангирский совет', 'Ангирский совет пяти архангелов',
    '777777777','777777777','Небеса, Кристальная арка',
    5555555555,1);

INSERT INTO Organization
    (id, name, full_name,
    inn, kpp, address,
    phone, is_active)
VALUES
    (3, 'Воплощения зла', 'Великие воплощения зла',
    '666666666','666666666','Пылающий Ад, обитель великих воплощений зла',
    6666666666,1);

INSERT INTO Office
    (id, org_id, name,
    phone, is_active, address)
VALUES
    (1, 1, 'Офис капуст в Москве',
    7899878521, 1, 'Moscow Kremlin');

INSERT INTO Office
    (id, org_id, name,
    phone, is_active, address)
VALUES
    (2, 1, 'Офис капуст в Казани',
    9569878521, 1, 'Kazan Kremlin');

INSERT INTO Office
    (id, org_id, name,
    phone, is_active, address)
VALUES
    (3, 2, 'Главный совет архангелов',
    7777777777, 1, 'Небеса, Кристальная арка');

INSERT INTO Office
    (id, org_id, name,
    phone, is_active, address)
VALUES
    (4, 3, 'Самое пекло Ада',
    6666666666, 1, 'Пылающий Ад, обитель великих воплощений зла');

INSERT INTO Employee
    (id, office_id, first_name, position)
VALUES
    (1,1,'Капуст','Главный капустовед-инженер');

INSERT INTO Employee
    (id, office_id, first_name, position)
VALUES
    (2,1,'Качан','Главный технолог капуст');

INSERT INTO Employee
    (id, office_id, first_name, position)
VALUES
    (3,1,'Корень','Медиа менеджер');

INSERT INTO Employee
    (id, office_id, first_name, position)
VALUES
    (4,2,'Белокочан','Трейдер');

INSERT INTO Employee
    (id, office_id, first_name, position)
VALUES
    (5,2,'Краснокочан','СММ-щик');

INSERT INTO Employee
    (id, office_id, first_name, position)
VALUES
    (6,2,'Мультикочан','Все_могуще_рабочий');

INSERT INTO Employee
    (id, office_id, first_name, position)
VALUES
    (7,3,'Империй','Архангел Доблести');

INSERT INTO Employee
    (id, office_id, first_name, position)
VALUES
    (8,3,'Тираэль','Архангел Мудрости и Справедливости');

INSERT INTO Employee
    (id, office_id, first_name, position)
VALUES
    (9,3,'Ауриэль','Архангел Надежды');

INSERT INTO Employee
    (id, office_id, first_name, position)
VALUES
    (10,3,'Итераэль','Архангел Судьбы');

INSERT INTO Employee
    (id, office_id, first_name, position)
VALUES
    (11,3,'Малтаэль','Архангел Смерти');

INSERT INTO Employee
    (id, office_id, first_name, position)
VALUES
    (12,4,'Мефисто','Повелитель Ненависти');

INSERT INTO Employee
    (id, office_id, first_name, position)
VALUES
    (13,4,'Баал','Повелитель Разрушения');

INSERT INTO Employee
    (id, office_id, first_name, position, doc_code, citizenship_code)
VALUES
    (14,4,'Диабло','Повелитель Ужаса',66,777);
