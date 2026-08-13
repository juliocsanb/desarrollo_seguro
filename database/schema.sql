

CREATE TABLE students (
  student_id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  email TEXT NOT NULL unique
);

CREATE TABLE courses (
  course_id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  capacity INTEGER not null check(capacity between 1 and 30 )
);

CREATE TABLE enrollments (
  enrollment_id INTEGER PRIMARY KEY,
  student_id INTEGER, 
  course_id INTEGER,
  foreign key (student_id) references students (student_id),
  foreign key (course_id) references courses (course_id),
  unique (student_id, course_id)
);

CREATE TABLE audit_log (
  actor TEXT NOT NULL,
  ocurred_at TEXT NOT NULL, 
  action TEXT NOT NULL,
  entity_type TEXT NOT NULL,
  entity_id TEXT NOT NULL, 
  details TEXT NOT NULL
);

-- Este esquema funciona, pero deliberadamente no expresa todavia
-- las invariantes que el grupo descubrira durante el taller.
