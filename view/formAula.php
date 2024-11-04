<div class="row" style="margin-top: 80px">
    <div class="col">
        <h2 class="text-secondary text-center">Inserir Aula</h2>
    </div>
</div>
<form method="post" action="?link=40">
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputNumeroAula">Nº Aula</label>
            <input name="numero" type="number" class="form-control" id="inputNumeroAula" placeholder="Digite o número da aula:">
        </div>
        <div class="form-group col-md-6">
            <label for="inputTituloAula">Título da Aula</label>
            <input name="titulo" type="text" class="form-control" id="inputTituloAula" placeholder="Digite o título da aula:">
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputDuracaoAula">Duração da Aula (h/a)</label>
            <input name="duracao" type="text" class="form-control" id="inputDuracaoAula" placeholder="Digite a duração da aula:">
        </div>
        <div class="form-group col-md-6">
            <label for="inputEmbedY">Link do Youtube</label>
            <input name="embedY" type="text" class="form-control" id="inputEmbedY" placeholder="Digite o link do youtube:">
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputDescricao">Descrição</label>
            <textarea name="descricao" class="form-control" id="inputDescricao" placeholder="Uma breve descrição da aula" rows="5"></textarea>
        </div>
        <div class="form-group col-md-6">
            <label for="inputCurso">Curso</label>
            <select name="id_curso" class="form-control" required>
                <option selected></option>
                <?php
                include_once './config/loader.php';
                $cursoDAO = new CursoDAO();
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