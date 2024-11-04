<?php

include_once './config/loader.php';

$e            = new Exercicio();
$exercicioDAO = new ExercicioDAO();

$id_exercicio = filter_input(INPUT_GET, "id");
$exercicio    = filter_input(INPUT_GET, "exercicio");
$e->setId_exercicio($id_exercicio);

if($exercicioDAO->excluir($e)){
    unlink("exercicio/".$exercicio);
    print "<script>alert('Exercício excluido!');location='admin.php?link=55&pag=".$_SESSION['pag']."'</script>";
}