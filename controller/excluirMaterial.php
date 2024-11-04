<?php

include_once './config/loader.php';

$m           = new Material();
$materialDAO = new MaterialDAO();

$id_material = filter_input(INPUT_GET, "id");
$material    = filter_input(INPUT_GET, "material");
$m->setId_material($id_material);

if($materialDAO->excluir($m)){
    unlink("material/".$material);
    print "<script>alert('Registro excluido!');location='admin.php?link=31&pag=".$_SESSION['pag']."'</script>";
}