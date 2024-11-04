<?php

include_once './config/loader.php';

$a       = new Aula();
$aulaDAO = new AulaDAO();

$id_aula       = filter_input(INPUT_POST, "id");
$numero_aula   = filter_input(INPUT_POST, "numero");
$titulo_aula   = filter_input(INPUT_POST, "titulo");
$duracao_aula  = filter_input(INPUT_POST, "duracao");
$embed_youtube = filter_input(INPUT_POST, "embedY");
$descricao     = filter_input(INPUT_POST, "descricao");
$id_curso      = filter_input(INPUT_POST, "id_curso");

$a->setNumero_aula($numero_aula);
$a->setTitulo_aula($titulo_aula);
$a->setDuracao_aula($duracao_aula);
$a->setEmbed_youtube($embed_youtube);
$a->setDescricao($descricao);
$a->setId_curso($id_curso);
$a->setId_aula($id_aula);

if($aulaDAO->editar($a)){
    print "<script>alert('Registro editado!');location='admin.php?link=41&pag=".$_SESSION['pag']."'</script>";
}