<?php

include_once './config/loader.php';

$tutor    = new Tutor();
$tutorDAO = new TutorDAO();

$id_tutor  = filter_input(INPUT_GET, "id");
$foto      = filter_input(INPUT_GET, "foto");
$tutor->setId_tutor($id_tutor);

if($tutorDAO->excluir($tutor)){
    unlink("img/tutor/".$foto);
    print "<script>alert('Registro excluido!');location='admin.php?link=11&pag=".$_SESSION['pag']."'</script>";
}