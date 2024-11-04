<?php

include_once './config/loader.php';

$f = new Forum();
$forumDAO = new ForumDAO();

$titulo = filter_input(INPUT_POST, "titulo");
$mensagem = filter_input(INPUT_POST, "mensagem");

$f->setTitulo($titulo);
$f->setMensagem($mensagem);

if ($forumDAO->inserir($f)) {
    print "<script>alert('Fórum Inserido!');location='admin.php?link=81'</script>";
}
      