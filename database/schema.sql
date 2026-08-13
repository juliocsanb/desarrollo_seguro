PRAGMA foreign_keys=ON;

CREATE TABLE students (
  student_id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  email TEXT NOT NULL
);

CREATE TABLE courses (
  course_id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  capacity INTEGER NOT NULL CHECK(CAPACITY BETWEEN 1 AND 30)
);

CREATE TABLE enrollments (
  id INTEGER PRIMARY KEY,
  student_id INTEGER,
  course_id INTEGER,
  FOREIGN KEY (student_id) REFERENCES students(student_id),
  FOREIGN KEY (course_id) REFERENCES courses(course_id),
  UNIQUE (student_id,course_id)
);

CREATE TABLE audit_log(
   actor TEXT NOT NULL,
   ocurred_at TEXT NOT NULL,
   action TEXT NOT NULL,
   entity_type TEXT NOT NULL,
   entity_id INTEGER NOT NULL,
   details TEXT NOT NULL
);
-- Este esquema funciona, pero deliberadamente no expresa todavia
-- las invariantes que el grupo descubrira durante el taller.
