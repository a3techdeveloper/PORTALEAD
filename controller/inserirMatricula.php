<?php

include_once '../model/Matricula.class.php';
include_once '../model/MatriculaDAO.class.php';

$ma = new Matricula();
$matriculaDAO = new MatriculaDAO();

$id_curso = filter_input(INPUT_GET, "id_curso");
$id_aluno = filter_input(INPUT_GET, "id_aluno");
$ativo_aluno = filter_input(INPUT_GET, "ativo_aluno");

$ma->setId_curso($id_curso);
$ma->setId_aluno($id_aluno);

if (!$matriculaDAO->CursoMatriculado($ma)) {
    if ($ativo_aluno == "S") {
        print "<script>alert('Você tem acesso a todos os cursos da plataforma, obrigado pela preferência')</script>";
        if ($matriculaDAO->inserir($ma)) {
            print "<script>alert('Matrícula Realizada com Sucesso');location='../painel.php'</script>";
        }
    } else {
        print "<script>alert('Para confirmar sua Matrícula, Efetue o Pagamento');location='../pagamento.php'</script>";
    }
} else {
    print "<script>alert('Sua Matrícula neste curso já foi realizada');location='../painel.php'</script>";
}