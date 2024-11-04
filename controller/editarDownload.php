<?php

include_once './config/loader.php';

$d = new Download();
$downloadDAO = new DownloadDAO();

$titulo_download = filter_input(INPUT_POST, "titulo_download");
$caminho         = $_FILES["caminho"]["name"];
$id_aula         = filter_input(INPUT_POST, "id_aula");

$id_download     = filter_input(INPUT_POST, "id");
$caminho_antigo  = filter_input(INPUT_POST, "caminho_antigo");

$d->setTitulo_download($titulo_download);
$d->setCaminho($caminho);
$d->setId_aula($id_aula);
$d->setId_download($id_download);

if (!empty($caminho)) {
    if ($downloadDAO->editar($d)) {
        unlink("download/$caminho_antigo");
        if (move_uploaded_file($_FILES["caminho"]["tmp_name"], "download/" . $caminho)) {
            print "<script>alert('Download editado!');location='admin.php?link=49&pag=".$_SESSION['pag']."'</script>";
        }
    }
}else{
    print "<script>alert('Nenhum Arquivo foi Selecionado!');location='admin.php?link=49&pag=".$_SESSION['pag']."'</script>";
}
