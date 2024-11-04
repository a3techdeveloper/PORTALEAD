<div class="row" style="margin-top: 80px">
    <div class="col">
        <h2 class="text-secondary text-center">Editar Imagem Curso</h2>
    </div>
</div>
<?php 
    include_once 'config/loader.php';
    $curso = new Curso();
    $cursoDAO = new CursoDAO();    
    $id     = filter_input(INPUT_GET, "id");
    $imagem = filter_input(INPUT_GET, "imagem");
    $curso->setId_curso($id);
    $res  = $cursoDAO->listar($curso);
?>
<form method="post" action="?link=27" enctype="multipart/form-data">
    <input type="hidden" name="id" value="<?=$id?>">
    <input type="hidden" name="imagem" value="<?=$imagem?>">
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputImg">Nova Imagem</label>
            <input name="imagem_nova" type="file" class="form-control" id="inputImg">
        </div>
    </div>
    <div class="form-row">
        <div class="form-group">
            <input type="submit" class="btn btn-secondary" value="Editar Imagem" onclick="return confirm('Confirmar edição?')">
        </div>
    </div>
</form>
