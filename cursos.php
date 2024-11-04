<?php 
#cabeçalho
include_once 'cabecalho.php';

include_once 'model/Curso.class.php';
include_once 'model/CursoDAO.class.php';
include_once 'model/Conteudo.class.php';
include_once 'model/ConteudoDAO.class.php';

$cursoDAO = new cursoDAO();
foreach ($cursoDAO->listarTudo() as $curso) {
    if ($curso->ativo_curso == "S") {
        ?>
        <div class="row" style="margin-top: 120px">
            <div class="col">
                <h3 class="h3 text-dark"><a href="curso.php?id=<?= $curso->id_curso ?>"><?=$curso->curso?></a></h3>
                <h5 class="h5 text-secondary">Duração: <?= $curso->duracao ?> h/a</h5>
            </div>
        </div>
        <hr/>
        <div class="row">
            <div class="col-md-6">
                <img class="img-fluid img-thumbnail" src="img/curso/<?= $curso->imagem ?>" alt="Img Curso" width="600px">
            </div>
            <div class="col-md-6">                     
                <!-- <h4 class="h4 text-info">Tenha Acesso a Todos os Cursos da Nossa Plataforma</h4>
                <h5 class="h5 text-secondary">Investimento R$ 299,90 Mensal</h5> -->
                <h4 class="h4 text-secondary">Tenha Acesso Somente a Esse Curso</h4>
                <h5 class="h5 text-dark">R$ <?=$curso->preco?></h5>
                <p class="lead text-dark"><?=$curso->descricao?></p>
                <?php
                    $conteudoDAO = new ConteudoDAO();
                    foreach ($conteudoDAO->listarTudo() as $co) {
                        if ($co->id_curso == $curso->id_curso) {
                ?>
                <a href="conteudo/<?=$co->caminho?>" target="_blank"><button class="btn btn-dark">Conteúdo Programático</button></a>               
                <?php }} ?>
            </div>
        </div> 
        <hr/>
        
    <?php }} ?> 

<!-- RODAPÉ -->
<?php include_once 'rodape.php';