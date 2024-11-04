<?php

include_once '../model/Resposta.class.php';
include_once '../model/RespostaDAO.class.php';

$r = new Resposta();
$respDAO = new RespostaDAO();

$id_curso = filter_input(INPUT_POST, "id_curso");
$id_resposta = filter_input(INPUT_POST, "id_resposta");
$resposta = filter_input(INPUT_POST, "resposta");

$r->setId_resposta($id_resposta);
$r->setResposta($resposta);

if ($respDAO->editarResposta($r)) {
    print "<script>alert('Resposta editada!');location='../aulas.php?id_curso=$id_curso'</script>";
}