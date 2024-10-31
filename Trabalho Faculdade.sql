create database db_faculdade;
 
use db_faculdade;

create table tbl_alunos (
    id_aluno INT auto_increment primary key,
    nome VARCHAR(100) NOT NULL,
    CPF CHAR(11) UNIQUE NOT NULL,
    data_nascimento DATE,
    curso_id INT,
    foreign key (curso_id) references tbl_cursos(id_curso)
 );

create table tbl_professores (
    id_professor INT auto_increment primary key,
    nome VARCHAR(100) not null,
    CPF CHAR(11) unique not null,
    carga_horaria INT
 );

create table tbl_cursos (
    id_curso INT auto_increment primary key,
    nome VARCHAR(100) not null,
    carga_horaria_total INT
 );

create table tbl_materias (
    id_materia INT auto_increment primary key,
    nome VARCHAR(100) not null,
    carga_horaria INT,
    curso_id INT,
    foreign key (curso_id) references tbl_cursos(id_curso)
 );

create table tbl_turmas (
    id_turma INT auto_increment primary key,
    curso_id INT,
    periodo VARCHAR(10),
    foreign key (curso_id) references tbl_cursos(id_curso)
 );

create table tbl_notas (
    id_nota INT auto_increment primary key,
    id_aluno INT,
    id_materia INT,
    nota DECIMAL(3, 2),
    foreign key (id_aluno) references tbl_alunos(id_aluno),
    foreign key (id_materia) references tbl_materias(id_materia)
 );