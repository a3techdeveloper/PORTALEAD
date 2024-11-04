<?php

include_once './config/loader.php';

$d           = new Download();
$downloadDAO = new DownloadDAO();

$id_download = filter_input(INPUT_GET, "id");
$caminho    = filter_input(INPUT_GET, "download");
$d->setId_download($id_download);

if($downloadDAO->excluir($d)){
    unlink("download/".$caminho);
    print "<script>alert('Download excluido!');location='admin.php?link=49&pag=".$_SESSION['pag']."'</script>";
}