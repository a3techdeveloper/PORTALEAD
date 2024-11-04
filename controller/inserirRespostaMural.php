<?php

include_once '../model/Resposta.class.php';
include_once '../model/RespostaDAO.class.php';

$r = new Resposta();
$respostaDAO = new RespostaDAO();

$id_aluno = filter_input(INPUT_POST, "id_aluno");
$id_curso = filter_input(INPUT_POST, "id_curso");
$id_mural = filter_input(INPUT_POST, "id_mural");
$resposta = filter_input(INPUT_POST, "resposta");

$r->setId_aluno($id_aluno);
$r->setId_mural($id_mural);
$r->setResposta($resposta);

if ($respostaDAO->inserir($r)) {
    print "<script>alert('Resposta Enviada!');location='../aulas.php?id_curso=$id_curso'</script>";
}
     