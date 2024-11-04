<?php

include_once './config/loader.php';

$i = new Informacao();
$informacaoDAO = new InformacaoDAO();

$titulo = filter_input(INPUT_POST, "titulo");
$informacao = filter_input(INPUT_POST, "informacao");
$id_curso = filter_input(INPUT_POST, "id_curso");
$id_informacao = filter_input(INPUT_POST, "id");

$i->setTitulo($titulo);
$i->setInformacao($informacao);
$i->setId_curso($id_curso);
$i->setId_informacao($id_informacao);

if ($informacaoDAO->editar($i)) {
    print "<script>alert('Informação Editada!');location='admin.php?link=77&pag=".$_SESSION['pag']."'</script>";
}
