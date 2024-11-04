<?php

include_once './config/loader.php';

$c    = new Contato();
$cDAO = new ContatoDAO();

$id_contato  = filter_input(INPUT_GET, "id");
$c->setId_contato($id_contato);

if($cDAO->excluir($c)){
    print "<script>alert('Registro excluido!');location='admin.php?link=74&pag=".$_SESSION['pag']."'</script>";
}