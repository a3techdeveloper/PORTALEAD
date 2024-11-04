<?php

include_once './config/loader.php';

$c           = new Conteudo();
$conteudoDAO = new ConteudoDAO();

$id_conteudo = filter_input(INPUT_GET, "id");
$conteudo    = filter_input(INPUT_GET, "conteudo");
$c->setId_conteudo($id_conteudo);

if($conteudoDAO->excluir($c)){
    unlink("conteudo/".$conteudo);
    print "<script>alert('Registro excluido!');location='admin.php?link=89&pag=".$_SESSION['pag']."'</script>";
}