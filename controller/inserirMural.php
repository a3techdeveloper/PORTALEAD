<?php

include_once './config/loader.php';

$m = new Mural();
$muralDAO = new MuralDAO();

$titulo = filter_input(INPUT_POST, "titulo");
$mensagem = filter_input(INPUT_POST, "mensagem");
$id_aula = filter_input(INPUT_POST, "id_aula");

$m->setTitulo($titulo);
$m->setMensagem($mensagem);
$m->setId_aula($id_aula);

if ($muralDAO->inserir($m)) {
    print "<script>alert('Mural Inserido!');location='admin.php?link=68'</script>";
}
      