<div class="row" style="margin-top: 80px">
    <div class="col">
        <h2 class="text-secondary text-center">Inserir Informação</h2>
    </div>
</div>
<form method="post" action="?link=76">
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputTitulo">Título</label>
            <input name="titulo" type="text" class="form-control" id="inputTitulo" placeholder="Digite o título:">
        </div>
        <div class="form-group col-md-6">
            <label for="inputInfo">Informação</label>
            <textarea name="informacao" class="form-control" id="inputInfo" placeholder="Digite a Informação:"></textarea>
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputCurso">Curso</label>
            <select name="id_curso" class="form-control" id="inputCurso">
                <option selected></option>
                <?php
                include_once './model/CursoDAO.class.php';
                $cursoDAO = new cursoDAO();
                foreach ($cursoDAO->listarTudo() as $c) {
                    print "<option value='$c->id_curso'>$c->curso</option>";            
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