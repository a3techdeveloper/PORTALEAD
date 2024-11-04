<?php
session_start();

include_once '../model/PreMatricula.class.php';
include_once '../model/PreMatriculaDAO.class.php';

$prem = new PreMatricula();
$premDAO = new PreMatriculaDAO();

$nome  = filter_input(INPUT_POST, "nome");
$email = filter_input(INPUT_POST, "email");
$senha = filter_input(INPUT_POST, "senha");

$prem->setNome($nome);
$prem->setEmail($email);
$prem->setSenha($senha);

if($premDAO->inserir($prem)){
    print "<script>alert('Registro Inserido');</script>";
    if($premDAO->logar($prem)){
        print "<script>alert('A sua PréMatrícula foi Realizada com Sucesso');location='../index.php'</script>";
    }
}