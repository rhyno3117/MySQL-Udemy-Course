-- Single insert (switching order of name and age)
INSERT INTO cats (age, name) 
VALUES 
  (2, 'Beth');


-- Multiple Insert:
INSERT INTO cats (name, age) 
VALUES 
  ('Meatball', 5), 
  ('Turkey', 1), 
  ('Potato Face', 15);