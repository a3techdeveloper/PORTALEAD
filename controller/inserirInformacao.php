<?php

include_once './config/loader.php';

$i = new Informacao();
$informacaoDAO = new InformacaoDAO();

$titulo = filter_input(INPUT_POST, "titulo");
$informacao = filter_input(INPUT_POST, "informacao");
$id_curso = filter_input(INPUT_POST, "id_curso");

$i->setTitulo($titulo);
$i->setInformacao($informacao);
$i->setId_curso($id_curso);

if ($informacaoDAO->inserir($i)) {
    print "<script>alert('Informação Inserida!');location='admin.php?link=75'</script>";
}
