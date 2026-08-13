
CREATE TABLE students (
  student_id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  email TEXT NOT NULL unique
);

PRAGMA FOREIGN_KEYS=ON;


CREATE TABLE courses (
  course_id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  capacity INTEGER NOT NULL CHECK (CAPACITY BETWEEN 1 AND 30)
);

CREATE TABLE enrollments (
  enrollment_id INTEGER PRIMARY KEY,
  student_id INTEGER NOT NULL ,
  course_id INTEGER NOT NULL,
  foreign key(student_id) references students(student_id),
  foreign key(course_id) references courses(course_id),
  unique (student_id,course_id)
);

CREATE TABLE audit_log(
  actor text not null,
  occurred_at text not null,
  action text not null,
  entity_type text not null,
  entity_id integer not null,
  details text not null
)
-- Este esquema funciona, pero deliberadamente no expresa todavia
-- las invariantes que el grupo descubrira durante el taller.
