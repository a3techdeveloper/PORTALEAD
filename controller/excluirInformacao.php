<?php

include_once './config/loader.php';

$i            = new Informacao();
$informacaoDAO = new InformacaoDAO();

$id_informacao = filter_input(INPUT_GET, "id");
$i->setId_informacao($id_informacao);

if($informacaoDAO->excluir($i)){
    print "<script>alert('Informação excluida!');location='admin.php?link=77&pag=".$_SESSION['pag']."'</script>";
}