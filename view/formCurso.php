<div class="row" style="margin-top: 80px">
    <div class="col">
        <h2 class="text-secondary text-center">Inserir Curso</h2>
    </div>
</div>
<form method="post" action="?link=21" enctype="multipart/form-data">
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputCurso">Curso</label>
            <input name="curso" type="text" class="form-control" id="inputCurso" placeholder="Digite o curso:">
        </div>
        <div class="form-group col-md-6">
            <label for="inputDuracao">Duração</label>
            <input name="duracao" type="text" class="form-control" id="inputDuracao" placeholder="Digite a duração:">
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputDescricao">Descrição</label>
            <textarea name="descricao" class="form-control" id="inputDescricao" placeholder="Uma breve descrição do curso" rows="5"></textarea>
        </div>
        <div class="form-group col-md-6">
            <label for="inputPreco">Preço (R$)</label>
            <input name="preco" type="text" class="form-control" id="inputPreco" placeholder="Digite o preço:">
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputEmbed">Link do Vídeo</label>
            <input name="embed" type="text" class="form-control" id="inputEmbed" placeholder="Cole aqui o link do vídeo" rows="5">
        </div>
        <div class="form-group col-md-6">
            <label for="inputImagem">Selecione uma Imagem</label>
            <input name="imagem" type="file" class="form-control" id="inputImagem">
        </div>
    </div>
    <div class="form-row">
        <div class="form-group">
            <input type="submit" class="btn btn-secondary" value="Inserir">
        </div>
    </div>
</form>