<?php
session_start();

include_once '../model/Administrador.class.php';
include_once '../model/AdministradorDAO.class.php';

$adm = new Administrador();
$admDAO = new AdministradorDAO();

$email = filter_input(INPUT_POST, "email");
$senha = filter_input(INPUT_POST, "senha");

$adm->setEmail($email);
$adm->setSenha($senha);

if ($admDAO->logar($adm)) {
    header("location:../admin.php");
} else {
    print "<script>alert('Erro ao logar, tente novamente');location='../login_adm.php'</script>";
}