<?php

include_once './config/loader.php';

$tutor    = new Tutor();
$tutorDAO = new TutorDAO();

$id_tutor     = filter_input(INPUT_POST, "id");
$foto_antiga  = filter_input(INPUT_POST, "foto");

$foto = $_FILES["foto_nova"]["name"];

$tutor->setId_tutor($id_tutor);

if (file_exists("img/tutor/$foto")) {
    $cont = 1;
    while (file_exists("img/tutor/[$cont]$foto")) {
        $cont++;
    }
    $foto = "[" . $cont . "]" . $foto;
    $tutor->setFoto($foto);
} else {
    $tutor->setFoto($foto);
}

if ($tutorDAO->editar_foto($tutor)) {
    if (move_uploaded_file($_FILES["foto_nova"]["tmp_name"], "img/tutor/".$foto)) {
        unlink("img/tutor/".$foto_antiga);
        print "<script>alert('Foto editada!');location='admin.php?link=11'</script>";
    }
}