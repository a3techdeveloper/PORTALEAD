<div class="row" style="margin-top: 80px">
    <div class="col">
        <h2 class="text-secondary text-center">Editar Conteúdo</h2>
    </div>
</div>
<?php 
    include_once 'config/loader.php';
    $conteudo = new Conteudo();
    $conteudoDAO = new ConteudoDAO();
    $id = filter_input(INPUT_GET, "id");
    $conteudo->setId_conteudo($id);
    $res = $conteudoDAO->listar($conteudo);
?>
<form method="post" action="?link=91" enctype="multipart/form-data">
    <input type="hidden" name="id" value="<?=$id?>">
    <input type="hidden" name="conteudo_antigo" value="<?=$res->caminho?>">
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputTitulo">Título Material</label>
            <input name="titulo" type="text" class="form-control" id="inputTitulo" placeholder="Digite o título:" value="<?=$res->titulo?>">
        </div>
        <div class="form-group col-md-6">
            <label for="inputConteudo">Selecione o Conteúdo</label>
            <input name="conteudo" type="file" class="form-control" id="inputConteudo">
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputCurso">Selecione o Curso</label>
            <select class="form-control" name="id_curso">
                <?php 
                    $cursoDAO = new CursoDAO();
                    foreach ($cursoDAO->listarTudo() as $curso){
                        if($curso->id_curso == $res->id_curso){
                            print "<option selected value='$curso->id_curso'>$curso->curso</option>";
                        }else{
                            print "<option value='$curso->id_curso'>$curso->curso</option>";
                        }
                    }
                ?>
            </select>
        </div>
    </div>
    <div class="form-row">
        <div class="form-group">
            <input type="submit" class="btn btn-secondary" value="Editar" onclick="return confirm('Confirmar edição?')">
        </div>
    </div>
</form>
