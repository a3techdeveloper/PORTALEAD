<?php

include_once './config/loader.php';

$c = new Conteudo();
$conteudoDAO = new ConteudoDAO();

$titulo      = filter_input(INPUT_POST, "titulo");
$conteudo    = $_FILES["conteudo"]["name"];
$id_curso    = filter_input(INPUT_POST, "id_curso");

$id_conteudo     = filter_input(INPUT_POST, "id");
$conteudo_antigo = filter_input(INPUT_POST, "conteudo_antigo");

$c->setTitulo($titulo);
$c->setCaminho($conteudo);
$c->setId_curso($id_curso);
$c->setId_conteudo($id_conteudo);

if (!empty($conteudo)) {
    if ($conteudoDAO->editar($c)) {
        unlink("conteudo/$conteudo_antigo");
        if (move_uploaded_file($_FILES["conteudo"]["tmp_name"], "conteudo/" . $conteudo)) {
            print "<script>alert('Conteúdo editado!');location='admin.php?link=89&pag=".$_SESSION['pag']."'</script>";
        }
    }
}else{
    print "<script>alert('Nenhum Conteúdo foi Selecionado!');location='admin.php?link=89&pag=".$_SESSION['pag']."'</script>";
}
