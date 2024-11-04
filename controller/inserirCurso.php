<?php

include_once './model/Curso.class.php';
include_once './model/CursoDAO.class.php';

$c    = new Curso();
$cursoDAO = new cursoDAO();

$curso      = filter_input(INPUT_POST, "curso");
$duracao    = filter_input(INPUT_POST, "duracao");
$descricao  = filter_input(INPUT_POST, "descricao");
$embed      = filter_input(INPUT_POST, "embed");
$preco      = filter_input(INPUT_POST, "preco");
$imagem     = $_FILES["imagem"]["name"];

$c->setCurso($curso);
$c->setDuracao($duracao);
$c->setDescricao($descricao);
$c->setEmbed($embed);
$c->setPreco($preco);

if (file_exists("img/curso/$imagem")) {
    $cont = 1;
    while (file_exists("img/curso/[$cont]$imagem")) {
        $cont++;
    }
    $imagem = "[" . $cont . "]" . $imagem;
    $c->setImagem($imagem);
} else {
    $c->setImagem($imagem);
}

if ($cursoDAO->inserir($c)) {
    if (move_uploaded_file($_FILES["imagem"]["tmp_name"], "img/curso/" . $imagem)) {
        print "<script>alert('Registro inserido!');location='admin.php?link=20'</script>";
    }
}       