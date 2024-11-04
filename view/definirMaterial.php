<div class="row" style="margin-top: 80px">
    <div class="col">
        <h2 class="text-secondary text-center">Definir Material Curso</h2>
    </div>
</div>
<form method="post" action="?link=30" enctype="multipart/form-data">
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputTitulo">Título Material</label>
            <input name="titulo" type="text" class="form-control" id="inputTitulo" placeholder="Digite o título:">
        </div>
        <div class="form-group col-md-6">
            <label for="inputMaterial">Selecione o Material</label>
            <input name="material" type="file" class="form-control" id="inputMaterial">
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputCurso">Curso</label>
            <select name="id_curso" class="form-control" id="inputCurso">
                <option value="" selected disabled></option>
                <?php 
                include_once 'config/loader.php';
                $cursoDAO = new CursoDAO();
                foreach($cursoDAO->listarTudo() as $res){
                    print "<option value='$res->id_curso'>$res->curso</option>";
                }
                ?>
            </select>
        </div>
    </div>
    <div class="form-row">
        <div class="form-group">
            <input type="submit" class="btn btn-secondary" value="Inserir">
        </div>
    </div>
</form>