<div class="row" style="margin-top: 80px">
    <div class="col">
        <h2 class="text-secondary text-center">Editar Curso</h2>
    </div>
</div>
<?php 
    include_once 'config/loader.php';
    $curso = new Curso();
    $cursoDAO = new CursoDAO();    
    $id = filter_input(INPUT_GET, "id");
    $curso->setId_curso($id);
    $res = $cursoDAO->listar($curso);
?>
<form method="post" action="?link=24">
    <input type="hidden" name="id" value="<?=$id?>">
    <div class="row">
        <div class="offset-md-4 col-md-4">
            <a href="?link=26&imagem=<?=$res->imagem?>&id=<?=$res->id_curso?>" title="Editar Imagem">
                <img class="img-fluid img-thumbnail mx-auto d-block" src="img/curso/<?=$res->imagem?>" alt="Imagem do Curso" width="160"></a>
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputCurso">Curso</label>
            <input name="curso" type="text" class="form-control" id="inputCurso" placeholder="Digite o curso:" value="<?=$res->curso?>">
        </div>
        <div class="form-group col-md-6">
            <label for="inputDuracao">Duração</label>
            <input name="duracao" type="text" class="form-control" id="inputDuracao" placeholder="Digite a duração:" value="<?=$res->duracao?>">
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputDescricao">Descrição</label>
            <textarea name="descricao" class="form-control" id="inputDescricao" placeholder="Digite uma breve descrição:"><?=$res->descricao?></textarea>
        </div>
        <div class="form-group col-md-6">
            <label for="inputPreco">Preço (R$)</label>
            <input name="preco" type="text" class="form-control" id="inputPreco" placeholder="Digite o preço:" value="<?= $res->preco ?>">
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputEmbed">Link do Vídeo</label>
            <input name="embed" type="text" class="form-control" id="inputEmbed" placeholder="Digite o link do vídeo:" value="<?=$res->embed?>">
        </div>
        <div class="form-group col-md-6">
            <label for="inputStatus">Status Ativo?</label>
            <select name="status" class="form-control" id="inputStatus">
                <?php
                if ($res->ativo_curso == "S") {
                    print "<option selected value='S'>Sim</option>";
                    print "<option value='N'>Não</option>";
                } else {
                    print "<option value='S'>Sim</option>";
                    print "<option selected value='N'>Não</option>";
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
