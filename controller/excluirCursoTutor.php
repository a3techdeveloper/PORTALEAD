<?php

include_once './config/loader.php';

$tutorCurso      = new TutorCurso();
$tutorCursoDAO   = new TutorCursoDAO();

$id_tutor_curso  = filter_input(INPUT_GET, "id");

$tutorCurso->setId_tutor_curso($id_tutor_curso);

if($tutorCursoDAO->excluir($tutorCurso)){
    print "<script>alert('Registro excluido!');location='admin.php?link=37&pag=".$_SESSION['pag']."'</script>";
}