<?php
include_once 'cabecalho.php';

include_once 'model/Matricula.class.php';
include_once 'model/MatriculaDAO.class.php';

if (isset($_SESSION["logado"]) != true) {
    print "<script>alert('Sem permissão de acesso, efetue o login');location='login.php'</script>";
}

$ma = new Matricula();
$matriculaDAO = new MatriculaDAO();

$id_curso = filter_input(INPUT_GET, "id_curso");
$id_aluno = $_SESSION["id"];
$ma->setId_curso($id_curso);
$ma->setId_aluno($id_aluno);
if(!$matriculaDAO->CursoMatriculado($ma)){
    print "<script>alert('Matricule-se e Acesse um Curso Para Exibir Essa Área');location='painel.php'</script>";
}
?>
<!-- CABEÇALHO -->

<div class="container-fluid">
    <div class="row"  style="margin-top: 100px;">    
        <div class="col-md-6" style="border:1px solid #CCC; border-radius: 5px; padding: 8px; box-shadow:1px 1px 2px #000 ">
            <?php
            print "BEM VINDO(A), <span class='text-primary' style='font-size:14pt'>" . $_SESSION["aluno"] . "</span><br/>";
            ?>
            <hr/>
            <h5 class="h5 text-dark">CURSO</h5>
            <?php
            include_once 'model/Curso.class.php';
            include_once 'model/CursoDAO.class.php';
            $c = new Curso();
            $cursoDAO = new cursoDAO();
            $c->setId_curso($id_curso);
            $res = $cursoDAO->listar($c);
            ?>
            <span class='text-secondary' style="font-size: 14pt"><?= $res->curso ?></span><br/>
            <hr/>
            <?php
            include_once 'model/TutorCursoDAO.class.php';
            $tutorCurso = new TutorCursoDAO();
            foreach ($tutorCurso->listarTutorCurso() as $tc) {
                if ($tc->id_curso == $id_curso) {
                    print "<span style='font-size:13pt'>Tutor(a) do Curso: <strong>$tc->nome_tutor $tc->sobrenome_tutor</strong></span><br/>";
                    print "<span style='font-size:13pt'>Email Tutor(a): <strong>$tc->email_tutor</strong></span><br/>";
                    print "<span style='font-size:13pt'>Contato Tutor(a): <strong>$tc->telefone_tutor</strong></span><br/>";
                    print "<img class='img-responsive img-thumbnail' src='img/tutor/$tc->foto' alt='Imagem Tutor' width='110px'> <br/>";
                }
            }
            ?>
            <hr/>
            <h5 class="h5 text-muted"><a href="aula.php?id_curso=<?= $id_curso ?>">Aulas e Materiais</a></h5>
            <h5 class="h5 text-muted"><a href="informacoes.php?id_curso=<?=$id_curso?>">Informações</a></h5>
            <h5 class="h5 text-muted"><a href="forum.php?id_curso=<?=$id_curso?>&id_aluno=<?=$_SESSION['id']?>">Fórum de Dúvidas</a></h5>                      
            <hr/>
            <h5 class="h5 text-dark">MATERIAL DO CURSO</h5>
            <?php
            include_once 'model/MaterialDAO.class.php';
            $materialDAO = new MaterialDAO();
            foreach ($materialDAO->listarTudo() as $ma) {
                if ($ma->id_curso == $id_curso) {
                    ?>
                    <h5 class="h5 text-muted"><a href="material/<?= $ma->caminho ?>" target="_blank">Material do Curso</a></h5>                   
                    <?php }}  ?>
        </div>
        <div class="col-md-6" style="margin-top: 10px">
            <h5 class="h5 text-dark">AULAS</h5>
            <?php
            include_once 'model/AulaDAO.class.php';
            $aulaDAO = new aulaDAO();
            foreach ($aulaDAO->listarTudo() as $aula) {
                if ($aula->id_curso == $id_curso && $aula->ativo_aula == "S") {
                    ?>
                    <div  style="border:1px solid #CCC; border-radius: 5px; padding: 14px; box-shadow:1px 1px 2px #000; margin-bottom: 5px; ">
                        <h3 class="h3 text-dark">Aula <?= $aula->numero_aula ?></h3>
                        <h4 class="h4 text-secondary"><?= $aula->titulo_aula ?></h4>
                        <h5 class="h5 text-dark">Duração: <?= $aula->duracao_aula ?></h5>
                        <p class="text-secondary lead"><?= $aula->descricao ?></p>
                        <a href="acessarAula.php?id_aula=<?= $aula->id_aula ?>&id_curso=<?= $id_curso ?>"><button class="btn btn-secondary">Acessar aula</button></a>
                    </div>
                    <?php }} ?>
        </div>
    </div>
</div>

<!-- RODAPÉ -->
<?php
include_once 'rodape.php';
