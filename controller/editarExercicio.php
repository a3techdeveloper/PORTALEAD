<?php

include_once './config/loader.php';

$e = new Exercicio();
$exercicioDAO = new ExercicioDAO();

$exercicio         = $_FILES["exercicio"]["name"];
$ativo_exercicio   = filter_input(INPUT_POST, "ativo_exercicio");
$id_aula           = filter_input(INPUT_POST, "id_aula");

$id_exercicio      = filter_input(INPUT_POST, "id");
$exercicio_antigo  = filter_input(INPUT_POST, "exercicio_antigo");

$e->setExercicio($exercicio);
$e->setAtivo_exercicio($ativo_exercicio);
$e->setId_aula($id_aula);
$e->setId_exercicio($id_exercicio);

if (!empty($exercicio)) {
    if ($exercicioDAO->editar($e)) {
        unlink("exercicio/$exercicio_antigo");
        if (move_uploaded_file($_FILES["exercicio"]["tmp_name"], "exercicio/" . $exercicio)) {
            print "<script>alert('Exercício editado!');location='admin.php?link=55&pag=".$_SESSION['pag']."'</script>";
        }
    }
}else{
    print "<script>alert('Nenhum Arquivo foi Selecionado!');location='admin.php?link=55&pag=".$_SESSION['pag']."'</script>";
}
