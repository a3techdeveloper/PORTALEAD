<?php

include_once './config/loader.php';

$aula    = new Aula();
$aulaDAO = new AulaDAO();

$id_aula  = filter_input(INPUT_GET, "id");
$aula->setId_aula($id_aula);

if($aulaDAO->excluir($aula)){
    print "<script>alert('Registro excluido!');location='admin.php?link=41&pag=".$_SESSION['pag']."'</script>";
}