<?php

include_once './config/loader.php';

$tutorCursoDAO = new TutorCursoDAO();

if($tutorCursoDAO->excluirVinculos()){
    print "<script>alert('Vínculos excluidos!');location='admin.php?link=37&pag=".$_SESSION['pag']."'</script>";
}