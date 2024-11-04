<?php

include_once './config/loader.php';

$adm    = new Administrador();
$admDAO = new AdministradorDAO();

$nome      = filter_input(INPUT_POST, "nome");
$sobrenome = filter_input(INPUT_POST, "sobrenome");
$email     = filter_input(INPUT_POST, "email");
$senha     = filter_input(INPUT_POST, "senha");

$adm->setNome($nome);
$adm->setSobrenome($sobrenome);
$adm->setEmail($email);
$adm->setSenha($senha);

if($admDAO->inserir($adm)){
    print "<script>alert('Registro inserido!');location='admin.php?link=1'</script>";
}