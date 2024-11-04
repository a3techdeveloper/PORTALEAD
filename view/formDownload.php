<div class="row" style="margin-top: 80px">
    <div class="col">
        <h2 class="text-secondary text-center">Inserir Arquivo de Download da Aula</h2>
    </div>
</div>
<form method="post" action="?link=48" enctype="multipart/form-data">
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputTitulo">Título Download</label>
            <input name="titulo_download" type="text" class="form-control" id="inputTitulo" placeholder="Digite o nome:">
        </div>
        <div class="form-group col-md-6">
            <label for="inputArquivo">Arquivo</label>
            <input name="caminho" type="file" class="form-control" id="inputArquivo">
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputIdAula">Selecione a Aula</label>
            <select name="id_aula" class="form-control">
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