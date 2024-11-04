<?php

include_once '../model/RespostaForum.class.php';
include_once '../model/RespostaForumDAO.class.php';

$r = new RespostaForum();
$respostaForumDAO = new RespostaForumDAO();

$id_aluno = filter_input(INPUT_POST, "id_aluno");
$resposta = filter_input(INPUT_POST, "resposta");
$id_forum = filter_input(INPUT_POST, "id_forum");
$id_curso = filter_input(INPUT_POST, "id_curso");

$r->setId_aluno($id_aluno);
$r->setResposta($resposta);
$r->setId_forum($id_forum);

if ($respostaForumDAO->inserir($r)) {
    print "<script>alert('Resposta Enviada!');location='../forum.php?id_curso=$id_curso'</script>";
}
     