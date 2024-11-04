<?php

include_once './config/loader.php';

$al = new Aluno();
$alunoDAO = new AlunoDAO();

$cpf = filter_input(INPUT_POST, "cpf");
$aluno = filter_input(INPUT_POST, "aluno");
$profissao = filter_input(INPUT_POST, "profissao");
$telefone = filter_input(INPUT_POST, "telefone");
$data_nasc = filter_input(INPUT_POST, "data_nasc");
$endereco = filter_input(INPUT_POST, "endereco");
$cidade = filter_input(INPUT_POST, "cidade");
$bairro = filter_input(INPUT_POST, "bairro");
$cep = filter_input(INPUT_POST, "cep");
$email = filter_input(INPUT_POST, "email");
$senha = filter_input(INPUT_POST, "senha");
$ativo_aluno = filter_input(INPUT_POST, "ativo_aluno");
$id_uf = filter_input(INPUT_POST, "id_uf");
$id_aluno = filter_input(INPUT_POST, "id");

$al->setCpf($cpf);
$al->setAluno($aluno);
$al->setProfissao($profissao);
$al->setTelefone($telefone);
$al->setData_nasc($data_nasc);
$al->setEndereco($endereco);
$al->setCidade($cidade);
$al->setBairro($bairro);
$al->setCep($cep);
$al->setEmail($email);
$al->setSenha($senha);
$al->setAtivo_aluno($ativo_aluno);
$al->setId_uf($id_uf);
$al->setId_aluno($id_aluno);

if ($alunoDAO->editar($al)) {
    print "<script>alert('Registro editado!');location='admin.php?link=61&pag=".$_SESSION['pag']."'</script>";
}       