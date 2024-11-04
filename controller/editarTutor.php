<?php

include_once './config/loader.php';

$tutor    = new Tutor();
$tutorDAO = new TutorDAO();

$nome_tutor          = filter_input(INPUT_POST, "nome");
$sobrenome_tutor     = filter_input(INPUT_POST, "sobrenome");
$email_tutor         = filter_input(INPUT_POST, "email");
$telefone_tutor      = filter_input(INPUT_POST, "telefone");
$id_tutor            = filter_input(INPUT_POST, "id");

$tutor->setNome_tutor($nome_tutor);
$tutor->setSobrenome_tutor($sobrenome_tutor);
$tutor->setEmail_tutor($email_tutor);
$tutor->setTelefone_tutor($telefone_tutor);
$tutor->setId_tutor($id_tutor);

if($tutorDAO->editar($tutor)){
    print "<script>alert('Registro editado!');location='admin.php?link=11&pag=".$_SESSION['pag']."'</script>";
}