<?php

include_once '../model/Resposta.class.php';
include_once '../model/RespostaDAO.class.php';

$r = new Resposta();
$respDAO = new RespostaDAO();

$id_curso = filter_input(INPUT_GET, "id_curso");
$id_resposta = filter_input(INPUT_GET, "id_resp");

$r->setId_resposta($id_resposta);

if ($respDAO->excluirResposta($r)) {
    print "<script>alert('Resposta excluída!');location='../aulas.php?id_curso=$id_curso'</script>";
}