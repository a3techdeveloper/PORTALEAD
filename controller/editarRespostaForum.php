<?php

include_once '../model/RespostaForum.class.php';
include_once '../model/RespostaForumDAO.class.php';

$r = new RespostaForum();
$respDAO = new RespostaForumDAO();

$id_curso = filter_input(INPUT_POST, "id_curso");
$id_resposta = filter_input(INPUT_POST, "id_resposta");
$resposta = filter_input(INPUT_POST, "resposta");

$r->setId_resposta($id_resposta);
$r->setResposta($resposta);

if ($respDAO->editarResposta($r)) {
    print "<script>alert('Resposta editada!');location='../forum.php?id_curso=$id_curso'</script>";
}