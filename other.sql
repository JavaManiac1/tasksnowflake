INSERT INTO A (dimension_1,dimension_2,dimension_3, measure_1)
VALUES
('a','I','K',1),
('a','J','L',7),
('b','I','M',2),
('c','J','N',5);

SELECT * FROM A;

INSERT INTO B (dimension_1,dimension_2, measure_2)
VALUES
('a','J',7),
('b','J',10)
//('d','J',4);
DELETE FROM B;

INSERT INTO B (dimension_1,dimension_2)
VALUES

('d','J');

SELECT * FROM B;

insert into MAP (dimension_1,correct_dimension_2)
VALUES
('a','W'),
('a','W'),
('b','X'),
('c','Y'),
('b','X'),
('d','Z');
SELECT * FROM MAP;