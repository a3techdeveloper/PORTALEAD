<?php

include_once './config/loader.php';

$adm    = new Administrador();
$admDAO = new AdministradorDAO();

$ativo_administrador  = filter_input(INPUT_POST, "ativo");
$id_administrador     = filter_input(INPUT_POST, "id");

$adm->setAtivo_administrador($ativo_administrador);
$adm->setId_administrador($id_administrador);

if($admDAO->editar_status($adm)){
    print "<script>alert('Status editado!');location='admin.php?link=2&pag=".$_SESSION['pag']."'</script>";
}