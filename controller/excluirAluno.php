<?php

include_once './config/loader.php';

$al    = new Aluno();
$alunoDAO = new AlunoDAO();

$id_aluno  = filter_input(INPUT_GET, "id");
$foto      = filter_input(INPUT_GET, "foto");
$al->setId_aluno($id_aluno);

if($alunoDAO->excluir($al)){
    unlink("img/aluno/".$foto);
    print "<script>alert('Registro excluido!');location='admin.php?link=61&pag=".$_SESSION['pag']."'</script>";
}