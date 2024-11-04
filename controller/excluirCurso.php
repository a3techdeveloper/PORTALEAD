<?php

include_once './config/loader.php';

$curso = new Curso();
$cursoDAO = new CursoDAO();

$id_curso = filter_input(INPUT_GET, "id");
$imagem = filter_input(INPUT_GET, "imagem");
$curso->setId_curso($id_curso);

$material = new Material();
$materialDAO = new MaterialDAO();

foreach ($materialDAO->listarTudo() as $mat) {
    if ($curso->getId_curso() == $mat->id_curso) {
        $id_material = $mat->id_material;
    }
}

$material->setId_material($id_material);
$m = $materialDAO->listar($id_material);
$caminho = $m->caminho;


if ($cursoDAO->excluir($curso)) {
    unlink("img/curso/" . $imagem);
    if ($materialDAO->excluir($material)) {
        unlink("material/$caminho");
        print "<script>alert('Registro excluido!');location='admin.php?link=22&pag=".$_SESSION['pag']."'</script>";
    }
}
