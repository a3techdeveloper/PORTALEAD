<?php

include_once './config/loader.php';

$c           = new Conteudo();
$conteudoDAO = new ConteudoDAO();

$titulo            = filter_input(INPUT_POST, "titulo");
$id_curso          = filter_input(INPUT_POST, "id_curso");
$conteudo          = $_FILES["conteudo"]["name"];

$c->setTitulo($titulo);
$c->setId_curso($id_curso);

if (file_exists("conteudo/$conteudo")) {
    $cont = 1;
    while (file_exists("conteudo/[$cont]$conteudo")) {
        $cont++;
    }
    $conteudo = "[" . $cont . "]" . $conteudo;
    $c->setCaminho($conteudo);
} else {
    $c->setCaminho($conteudo);
}

if ($conteudoDAO->inserir($c)) {
    if (move_uploaded_file($_FILES["conteudo"]["tmp_name"], "conteudo/" . $conteudo)) {
        print "<script>alert('Registro inserido!');location='admin.php?link=87'</script>";
    }
}
      