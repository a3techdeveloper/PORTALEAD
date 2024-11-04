<?php

include_once './config/loader.php';

$m           = new Material();
$materialDAO = new MaterialDAO();

$titulo            = filter_input(INPUT_POST, "titulo");
$id_curso          = filter_input(INPUT_POST, "id_curso");
$material          = $_FILES["material"]["name"];

$m->setTitulo($titulo);
$m->setId_curso($id_curso);

if (file_exists("material/$material")) {
    $cont = 1;
    while (file_exists("material/[$cont]$material")) {
        $cont++;
    }
    $material = "[" . $cont . "]" . $material;
    $m->setCaminho($material);
} else {
    $m->setCaminho($material);
}

if ($materialDAO->inserir($m)) {
    if (move_uploaded_file($_FILES["material"]["tmp_name"], "material/" . $material)) {
        print "<script>alert('Registro inserido!');location='admin.php?link=29'</script>";
    }
}
      