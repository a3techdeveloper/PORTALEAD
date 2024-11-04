<?php

include_once './config/loader.php';

$tutorCurso = new TutorCurso();
$tutorCursoDAO = new TutorCursoDAO();

$id_tutor = filter_input(INPUT_POST, "id_tutor");
$id_curso = filter_input(INPUT_POST, "id_curso");

$tutorCurso->setId_tutor($id_tutor);
$tutorCurso->setId_curso($id_curso);

if ($tutorCursoDAO->inserir($tutorCurso)) {
    print "<script>alert('Registro inserido!');location='admin.php?link=18'</script>";
}       