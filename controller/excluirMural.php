<?php

include_once './config/loader.php';

$m            = new Mural();
$muralDAO = new MuralDAO();

$id_mural = filter_input(INPUT_GET, "id");
$m->setId_mural($id_mural);

if($muralDAO->excluir($m)){
    print "<script>alert('Mural excluido!');location='admin.php?link=70&pag=".$_SESSION['pag']."'</script>";
}
