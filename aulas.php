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
            <h5 class="h5 text-muted"><a href="informacoes.php?id_curso=<?= $id_curso ?>">Informações</a></h5>
            <h5 class="h5 text-muted"><a href="forum.php?id_curso=<?= $id_curso ?>&id_aluno=<?= $_SESSION['id'] ?>">Fórum de Dúvidas</a></h5>                      
            <hr/>
            <h5 class="h5 text-dark">MATERIAL DO CURSO</h5>
            <?php
            include_once 'model/MaterialDAO.class.php';
            $materialDAO = new MaterialDAO();
            foreach ($materialDAO->listarTudo() as $ma) {
                if ($ma->id_curso == $id_curso) {
                    ?>
                    <h5 class="h5 text-muted"><a href="material/<?= $ma->caminho ?>" target="_blank">Material do Curso</a></h5>                   
                <?php }
            }
            ?>
        </div>
        
        <!-- Seção Mural de Avisos -->
        <div class="col-md-6" style="margin-top: 10px">
            <h5 class="h5 text-dark">MURAL DE AVISOS</h5>
            <?php
            include_once 'model/MuralDAO.class.php';
            $muralDAO = new MuralDAO();
            foreach ($muralDAO->listarMuralAulaCurso() as $mural) {
                ?>
                <div  style="border:1px solid #CCC; border-radius: 5px; padding: 14px; box-shadow:1px 1px 2px #000; margin-bottom: 5px; ">
                    <h5 class="h5 text-secondary"><?= $mural->curso . ' (Aula' . $mural->numero_aula . ' - ' . $mural->titulo_aula . ')' ?></h5>
                    <h5 class="h5 text-dark"><?= $mural->titulo ?></h5>
                    <h6 class="h6 text-secondary">Publicado no dia <?= date_format(date_create($mural->data_mural), 'd/m/Y') . ' às ' . $mural->hora_mural ?></h6>
                    <hr/>
                    <p class="text-secondary lead"><?= $mural->mensagem ?></p>
                    <hr/>
                    <?php
                    include_once 'model/RespostaDAO.class.php';
                    $respostaDAO = new RespostaDAO();
                    foreach ($respostaDAO->listarRespostaMuralAluno() as $resp) {
                        /* condição  && $resp->ativo_aluno == "S" foi removida */
                        if ($mural->id_mural == $resp->id_mural) {
                            print "<span class='text-secondary' style='font-size:11pt'><span class='text-dark'><b>$resp->aluno</b></span> no dia <strong>" . date_format(date_create($resp->data_resposta), "d/m/Y") . "</strong> às " . date_format(date_create($resp->hora_resposta), "H:i") . "</span><br/>";
                            print "<span class='text-dark'>$resp->resposta</span>";
                            if ($resp->id_aluno == $id_aluno) {
                                print "&nbsp;&nbsp;<a href='?acao=FormEdit&id_curso=" . $id_curso . "&id_resp=" . $resp->id_resposta . "'>Editar</a>&nbsp;&nbsp;|";
                                print "&nbsp;&nbsp;<a href='controller/excluirRespostaMural?id_curso=" . $id_curso . "&id_resp=" . $resp->id_resposta . "' onclick='return confirm(\"Deseja excluir a resposta?\")'>Excluir</a>";
                            }
                            print "<hr/>";
                        }
                    }
                    ?>
                    <a href="?acao=FormResp&id_curso=<?= $id_curso ?>&id_mural=<?= $mural->id_mural ?>"><button class="btn btn-secondary">Responder</button></a>
                </div>
                <?php } ?>
        </div>
    </div>
    <?php 
        if(filter_input(INPUT_GET, "acao") == "FormResp"){
            $id_mural = filter_input(INPUT_GET, "id_mural");
            $id_curso = filter_input(INPUT_GET, "id_curso");
    ?>
    <div class="row">
        <div class="offset-md-6 col-md-6">
            <form method="post" action="controller/inserirRespostaMural.php">
                <input type="hidden" name="id_aluno" value="<?= $_SESSION["id"] ?>">
                <input type="hidden" name="id_curso" value="<?= $id_curso ?>">
                <input type="hidden" name="id_mural" value="<?= $id_mural ?>">
                <div class="form-row">
                    <div class="form-group col-md-12">
                        <label for="inputResposta">Resposta</label>
                        <textarea class="form-control" name="resposta" id="inputResposta" required></textarea>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group">
                        <input type="submit" class="btn btn-dark" value="Responder Mural">
                    </div>
                </div>
            </form>
        </div>
    </div>
    <?php }elseif (filter_input(INPUT_GET, "acao") == "FormEdit") { 
     $id_resposta = filter_input(INPUT_GET, "id_resp");
     $id_curso = filter_input(INPUT_GET, "id_curso");
     $respDAO = new RespostaDAO();
     $result = $respDAO->listar($id_resposta);       
    ?>
    <div class="row">
        <div class="offset-md-6 col-md-6">
            <form method="post" action="controller/editarRespostaMural.php">
                <input type="hidden" name="id_resposta" value="<?=$result->id_resposta?>">
                <input type="hidden" name="id_curso" value="<?=$id_curso?>">
                <div class="form-row">
                    <div class="form-group col-md-12">
                        <label for="inputResposta">Resposta</label>
                        <textarea class="form-control" name="resposta" id="inputResposta" required><?=$result->resposta?></textarea>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group">
                        <input type="submit" class="btn btn-dark" value="Editar Resposta">
                    </div>
                </div>
            </form>
        </div>
    </div>    
    <?php } ?>
</div>

<!-- RODAPÉ -->
<?php
include_once 'rodape.php';
