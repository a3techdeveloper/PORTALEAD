<?php

include_once './config/loader.php';

$m = new Material();
$materialDAO = new MaterialDAO();

$titulo      = filter_input(INPUT_POST, "titulo");
$material    = $_FILES["material"]["name"];
$id_curso    = filter_input(INPUT_POST, "id_curso");

$id_material     = filter_input(INPUT_POST, "id");
$material_antigo = filter_input(INPUT_POST, "material_antigo");

$m->setTitulo($titulo);
$m->setCaminho($material);
$m->setId_curso($id_curso);
$m->setId_material($id_material);

if (!empty($material)) {
    if ($materialDAO->editar($m)) {
        unlink("material/$material_antigo");
        if (move_uploaded_file($_FILES["material"]["tmp_name"], "material/" . $material)) {
            print "<script>alert('Registro editado!');location='admin.php?link=31&pag=".$_SESSION['pag']."'</script>";
        }
    }
}else{
    print "<script>alert('Nenhum Material foi Selecionado!');location='admin.php?link=31&pag=".$_SESSION['pag']."'</script>";
}
