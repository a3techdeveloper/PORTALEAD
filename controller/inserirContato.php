<?php

include_once '../model/Contato.class.php';
include_once '../model/ContatoDAO.class.php';

$c = new Contato();
$cDAO = new ContatoDAO();

$nome = filter_input(INPUT_POST, "nome");
$email = filter_input(INPUT_POST, "email");
$fone = filter_input(INPUT_POST, "fone");
$mensagem = filter_input(INPUT_POST, "mensagem");

$c->setNome($nome);
$c->setEmail($email);
$c->setFone($fone);
$c->setMensagem($mensagem);

if($cDAO->inserir($c)){
    print "<script>alert('Mensagem Enviada com Sucesso');location='../contato.php'</script>";
}

