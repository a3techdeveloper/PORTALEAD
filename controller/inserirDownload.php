<?php

include_once './config/loader.php';

$d           = new Download();
$downloadDAO = new DownloadDAO();

$titulo_download   = filter_input(INPUT_POST, "titulo_download");
$id_aula           = filter_input(INPUT_POST, "id_aula");
$caminho           = $_FILES["caminho"]["name"];

$d->setTitulo_download($titulo_download);
$d->setId_aula($id_aula);

if (file_exists("download/$caminho")) {
    $cont = 1;
    while (file_exists("download/[$cont]$caminho")) {
        $cont++;
    }
    $caminho = "[" . $cont . "]" . $caminho;
    $d->setCaminho($caminho);
} else {
    $d->setCaminho($caminho);
}

if ($downloadDAO->inserir($d)) {
    if (move_uploaded_file($_FILES["caminho"]["tmp_name"], "download/" . $caminho)) {
        print "<script>alert('Download Realizado!');location='admin.php?link=47'</script>";
    }
}
      