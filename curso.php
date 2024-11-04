<?php include_once 'cabecalho.php'; ?>
<!-- CABEÇALHO -->

<?php
//include_once 'config/loader.php';
include_once 'model/Aluno.class.php';
include_once 'model/AlunoDAO.class.php';
include_once 'model/Curso.class.php';
include_once 'model/CursoDAO.class.php';
include_once 'model/Matricula.class.php';
include_once 'model/MatriculaDAO.class.php';

$curso = new Curso();
$cursoDAO = new cursoDAO();
$al = new Aluno();
$alunoDAO = new AlunoDAO();
$ma = new Matricula();
$matriculaDAO = new MatriculaDAO();

$id_curso = filter_input(INPUT_GET, "id");
$curso->setId_curso($id_curso);
$res = $cursoDAO->listar($curso);

$id_aluno = @$_SESSION["id"];
$al->setId_aluno($id_aluno);
$res2 = $alunoDAO->listar($al);
?>
<div class="row" style="margin-top: 110px">
    <div class="jumbotron col">
        <h2 class="h2 text-dark"><?=$res->curso?></h2>
        <h5 class="h5 text-secondary"><?=$res->descricao?></h5>
        <?php
        if (!isset($_SESSION["logado"])) {
            ?>
            <hr/>
            <a href="inscrever.php"><button class="btn btn-secondary btn-lg">Inscrever-se</button></a>
            <?php
        } else {
            ?>
            <a href="controller/inserirMatricula.php?id_curso=<?=$id_curso?>&id_aluno=<?=$id_aluno?>&ativo_aluno=<?=$res2->ativo_aluno?>"><button class="btn btn-secondary btn-lg">Matricular-se</button></a>
        <?php } ?>
    </div>
</div>
<hr/>
<div class="row">
    <div class="col-md-6">                     
        <h5 class="h5 text-dark">Proposta do Curso</h5>
        <div class="embed-responsive">
            <?php $embed = $res->embed ?>
            <div class="embed-responsive embed-responsive-16by9">
                <iframe class="embed-responsive-item" src="<?= $embed ?>" allowfullscreen></iframe>
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <img class="img-fluid" src="img/curso/<?= $res->imagem ?>" alt="Aulas e Materiais">
        <hr/>
        <h5 class="h5 text-muted">Dúvidas</h5>
        <a href="contato.php"><button class="btn btn-secondary">Fale Conosco</button></a>
    </div>
</div>

<!-- RODAPÉ -->
<?php include_once 'rodape.php';