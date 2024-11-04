<?php
session_start();

include_once '../model/Aluno.class.php';
include_once '../model/AlunoDAO.class.php';

$a = new Aluno();
$alunoDAO = new AlunoDAO();

$email = filter_input(INPUT_POST, "email");
$senha = filter_input(INPUT_POST, "senha");

$a->setEmail($email);
$a->setSenha($senha);

if ($alunoDAO->logar($a)) {
    print "<script>location='../index.php'</script>";
}else{
    print "<script>alert('Erro ao logar, tente novamente');location='../login.php'</script>";
}