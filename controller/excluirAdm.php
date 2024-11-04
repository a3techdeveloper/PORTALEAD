<?php

include_once './config/loader.php';

$adm    = new Administrador();
$admDAO = new AdministradorDAO();

$id_administrador  = filter_input(INPUT_GET, "id");
$adm->setId_administrador($id_administrador);

if($admDAO->excluir($adm)){
    print "<script>alert('Registro excluido!');location='admin.php?link=2&pag=".$_SESSION['pag']."'</script>";
}