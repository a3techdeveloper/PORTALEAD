<div class="row" style="margin-top: 80px">
    <div class="col">
        <h2 class="text-secondary text-center">Definir Tutor do Curso</h2>
    </div>
</div>
<form method="post" action="?link=36">
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputTutor">Tutor</label>
            <select name="id_tutor" class="form-control" id="inputTutor" required>
                <option selected></option>
            <?php 
                include_once './config/loader.php';
                $tutorDAO = new TutorDAO();
                foreach ($tutorDAO->listarTudo() as $t){
                    print "<option value='$t->id_tutor'>$t->nome_tutor $t->sobrenome_tutor</option>";
                }
            ?>
            </select>
        </div>
        <div class="form-group col-md-6">
            <label for="inputCurso">Curso</label>
            <select name="id_curso" class="form-control" id="inputCurso" required>
                <option selected></option>
                <?php 
                $cursoDAO = new CursoDAO();
                foreach ($cursoDAO->listarTudo() as $c){
                    print "<option value='$c->id_curso'>$c->curso</option>";
                }
            ?>
            </select>
        </div>
    </div>
    <div class="form-row">
        <div class="form-group">
            <input type="submit" class="btn btn-secondary" value="Definir Tutor/Curso">
        </div>
    </div>
</form>