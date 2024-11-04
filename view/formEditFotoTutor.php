<div class="row" style="margin-top: 80px">
    <div class="col">
        <h2 class="text-info text-center">Editar Foto Tutor</h2>
    </div>
</div>
<?php 
    include_once 'config/loader.php';
    $tutorDAO = new TutorDAO();
    $id   = filter_input(INPUT_GET, "id");
    $foto = filter_input(INPUT_GET, "foto");
    $res  = $tutorDAO->listar($id);
?>
<form method="post" action="?link=16" enctype="multipart/form-data">
    <input type="hidden" name="id" value="<?=$id?>">
    <input type="hidden" name="foto" value="<?=$foto?>">
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputFoto">Nova Foto</label>
            <input name="foto_nova" type="file" class="form-control" id="inputFoto">
        </div>
    </div>
    <div class="form-row">
        <div class="form-group">
            <input type="submit" class="btn btn-warning" value="Editar Foto" onclick="return confirm('Confirmar edição?')">
        </div>
    </div>
</form>
