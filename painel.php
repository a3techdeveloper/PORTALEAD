<?php
include_once 'cabecalho.php';

if (isset($_SESSION["logado"]) != true) {
    print "<script>alert('Sem permissão de acesso, efetue o login');location='login.php'</script>";
}
?>
<!-- CABEÇALHO -->
<div class="container-fluid">
    <div class="row" style="margin-top: 100px;">    
        <div class="col-md-6" style="border:1px solid #CCC; border-radius: 5px; padding: 8px; box-shadow:1px 1px 2px #000 ">
            <h5 class="h5 text-secondary">CURSOS</h5>
            <?php
            include_once 'model/MatriculaDAO.class.php';
            $matriculaDAO = new MatriculaDAO();
            foreach ($matriculaDAO->listarCursosAluno() as $cursoAluno) {
                if ($_SESSION["id"] == $cursoAluno->id_aluno) {
                    print "<span class='text-secondary lead'>$cursoAluno->curso </span><br/>";
                }
            }
            include_once 'model/Aluno.class.php';
            include_once 'model/AlunoDAO.class.php';
            $al = new Aluno();
            $alunoDAO = new AlunoDAO();
            $al->setId_aluno($_SESSION["id"]);
            $res = $alunoDAO->listar($al);
            ?>
            <hr/>
            <h5 class="h5 text-secondary">CONFIGURAÇÕES DA CONTA</h5>
            <span style="font-size: 14pt"><a href="formEditFotoAlunoPage.php?id=<?= $_SESSION["id"] ?>&foto=<?= $res->foto ?>">Editar Imagem</a></span> <br/>
            <span style="font-size: 14pt"><a href="editarAluno.php?id=<?= $_SESSION["id"] ?>">Editar Informações</a></span> <br/>
            <span style="font-size: 14pt"><a href="editarSenhaAluno.php?id=<?= $_SESSION["id"] ?>">Editar Senha</a></span> <br/>
            <hr/>
            <?php
            print "BEM VINDO(A), <span class='text-primary' style='font-size:14pt'>" . $_SESSION["aluno"] . "</span><br/><br/>";
            ?>
            <img class='img-responsive img-thumbnail' src='img/aluno/<?= $res->foto ?>' alt='Foto Aluno(a)' width='110px'>
            <hr/>
        </div>
        <div class="col-md-6" style="margin-top: 10px">
            <h5 class="h5 text-dark">MEUS CURSOS</h5>
            <?php
            foreach ($matriculaDAO->listarCursosAluno() as $cursoAluno) {
                if ($_SESSION["id"] == $cursoAluno->id_aluno) {
                    ?>
                    <div  style="border:1px solid #CCC; border-radius: 5px; padding: 14px; box-shadow:1px 1px 2px #000; margin-bottom: 5px; ">
                        <h4 class="h4 text-secondary"><?= $cursoAluno->curso ?> (<?= date_format(date_create($cursoAluno->data_matricula), 'd/m/Y') ?>)</h4>
                        <h5 class="h5 text-dark">Duração: <?= $cursoAluno->duracao ?> h/a</h5>
                        <p class="text-secondary lead"><?= $cursoAluno->descricao ?></p>
                        <a href="aulas.php?id_curso=<?= $cursoAluno->id_curso ?>"><button class="btn btn-dark">Acessar</button></a>
                        <a href="controller/excluirMatricula.php?id_matricula=<?= $cursoAluno->id_matricula ?>" onclick="return confirm('Deseja cancelar a matricula?')"><button class="btn btn-secondary">Cancelar</button></a>
                    </div>
            <?php }} ?>
        </div>
    </div>
</div>

<!-- RODAPÉ -->
<?php
include_once 'rodape.php';
