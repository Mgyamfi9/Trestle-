create table Students(
	student_id integer primary key,
    first_name varchar(50),
    last_name varchar(50),
    age integer,
    gender char,
    class_id integer,
    subject_id integer,
    foreign key(class_id) references Classes(class_id),
    foreign key(subject_id) references Subjects(subject_id)
);

create table Classes(
	class_id integer primary key,
    class_name varchar(50),
    teacher_id integer,
    foreign key(teacher_id) references Teachers(teacher_id)
);

create table Teachers(
	teacher_id integer primary key,
    first_name varchar(50),
    last_name varchar(50),
    subject_id integer,
    foreign key(subject_id) references Subjects(subject_id)
);

create table Subjects(
	subject_id integer primary key,
    subject_name varchar(50)
);

create table Enrollments(
	enrollment_id integer primary key,
    student_id integer,
    subject_id integer,
    class_id integer,
    foreign key(student_id) references Students(student_id),
    foreign key(subject_id) references Subjects(subject_id),
    foreign key(class_id) references Classes(class_id),
    enrollment_date date
);