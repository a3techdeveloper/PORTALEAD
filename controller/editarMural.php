<?php

include_once './config/loader.php';

$m = new Mural();
$muralDAO = new MuralDAO();

$titulo = filter_input(INPUT_POST, "titulo");
$mensagem = filter_input(INPUT_POST, "mensagem");
$id_aula = filter_input(INPUT_POST, "id_aula");

$id_mural = filter_input(INPUT_POST, "id");

$m->setTitulo($titulo);
$m->setMensagem($mensagem);
$m->setId_aula($id_aula);
$m->setId_mural($id_mural);

if ($muralDAO->editar($m)) {
    print "<script>alert('Mural editado!');location='admin.php?link=70&pag=".$_SESSION['pag']."'</script>";
}