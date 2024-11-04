<?php

include_once '../model/Aluno.class.php';
include_once '../model/AlunoDAO.class.php';

$al = new Aluno();
$alunoDAO = new AlunoDAO();

$id = filter_input(INPUT_POST, "id");
$senha_recuperada = filter_input(INPUT_POST, "senha_recuperada");
$senha_atual = filter_input(INPUT_POST, "senha_atual");
$nova_senha = filter_input(INPUT_POST, "nova_senha");
$cf_nova_senha = filter_input(INPUT_POST, "cf_nova_senha");

$al->setSenha($nova_senha);
$al->setId_aluno($id);

if ($senha_recuperada == $senha_atual) {
    if($nova_senha == $cf_nova_senha){
        if($alunoDAO->editar_senha($al)){
            print "<script>alert('Nova Senha Criada Com Sucesso');location='../painel.php'</script>";
        }
    }else{
       print "<script>alert('A confirmação da nova senha não confere, tente novamente!');location='../painel.php'</script>"; 
    }
} else {
    print "<script>alert('A senha atual não confere, tente novamente!');location='../painel.php'</script>";
}
     