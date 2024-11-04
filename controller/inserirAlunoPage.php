<?php
session_start();
include_once '../model/Aluno.class.php';
include_once '../model/AlunoDAO.class.php';

$al = new Aluno();
$alunoDAO = new AlunoDAO();

$cpf           = filter_input(INPUT_POST, "cpf");
$aluno         = filter_input(INPUT_POST, "aluno");
$profissao     = filter_input(INPUT_POST, "profissao");
$telefone      = filter_input(INPUT_POST, "telefone");
$data_nasc     = filter_input(INPUT_POST, "data_nasc");
$endereco      = filter_input(INPUT_POST, "endereco");
$cidade        = filter_input(INPUT_POST, "cidade");
$bairro        = filter_input(INPUT_POST, "bairro");
$cep           = filter_input(INPUT_POST, "cep");
$foto          = $_FILES["foto"]["name"];
$email         = filter_input(INPUT_POST, "email");
$senha         = filter_input(INPUT_POST, "senha");
$id_uf         = filter_input(INPUT_POST, "id_uf");

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
$al->setId_uf($id_uf);

if (file_exists("../img/aluno/$foto")) {
    $cont = 1;
    while (file_exists("../img/aluno/[$cont]$foto")) {
        $cont++;
    }
    $foto = "[" . $cont . "]" . $foto;
    $al->setFoto($foto);
} else {
    $al->setFoto($foto);
}

if ($alunoDAO->inserir($al)){
    if (move_uploaded_file($_FILES["foto"]["tmp_name"], "../img/aluno/" . $foto)) {
        print "<script>alert('Registro inserido!')</script>";
        if($alunoDAO->logar($al)){            
            print "<script>alert('Bem Vindo(a) a nossa plataforma EAD');location='../index.php'</script>";
        }
    }
}       