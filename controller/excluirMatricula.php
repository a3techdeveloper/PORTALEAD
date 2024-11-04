<?php
session_start();

include_once '../model/Matricula.class.php';
include_once '../model/MatriculaDAO.class.php';

$m = new Matricula();
$matriculaDAO = new MatriculaDAO();

$id_matricula = filter_input(INPUT_GET, "id_matricula");
$m->setId_matricula($id_matricula);

if($matriculaDAO->excluir($m)){
    print "<script>alert('Matricula cancelada!');location='../painel.php'</script>";
}