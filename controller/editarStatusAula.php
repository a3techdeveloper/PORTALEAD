<?php

include_once './config/loader.php';

$aula    = new Aula();
$aulaDAO = new AulaDAO();

$ativo_aula  = filter_input(INPUT_POST, "ativo");
$id_aula     = filter_input(INPUT_POST, "id");

$aula->setAtivo_aula($ativo_aula);
$aula->setId_aula($id_aula);

if($aulaDAO->editar_status($aula)){
    print "<script>alert('Status editado!');location='admin.php?link=41&pag=".$_SESSION['pag']."'</script>";
}