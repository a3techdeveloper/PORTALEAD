<?php

include_once './config/loader.php';

$tutor = new Tutor();
$tutorDAO = new TutorDAO();

$nome_tutor      = filter_input(INPUT_POST, "nome");
$sobrenome_tutor = filter_input(INPUT_POST, "sobrenome");
$email_tutor     = filter_input(INPUT_POST, "email");
$telefone_tutor  = filter_input(INPUT_POST, "telefone");
$foto            = $_FILES["foto"]["name"];

$tutor->setNome_tutor($nome_tutor);
$tutor->setSobrenome_tutor($sobrenome_tutor);
$tutor->setEmail_tutor($email_tutor);
$tutor->setTelefone_tutor($telefone_tutor);

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

if ($tutorDAO->inserir($tutor)) {
    if (move_uploaded_file($_FILES["foto"]["tmp_name"], "img/tutor/" . $foto)) {
        print "<script>alert('Registro inserido!');location='admin.php?link=10'</script>";
    }
}       