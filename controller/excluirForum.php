<?php

include_once './config/loader.php';

$f            = new Forum();
$forumDAO = new ForumDAO();

$id_forum = filter_input(INPUT_GET, "id");
$f->setId_forum($id_forum);

if($forumDAO->excluir($f)){
    print "<script>alert('Fórum excluido!');location='admin.php?link=83&pag=".$_SESSION['pag']."'</script>";
}