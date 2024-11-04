<?php

include_once './config/loader.php';

$curso    = new Curso();
$cursoDAO = new CursoDAO();

$id_curso       = filter_input(INPUT_POST, "id");
$imagem_antiga  = filter_input(INPUT_POST, "imagem");

$imagem = $_FILES["imagem_nova"]["name"];

$curso->setId_curso($id_curso);

if (file_exists("img/curso/$imagem")) {
    $cont = 1;
    while (file_exists("img/curso/[$cont]$imagem")) {
        $cont++;
    }
    $imagem = "[" . $cont . "]" . $imagem;
    $curso->setImagem($imagem);
} else {
    $curso->setImagem($imagem);
}

if ($cursoDAO->editar_imagem($curso)) {
    if (move_uploaded_file($_FILES["imagem_nova"]["tmp_name"], "img/curso/".$imagem)) {
        unlink("img/curso/".$imagem_antiga);
        print "<script>alert('Imagem editada!');location='admin.php?link=22'</script>";
    }
}