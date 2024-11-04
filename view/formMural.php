<div class="row" style="margin-top: 80px">
    <div class="col">
        <h2 class="text-secondary text-center">Inserir Mural</h2>
    </div>
</div>
<form method="post" action="?link=69">
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputTitulo">Título</label>
            <input name="titulo" type="text" class="form-control" id="inputTitulo" placeholder="Digite o título:">
        </div>
        <div class="form-group col-md-6">
            <label for="inputMsg">Mensagem</label>
            <textarea name="mensagem" class="form-control" id="inputMsg" placeholder="Digite a Mensagem:"></textarea>
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputAula">Aula</label>
            <select name="id_aula" class="form-control" id="inputAula">
                <option selected></option>
                <?php
                include_once './config/loader.php';
                $cursoDAO = new CursoDAO();
                $aulaDAO  = new AulaDAO();
                foreach ($cursoDAO->listarTudo() as $c) {
                    foreach ($aulaDAO->listarTudo() as $a) {
                        if ($c->id_curso == $a->id_curso) {
                            print "<option value='$a->id_aula'>$c->curso - $a->titulo_aula</option>";
                        }
                    }
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