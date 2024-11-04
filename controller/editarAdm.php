<?php

include_once './config/loader.php';

$adm    = new Administrador();
$admDAO = new AdministradorDAO();

$nome              = filter_input(INPUT_POST, "nome");
$sobrenome         = filter_input(INPUT_POST, "sobrenome");
$email             = filter_input(INPUT_POST, "email");
$senha             = filter_input(INPUT_POST, "senha");
$id_administrador  = filter_input(INPUT_POST, "id");

$adm->setNome($nome);
$adm->setSobrenome($sobrenome);
$adm->setEmail($email);
$adm->setSenha($senha);
$adm->setId_administrador($id_administrador);

if($admDAO->editar($adm)){
    print "<script>alert('Registro editado!');location='admin.php?link=2&pag=".$_SESSION['pag']."'</script>";
}