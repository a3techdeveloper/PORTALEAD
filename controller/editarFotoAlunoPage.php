<?php

include_once '../model/Aluno.class.php';
include_once '../model/AlunoDAO.class.php';

$al    = new Aluno();
$alunoDAO = new AlunoDAO();

$id_aluno     = filter_input(INPUT_POST, "id");
$foto_antiga  = filter_input(INPUT_POST, "foto");

$foto = $_FILES["foto_nova"]["name"];

$al->setId_aluno($id_aluno);

if (file_exists("../img/aluno/$foto")) {
    $cont = 1;
    while (file_exists("../img/aluno/[$cont]$foto")) {
        $cont++;
    }
    $foto = "[" . $cont . "]" . $foto;
    $al->setFoto($foto);
} else {
    $al->setFoto($foto);
}

if ($alunoDAO->editar_foto($al)) {
    if (move_uploaded_file($_FILES["foto_nova"]["tmp_name"], "../img/aluno/".$foto)) {
        unlink("../img/aluno/".$foto_antiga);
        print "<script>alert('Foto editada!');location='../painel.php'</script>";
    }
}