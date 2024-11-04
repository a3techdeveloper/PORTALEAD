<?php

include_once './config/loader.php';

$f = new Forum();
$forumDAO = new ForumDAO();

$titulo = filter_input(INPUT_POST, "titulo");
$mensagem = filter_input(INPUT_POST, "mensagem");
$ativo_forum = filter_input(INPUT_POST, "ativo_forum");

$id_forum = filter_input(INPUT_POST, "id");

$f->setTitulo($titulo);
$f->setMensagem($mensagem);
$f->setAtivo_forum($ativo_forum);
$f->setId_forum($id_forum);

if ($forumDAO->editar($f)) {
    print "<script>alert('Fórum editado!');location='admin.php?link=83&pag=".$_SESSION['pag']."'</script>";
}