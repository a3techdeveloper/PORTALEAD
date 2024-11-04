<?php

include_once './config/loader.php';

$c    = new Curso();
$cursoDAO = new CursoDAO();

$curso       = filter_input(INPUT_POST, "curso");
$duracao     = filter_input(INPUT_POST, "duracao");
$descricao   = filter_input(INPUT_POST, "descricao");
$embed       = filter_input(INPUT_POST, "embed");
$preco       = filter_input(INPUT_POST, "preco");
$ativo_curso = filter_input(INPUT_POST, "status");
$id_curso    = filter_input(INPUT_POST, "id");

$c->setCurso($curso);
$c->setDuracao($duracao);
$c->setDescricao($descricao);
$c->setEmbed($embed);
$c->setPreco($preco);
$c->setAtivo_curso($ativo_curso);
$c->setId_curso($id_curso);

if($cursoDAO->editar($c)){
    print "<script>alert('Registro editado!');location='admin.php?link=22&pag=".$_SESSION['pag']."'</script>";
}