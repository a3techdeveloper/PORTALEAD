<?php

include_once '../model/RespostaForum.class.php';
include_once '../model/RespostaForumDAO.class.php';

$r = new RespostaForum();
$respDAO = new RespostaForumDAO();

$id_curso = filter_input(INPUT_GET, "id_curso");
$id_resposta = filter_input(INPUT_GET, "id_resp");

$r->setId_resposta($id_resposta);

if ($respDAO->excluirResposta($r)) {
    print "<script>alert('Resposta excluída!');location='../forum.php?id_curso=$id_curso'</script>";
}