<?php

include_once './config/loader.php';

$e            = new Exercicio();
$exercicioDAO = new ExercicioDAO();

$exercicio   = $_FILES["exercicio"]["name"];
$id_aula     = filter_input(INPUT_POST, "id_aula");

$e->setId_aula($id_aula);

if (file_exists("exercicio/$exercicio")) {
    $cont = 1;
    while (file_exists("exercicio/[$cont]$exercicio")) {
        $cont++;
    }
    $exercicio = "[" . $cont . "]" . $exercicio;
    $e->setExercicio($exercicio);
} else {
    $e->setExercicio($exercicio);
}

if ($exercicioDAO->inserir($e)) {
    if (move_uploaded_file($_FILES["exercicio"]["tmp_name"], "exercicio/" . $exercicio)) {
        print "<script>alert('Exercício Inserido!');location='admin.php?link=53'</script>";
    }
}
      