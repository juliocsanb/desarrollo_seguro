INSERT INTO students (id, name, email) VALUES
  (1, 'Ana Torres', 'ana@universidad.mx'),
  (2, 'Luis Ramos', 'luis@universidad.mx');

INSERT INTO courses (id, name, capacity) VALUES
  (1, 'Desarrollo Seguro', 25),
  (2, 'Bases de Datos', 20);

INSERT INTO enrollments (id, student_id, course_id) VALUES
  (1, 1, 1);
